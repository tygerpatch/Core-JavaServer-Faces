package Chapter.Three;

public class QuizBean {
  private int current, score, attempt;
  private String response;

  // Here, we hardwire the problems.
  // In a real application, they would come from a database
  private Problem[] problems = {
    // public Problem(String question, String answer)
    new Problem("What trademarked slogan describes Java development? Write once, ...", "run anywhere"),
    new Problem("What are the first 4 bytes of every class file (in hexadecimal)?", "CAFEBABE"),
    new Problem("What does this statement print? System.out.println(1+\"2\");", "12"),
    new Problem("Which Java keyword is used to define a subclass?", "extends"),
    new Problem("What was the original name of the Java programming language?", "Oak"),
    new Problem("Which java.util class describes a point in time?", "Date")
  };

  public QuizBean() {
    init();
  }

  public String getQuestion() {
    return problems[current].getQuestion();
  }

  public String getAnswerToLastQuestion() {
    return problems[current - 1].getAnswer();
  }

  public int getScore() {
    return score;
  }

  public String getResponse() {
    return response;
  }

  public void setResponse(String response) {
    this.response = response;
  }

  public String answerAction() {
    String fromOutcome;
    attempt++;

    if(response.trim().equalsIgnoreCase(problems[current].getAnswer())) {
      score++;
      getNextProblem();
      fromOutcome = (current == problems.length) ? "done" : "success";
    }
    else if(1 == attempt) {
      fromOutcome = "again";
    }
    else {
      getNextProblem();
      fromOutcome = (current == problems.length) ? "done" : "failure";
    }

    return fromOutcome;
  }

  public String startOverAction() {
    init();
    return "startOver";
  }

  private void init() {
    current = score = attempt = 0;
    response = "";
  }

  private void getNextProblem() {
    current++;
    attempt = 0;
    response = "";
  }
}
