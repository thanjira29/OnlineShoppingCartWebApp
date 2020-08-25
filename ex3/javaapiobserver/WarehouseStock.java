/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package observerjavaapi;

import java.util.ArrayList;
import java.util.Observable;

/**
 *
 * @author thanjira
 */
public class HeadQuater extends Observable {

    private int Data;

    public void setData(int aData) {
        Data = aData;
        setChanged();
        notifyObservers();
    }

    public int getData() {
        return Data;
    }
}
