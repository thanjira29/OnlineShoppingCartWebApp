/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package footballscoreboundproperty;

import java.util.Scanner;

/**
 *
 * @author 320S-USER
 */
public class FootballScoreBoundProperty {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        MyPropertyBean mySource = new MyPropertyBean();// TODO code application logic here
        Listener1 listener1 = new Listener1();
        Listener2 listener2 = new Listener2();
        mySource.addPropertyChangeListener(listener1);
        mySource.addPropertyChangeListener(listener2);
        while (true) {
            Scanner sc = new Scanner(System.in);
            System.out.print("Enter Score: ");
            String score = sc.nextLine();
            if (score.equals("")) {
                break;
            }
            mySource.setScoreResult(score);
        }
    }
}
    

