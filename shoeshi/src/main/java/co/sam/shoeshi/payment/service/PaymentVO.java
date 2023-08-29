package co.sam.shoeshi.payment.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PaymentVO {
String clientId;
long bankAccount;
String bankName;
long cardNum;
String cardCo;
}
