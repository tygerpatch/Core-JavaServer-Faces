package Chapter.Five.sorting;

import javax.faces.model.DataModel;
import javax.faces.model.ArrayDataModel;

// TODO: refactor & document
public class TableData {
  private DataModel filterModel = null;

  private static final Name[] names = {
    new Name("Anna", "Keeney"),
    new Name("John", "Wilson"),
    new Name("Mariko", "Randor"),
    new Name("William", "Dupont"),
  };

  public TableData() {
    filterModel = new SortFilterModel(new ArrayDataModel(names));
  }

  public DataModel getNames() {
    return filterModel;
  }

  public String deleteNames() {
    if (!getAnyNamesMarkedForDeletion()) {
      return null;
    }

    Name[] currentNames = (Name[]) filterModel.getWrappedData();
    Name[] newNames = new Name[currentNames.length - getNumberOfNamesMarkedForDeletion()];

    for (int i = 0, j = 0; i < currentNames.length; ++i) {
      Name name = (Name) currentNames[i];
      if (!name.isMarkedForDeletion()) {
        newNames[j++] = name;
      }
    }

    filterModel.setWrappedData(newNames);
    return null;
  }

  public int getNumberOfNamesMarkedForDeletion() {
    Name[] currentNames = (Name[]) filterModel.getWrappedData();
    int cnt = 0;

    for (int i = 0; i < currentNames.length; ++i) {
      Name name = (Name) currentNames[i];
      if (name.isMarkedForDeletion()) {
        ++cnt;
      }
    }

    return cnt;
  }

  public boolean getAnyNamesMarkedForDeletion() {
    Name[] currentNames = (Name[]) filterModel.getWrappedData();

    for (int i = 0; i < currentNames.length; ++i) {
      Name name = (Name) currentNames[i];
      if (name.isMarkedForDeletion()) {
        return true;
      }
    }

    return false;
  }
}
