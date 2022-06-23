package app;


    public class Sadmin_class extends Person_class
{

    public Sadmin_class()
    {
        System.out.println("Hello Admin");
    }

    @Override
    public String getName() {
         return Name;
    }

    @Override
    public int getId() {
        return id;
    }

    @Override
    public String getGender() {
        return gender;
    }

    @Override
    public String getDate() {
         return date;
    }

    @Override
    public void setName(String Name) {
         this.Name=Name;
    }

    @Override
    public void setId(int id) {
         this.id=id;
    }

    @Override
    public void setGender(String gender) {
        this.gender=gender;
    }

    @Override
    public void setDate(String date) {
      this.date=date;
    }

}
