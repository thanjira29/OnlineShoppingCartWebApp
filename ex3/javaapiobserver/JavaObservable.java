/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package observerjavaapi;

import java.util.Observer;

/**
 *
 * @author thanjira
 */
public class ObserverJavaAPI {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        WarehouseStock observable = new WarehouseStock();
        Observer obj1 = new Store1Stock();
        Observer obj2 = new Store2Stock();
        obj.addObserver(obj1);
        obj.addObserver(obj2);
        obj.setData(100);
        obj.setData(120);
    }
}
