package co.sam.shoeshi.admin.web;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PagingVO {
	//입력받는 데이터
	private int curPage=1;           // 현재 페이지 번호
	private int rowSizePerPage=10;   // 한 페이지당 레코드 수      기본10
	private int pageSize=10;         // 페이지 리스트에서 보여줄 페이지 갯수  이거는 보통 10 or 5 안 변함 
	private int totalRowCount ;      // 총 레코드 건수
	
	
	//입력받는 데이터를 통해 계산되는 값
	private int firstRow ;           // 시작 레크드 번호   
	private int lastRow;             // 마지막 레크드 번호 
	private int totalPageCount;      // 총 페이지 건수
	private int firstPage; 	         // 페이지 리스트에서 시작  페이지 번호 
	private int lastPage;            // 페이지 리스트에서 마지막 페이지 번호 
	
	//page계산
	public void pageSetting() {
	
	}
	
	//getter/setter 

}
