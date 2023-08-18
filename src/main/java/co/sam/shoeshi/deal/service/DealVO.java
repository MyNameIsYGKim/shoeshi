package co.sam.shoeshi.deal.service;

import java.time.LocalDate;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class DealVO {
	int dealNo;
	LocalDate dealDate;
	String dealState;
	int dealPrice;
	String dealBuyer;
	String dealSeller;
}
