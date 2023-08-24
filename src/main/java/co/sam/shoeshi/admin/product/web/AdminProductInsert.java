package co.sam.shoeshi.admin.product.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.sam.shoeshi.common.ViewResolve;
import co.sam.shoeshi.product.service.ProductService;
import co.sam.shoeshi.product.service.ProductVO;
import co.sam.shoeshi.product.serviceImpl.ProductServiceImpl;
import co.sam.shoeshi.productimg.service.ProductimgService;
import co.sam.shoeshi.productimg.service.ProductimgVO;
import co.sam.shoeshi.productimg.serviceImpl.ProductimgServiceImpl;

@WebServlet("/adminproductupload.do")
public class AdminProductInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AdminProductInsert() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductService pdao = new ProductServiceImpl();
		ProductimgService pidao = new ProductimgServiceImpl();
		ProductVO pvo = new ProductVO();
		ProductimgVO pivo = new ProductimgVO();
		
		String saveDir = getServletContext().getRealPath("/attech/product/");
		int sizeLimit = 100 * 1024 * 1024;
		
		MultipartRequest multi = new MultipartRequest(request, saveDir, sizeLimit, "utf-8", new DefaultFileRenamePolicy());
		
		String originalFile1 = multi.getOriginalFileName("productInsertfile1");
		String originalFile2 = multi.getOriginalFileName("productInsertfile2");
		String originalFile3 = multi.getOriginalFileName("productInsertfile3");
		if (originalFile1 != null) {
			String fileName1 = multi.getFilesystemName("productInsertfile1");
			pivo.setProductimgName1(originalFile1);
			pivo.setProductimgPath(saveDir + fileName1);
		}
		if (originalFile2 != null) {
			String fileName2 = multi.getFilesystemName("productInsertfile2");
			pivo.setProductimgName2(originalFile2);
			pivo.setProductimgPath(saveDir + fileName2);
		}
		if (originalFile3 != null) {
			String fileName3 = multi.getFilesystemName("productInsertfile3");
			pivo.setProductimgName3(originalFile3);
			pivo.setProductimgPath(saveDir + fileName3);
		}
		
		pvo.setProductMaker(multi.getParameter("productInsertMake"));
		pvo.setProductName(multi.getParameter("productInsertName"));
		pvo.setProductPrice(Integer.valueOf(multi.getParameter("productInsertPrice")));
		
		int n = pdao.productInsert(pvo);
		int m = 0;
		if(n==1) {
			m = pidao.productimgInsert(pivo);
		}
		
		if(m==1) {
			request.setAttribute("message", "등록 완료!");
		}else {
			request.setAttribute("message", "등록 실패!");
		}
		
		String viewName = "admin/product/adminproductmessage";
		ViewResolve.forward(request, response, viewName);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
