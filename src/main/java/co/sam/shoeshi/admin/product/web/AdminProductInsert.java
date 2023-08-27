package co.sam.shoeshi.admin.product.web;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

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

@WebServlet("/adminproductinsert.do")
public class AdminProductInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AdminProductInsert() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		
		ProductService pdao = new ProductServiceImpl();
		ProductimgService pidao = new ProductimgServiceImpl();
		ProductVO pvo = new ProductVO();
		ProductimgVO pivo = new ProductimgVO();
		
		String saveDir = getServletContext().getRealPath("/attech/product/");
		int sizeLimit = 100 * 1024 * 1024;
		
		MultipartRequest multi = new MultipartRequest(request, saveDir, sizeLimit, "utf-8", new DefaultFileRenamePolicy());
		String productName = multi.getParameter("productInsertName");
		
		String originalFile1 = multi.getOriginalFileName("productInsertfile1");
		String originalFile2 = multi.getOriginalFileName("productInsertfile2");
		String originalFile3 = multi.getOriginalFileName("productInsertfile3");
		if (originalFile1 != null) {
			pivo.setProductimgName1(productName+originalFile1);
			pivo.setProductimgPath("/attech/product/");
			
			File oldFile1 = new File(saveDir + originalFile1);
			File newFIle1 = new File(saveDir + productName + originalFile1);
			oldFile1.renameTo(newFIle1);
		}
		if (originalFile2 != null) {
			pivo.setProductimgName2(productName+originalFile2);
			pivo.setProductimgPath("/attech/product/");
			
			File oldFile2 = new File(saveDir + originalFile2);
			File newFIle2 = new File(saveDir + productName + originalFile2);
			oldFile2.renameTo(newFIle2);
		}
		if (originalFile3 != null) {
			pivo.setProductimgName3(productName+originalFile3);
			pivo.setProductimgPath("/attech/product/");
			
			File oldFile3 = new File(saveDir + originalFile3);
			File newFIle3 = new File(saveDir + productName + originalFile3);
			oldFile3.renameTo(newFIle3);
		}
		
		pvo.setProductMaker(multi.getParameter("productInsertMaker"));
		pvo.setProductName(multi.getParameter("productInsertName"));
		pvo.setProductPrice(Integer.valueOf(multi.getParameter("productInsertPrice")));
		
		int n = pdao.productInsert(pvo);
		int m = 0;
		if(n==1) {
			m = pidao.productimgInsert(pivo);
		}
		
		if(m==1) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('등록 완료!'); location.href='http://localhost/example/adminproductmanage.do'</script>");
			writer.close();
		}else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('등록 실패!'); location.href='http://localhost/example/adminproductmanage.do'</script>");
			writer.close();
		}
		
		}catch(Exception e) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('잘못된 요청'); location.href='http://localhost/example/adminproductmanage.do'</script>");
			writer.close();	
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
