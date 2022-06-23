package supermarket;
public class Person 
{
      private String Name;
      private int id;
      private String gender;
      private String date;
    public Person()
    {
    }
    public Person(String Name, int id, String gender, String date) {
        this.Name = Name;
        this.id = id;
        this.gender = gender;
        this.date = date;
    }
    public String getName() {
        return Name;
    }
    public int getId() {
        return id;
    }
    public String getGender() {
        return gender;
    }
    public String getDate() {
        return date;
    }
    public void setName(String Name) {
        this.Name = Name;
    }
    public void setId(int id) {
        this.id = id;
    }
    public void setGender(String gender) {
        this.gender = gender;
    }
    public void setDate(String date) {
        this.date = date;
    }


    
}