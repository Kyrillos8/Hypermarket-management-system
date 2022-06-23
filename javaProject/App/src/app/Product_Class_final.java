package app;

/**
 *
 * @author Rawan ElSayed
 */
public class Product_Class_final  {
    private String product_Name ;
    private String Type ;
    private int Expairy_date ;
    private float Sell_Price ;
    private float Cost_Price ;
    private int Product_Code ;
    private int Inventory_Quantity ;
    private String Cat ;
    private int Store_Block ;
    private int inventory_Block ;
    
    public void setProduct_Name(String product_Name) {
        this.product_Name = product_Name;
    }
    public void setType(String Type) {
        this.Type = Type;
    }
    public void setExpairy_date(int Expairy_date) {
        if (Expairy_date>2022)
        this.Expairy_date = Expairy_date;
    }
    public void setSell_Price(float Sell_Price){
        if (Sell_Price >0)
        this.Sell_Price = Sell_Price;
    }
    public void setCost_Price(float Cost_Price) {
        this.Cost_Price = Cost_Price;
    }
    public void setProduct_Code(int Product_Code) {
        this.Product_Code = Product_Code;
    }
    public void setInventory_Count(int Inventory_Quantity) {
        this.Inventory_Quantity = Inventory_Quantity;
    }

    public String getProduct_Name() {
        return product_Name;
    }

    public String getType() {
        return Type;
    }

    public int getExpairy_date() {
        return Expairy_date;
    }

    public float getSell_Price() {
        return Sell_Price;
    }

    public float getCost_Price() {
        return Cost_Price;
    }

    public int getProduct_Code() {
        return Product_Code;
    }

    public int getInventory_Quantity() {
        return Inventory_Quantity;
    }

    public String getCat() {
        return Cat;
    }

    public void setCat(String Cat) {
        this.Cat = Cat;
    }

    public int getStore_Block() {
        return Store_Block;
    }

    public void setStore_Block(int Store_Block) {
        this.Store_Block = Store_Block;
    }

    public int getInventory_Block() {
        return inventory_Block;
    }

    public void setInventory_Block(int inventory_Block) {
        this.inventory_Block = inventory_Block;
    }

    
    
    public Product_Class_final(String product_Name, String Type, int Expairy_date,
            float Sell_Price, float Cost_Price, int Product_Code,
            int Inventory_Quantity, String Cat) {
        this.product_Name = product_Name;
        this.Type = Type;
        this.Expairy_date = Expairy_date;
        this.Sell_Price = Sell_Price;
        this.Cost_Price = Cost_Price;
        this.Product_Code = Product_Code;
        this.Inventory_Quantity = Inventory_Quantity;
        this.Cat = Cat;
    }

    @Override
    public String toString() {
        return "Product{" + "product_Name=" + product_Name + ", Type=" + Type
          + ", Expairy_date=" + Expairy_date + ", Sell_Price=" + Sell_Price
          + ", Cost_Price=" + Cost_Price + ", Product_Code=" + Product_Code 
          + ", Inventory_Quantity=" + Inventory_Quantity + ", Cat=" + Cat + '}';
    }
}