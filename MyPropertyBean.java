/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package footballscoreboundproperty;

import java.beans.*;
import java.io.Serializable;

/**
 *
 * @author 320S-USER
 */
public class MyPropertyBean implements Serializable {
    
    public static final String SCORERESULT_PROPERTY = "ScoreResult";
    
    private String ScoreResult;
    
    private PropertyChangeSupport propertySupport;
    
    public MyPropertyBean() {
        propertySupport = new PropertyChangeSupport(this);
    }
    
    public String getScoreResult() {
        return ScoreResult;
    }
    
    public void setScoreResult(String value) {
        String oldValue = ScoreResult;
        ScoreResult = value;
        propertySupport.firePropertyChange(SCORERESULT_PROPERTY, oldValue, ScoreResult);
    }
    
    public void addPropertyChangeListener(PropertyChangeListener listener) {
        propertySupport.addPropertyChangeListener(listener);
    }
    
    public void removePropertyChangeListener(PropertyChangeListener listener) {
        propertySupport.removePropertyChangeListener(listener);
    }
    
}
