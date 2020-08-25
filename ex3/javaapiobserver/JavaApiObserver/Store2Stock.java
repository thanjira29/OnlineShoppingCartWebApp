/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package observerjavaapi;

import java.util.Observable;
import java.util.Observer;

/**
 *
 * @author thanjira
 */
public class Store2Stock implements Observer {

    @Override
    public void update(Observable o, Object arg) {
        System.out.println(
                "(Store2) WarehouseStock is updated to "
                + ((WarehouseStock) o).getData());
    }
}
