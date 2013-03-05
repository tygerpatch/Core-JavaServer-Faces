package Chapter.Three;

public class Problem {
  private String question;
  private String answer;

  public Problem(String question, String answer) {
    this.question = question;
    this.answer = answer;
  }

  public String getQuestion() {
    return question;
  }

  public String getAnswer() {
    return answer;
  }

  // override for more sophisticated checking
  public boolean isCorrect(String response) {
    return response.trim().equalsIgnoreCase(answer);
  }
}
