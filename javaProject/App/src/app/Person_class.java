package app;
public abstract class Person_class {
     String Name;
       int id;
       String gender;
       String date;
    public Person_class()
    {
    }
    public Person_class(String Name, int id,
            String gender, String date) {
        this.Name = Name;
        this.id = id;
        this.gender = gender;
        this.date = date;
    }
    abstract public String getName() ;
       
    
   abstract public int getId();
        
    
    abstract public String getGender() ;
    
   abstract public String getDate();
   abstract public void setName(String Name) ;
   abstract public void setId(int id) ;
    abstract public void setGender(String gender) ;
  abstract  public void setDate(String date);
}
