package app;

/**
 *
 * @author Rawan ElSayed
 */
public class employee_class1 extends Person_class {
     
   private String Adress;
     private float bouns;
     private  String E_mail;
     private int phone_number;
     private float woking_hours;
     private String department_name;
     private float Salary;
     private float Deduction;
     
    public employee_class1()
    {  
    }
    public employee_class1(String Adress, float bouns, String E_mail,
    int phone_number, float woking_hours, 
    String department_name, float Salary, float Deduction, 
     String Name, int id, String gender, String date) {
        super(Name, id, gender, date);
        this.Adress = Adress;
        this.bouns = bouns;
        this.E_mail = E_mail;
        this.phone_number = phone_number;
        this.woking_hours = woking_hours;
        this.department_name = department_name;
        this.Salary = Salary;
        this.Deduction = Deduction;
    }
    public String getAdress() {
        return Adress;
    }
    public float getBouns() {
        return bouns;
    }
    public String getE_mail() {
        return E_mail;
    }

    public int getPhone_number() {
        return phone_number;
    }

    public float getWoking_hours() {
        return woking_hours;
    }

    public String getDepartment_name() {
        return department_name;
    }

    public float getSalary() {
      return Salary+bouns-Deduction;
   }

    public float getDeduction() {
        return Deduction;
    }
    
  
        public float Salarybouns(float s,float b) {
        Salary=s; 
      
        bouns=b;
        return Salary=Salary+bouns;

    }
    
        public float SalaryDeduction(float s ,float d ) {
        Salary=s;
         Deduction=d;
        return Salary=Salary-Deduction;

    }
        
        
        
        
        
        
        

    public void setAdress(String Adress) {
        this.Adress = Adress;
    }

    public void setBouns(float bouns) {
        this.bouns = bouns;
    }

    public void setE_mail(String E_mail) {
        this.E_mail = E_mail;
    }

    public void setPhone_number(int phone_number) {
        this.phone_number = phone_number;
    }

    public void setWoking_hours(float woking_hours) {
        this.woking_hours = woking_hours;
    }

    public void setDepartment_name(String department_name) {
        this.department_name = department_name;
    }

    public void setSalary(float Salary) {
        this.Salary = Salary;
    }

    public void setDeduction(float Deduction) {
        this.Deduction = Deduction;
    }

    @Override
    public String toString() {
        return "Employee{" + "Adress=" + Adress + ", bouns=" + bouns + ", E_mail=" + E_mail + ", phone_number=" + phone_number + ", woking_hours=" + woking_hours + ", department_name=" + department_name + ", Salary=" + Salary + ", Deduction=" + Deduction + '}';
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