package Chapter.Five.simple;

public class Name {
  private String first;
  private String last;
  public boolean edtiable;

  public Name(String first, String last) {
    this.first = first;
    this.last = last;
    this.edtiable = true;
  }

  public void setFirst(String first) {
    this.first = first;
  }

  public String getFirst() {
    return first;
  }

  public void setLast(String last) {
    this.last = last;
  }

  public String getLast() {
    return last;
  }

  public boolean getEditable() {
    return edtiable;
  }

  public void setEditable(boolean editable) {
    this.edtiable = editable;
  }
}
