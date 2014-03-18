/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package utility;

import java.util.ArrayList;
import tables.Products;

/**
 *
 * @author Farida
 */
public class ShoppingCart {
    
    ArrayList<Products> productses = new ArrayList<Products>();

    public ArrayList<Products> getProductses() {
        return productses;
    }

    public void setProductses(ArrayList<Products> productses) {
        this.productses = productses;
    }
    
    
    
}
