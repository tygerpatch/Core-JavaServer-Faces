package Chapter.Two;

public class ProblemBean {
  private int[] sequence;
  private int solution;

  public ProblemBean() {
  }

  public ProblemBean(int[] sequence, int solution) {
    this.sequence = sequence;
    this.solution = solution;
  }

  public String getSequence() {
    StringBuilder builder = new StringBuilder();

    for(int i = 0; i < (sequence.length - 1); i++) {
      builder.append(sequence[i]);
      builder.append(", ");
    }
    builder.append(sequence[sequence.length - 1]);

    return builder.toString();
  }

  public int getSolution() {
    return solution;
  }
}
