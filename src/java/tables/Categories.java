package tables;
// Generated Mar 19, 2014 1:33:30 AM by Hibernate Tools 3.2.1.GA


import java.util.HashSet;
import java.util.Set;

/**
 * Categories generated by hbm2java
 */
public class Categories  implements java.io.Serializable {


     private Integer idCategories;
     private String name;
     private String logo;
     private Set productses = new HashSet(0);

    public Categories() {
    }

	
    public Categories(String name, String logo) {
        this.name = name;
        this.logo = logo;
    }
    public Categories(String name, String logo, Set productses) {
       this.name = name;
       this.logo = logo;
       this.productses = productses;
    }
   
    public Integer getIdCategories() {
        return this.idCategories;
    }
    
    public void setIdCategories(Integer idCategories) {
        this.idCategories = idCategories;
    }
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    public String getLogo() {
        return this.logo;
    }
    
    public void setLogo(String logo) {
        this.logo = logo;
    }
    public Set getProductses() {
        return this.productses;
    }
    
    public void setProductses(Set productses) {
        this.productses = productses;
    }




}


