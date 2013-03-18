package Chapter.Six.validator2;

import java.util.Date;

public class PaymentBean {
  private double amount;
  private CreditCard card = new CreditCard("");
  private Date date = new Date();

  public void setAmount(double newValue) {
    amount = newValue;
  }

  public double getAmount() {
    return amount;
  }

  public void setCard(CreditCard newValue) {
    card = newValue;
  }

  public CreditCard getCard() {
    return card;
  }

  public void setDate(Date newValue) {
    date = newValue;
  }

  public Date getDate() {
    return date;
  }
}
