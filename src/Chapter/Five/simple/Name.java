package Chapter.Five.simple;

public class Name {
  private String first, last;
  public boolean edtiable;

  public Name(String first, String last) {
    this.first = first;
    this.last = last;
    this.edtiable = true;
  }

  public String getFirst() {
    return first;
  }

  public String getLast() {
    return last;
  }
}
