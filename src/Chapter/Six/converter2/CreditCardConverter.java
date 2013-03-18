package Chapter.Six.converter2;

import javax.faces.application.FacesMessage;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.Converter;
import javax.faces.convert.ConverterException;

// Converter allows users to enter credit card numbers with or without spaces.
public class CreditCardConverter implements Converter {
  public Object getAsObject(FacesContext context, UIComponent component, String strValue) throws ConverterException {
    StringBuilder builder = new StringBuilder(strValue);
    boolean foundInvalidCharacter = false;
    char invalidCharacter = '\0';
    int i = 0;
    
    while (i < builder.length() && !foundInvalidCharacter) {
      char ch = builder.charAt(i);
      if (Character.isDigit(ch)) {
        i++;
      }
      else if (Character.isWhitespace(ch)) {
        builder.deleteCharAt(i);
      }
      else {
        foundInvalidCharacter = true;
        invalidCharacter = ch;
      }
    }

    if (foundInvalidCharacter) {
      String bundleName = "Chapter.Six.converter2.messages";
      String resourceId = "badCreditCardCharacter";
      Object[] params = new Object[] {
        new Character(invalidCharacter)
      };
      FacesMessage message = Messages.getMessage(bundleName, resourceId, params);

      message.setSeverity(FacesMessage.SEVERITY_ERROR);
      throw new ConverterException(message);
    }

    return new CreditCard(builder.toString());
  }

  public String getAsString(FacesContext context, UIComponent component, Object obj) throws ConverterException {
    String str = obj.toString();
    int[] boundaries = null;
    int length = str.length();

    if (length == 13) {
      // length 13: xxxx xxx xxx xxx
      boundaries = new int[] { 4, 7, 10 };
    }
    else if (length == 14) {
      // length 14: xxxxx xxxx xxxxx
      boundaries = new int[] { 5, 9 };
    }
    else if (length == 15) {
      // length 15: xxxx xxxxxx xxxxx
      boundaries = new int[] { 4, 10 };
    }
    else if (length == 16) {
      // length 16: xxxx xxxx xxxx xxxx
      boundaries = new int[] { 4, 8, 12 };
    }
    else if (length == 22) {
      // length 22: xxxxxx xxxxxxxx xxxxxxxx
      boundaries = new int[] { 6, 14 };
    }
    else {
      return str;
    }

    StringBuilder result = new StringBuilder();
    int end, start = 0;
    for (int i = 0; i < boundaries.length; i++) {
      end = boundaries[i];
      result.append(str.substring(start, end));
      result.append(" ");
      start = end;
    }

    result.append(str.substring(start));
    return result.toString();
  }
}
