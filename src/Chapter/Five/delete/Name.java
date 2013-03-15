package Chapter.Five.delete;

public class Name {
  private String first, last;
  private boolean markedForDeletion = false;

  public Name(String first, String last) {
    this.first = first;
    this.last = last;
  }

  public String getFirst() {
    return first;
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
