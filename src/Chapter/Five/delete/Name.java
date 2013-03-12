package Chapter.Five.delete;

public class Name {
  private String first;
  private String last;
  private boolean markedForDeletion = false;

  public Name(String first, String last) {
    this.first = first;
    this.last = last;
  }

  public void setFirst(String newValue) {
    first = newValue;
  }

  public String getFirst() {
    return first;
  }

  public void setLast(String newValue) {
    last = newValue;
  }

  public String getLast() {
    return last;
  }

  public boolean isMarkedForDeletion() {
    return markedForDeletion;
  }

  public void setMarkedForDeletion(boolean newValue) {
    markedForDeletion = newValue;
  }
}
