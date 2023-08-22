package co.sam.shoeshi.deal.service;

import java.time.LocalDate;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class DealVO {
	private int dealNo;
	private LocalDate dealDate;
	private String dealState;
	private int dealPrice;
	private String dealBuyer;
	private String dealSeller;
	private int productId;
	private int productSize;
}
