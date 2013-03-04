package Chapter.Two;

import java.io.Serializable;
import java.util.ArrayList;

public class ProblemBean implements Serializable {

  public ProblemBean() {
  }

  public ProblemBean(int[] values, int solution) {
    sequence = new ArrayList<Integer>();
    for (int i = 0; i < values.length; i++) {
      sequence.add(values[i]);
    }
    this.solution = solution;
  }

  private ArrayList<Integer> sequence;

  public ArrayList<Integer> getSequence() {
    return sequence;
  }

  public void setSequence(ArrayList<Integer> newValue) {
    sequence = newValue;
  }

  private int solution;

  public int getSolution() {
    return solution;
  }

  public void setSolution(int newValue) {
    solution = newValue;
  }
}
