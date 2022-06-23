package app;

/**
 *
 * @author Kyrilllos emad
 */
public class Category_Class_final {
     private String Category_Name ;
     private int Category_ID ;
     private int Store_Num ;
     private int Inventory_Num ;


    public Category_Class_final(String Category_Name, int Category_ID, int Store_Num, int Inventory_Num) {
        this.Category_Name = Category_Name;
        this.Category_ID = Category_ID;
        this.Store_Num = Store_Num;
        this.Inventory_Num = Inventory_Num;
    }

    public int getStore_Num() {
        return Store_Num;
    }

    public void setStore_Num(int Store_Num) {
        this.Store_Num = Store_Num;
    }

    public int getInventory_Num() {
        return Inventory_Num;
    }

    public void setInventory_Num(int Inventory_Num) {
        this.Inventory_Num = Inventory_Num;
    }

     
     
    public void setCategory_Name(String Category_Name) {
        this.Category_Name = Category_Name;
    }

    public void setCategory_ID(int Category_ID) {
        this.Category_ID = Category_ID;
    }

    public String getCategory_Name() {
        return Category_Name;
    }

    public int getCategory_ID() {
        return Category_ID;
    }

    @Override
    public String toString() {
        return "Category{" + "Category_Name=" + Category_Name + ", Category_ID=" + Category_ID + ", Store_Num=" + Store_Num + ", Inventory_Num=" + Inventory_Num + '}';
    }
    
}