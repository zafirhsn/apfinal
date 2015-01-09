import javax.swing.*;
import java.awt.*;
import java.awt.Font.*;
import java.awt.event.*;

public class Gui extends JFrame {
    private JButton refresh,go;
    private Container pane;
    private JLabel title;
    private JPanel canvas;
    private JTextArea text;
    int[] styles = { Font.PLAIN, Font.ITALIC, Font.BOLD, Font.ITALIC + Font.BOLD };
    String[] stylenames = { "Plain", "Italic", "Bold", "Bold & Italic" };
    // Key base code 
  private class Key implements KeyListener {
public void keyPressed(KeyEvent e) {}
public void keyReleased(KeyEvent e) {}
public void keyTyped(KeyEvent e) {
    /*if (box.isSelected()){
String s = text.getText();
s = s.toUpperCase();
text.setText(s);
}
    */
}
}
 public Gui(){
	setTitle("Other Browser");
	//When available change to
	//setTitle(Browser.getTitle())
	setSize(800,800);
	setLocation(100,100);
	setDefaultCloseOperation(EXIT_ON_CLOSE);
	pane = getContentPane();
				//pane.setLayout(new GridLayout(3,3));
	pane.setLayout(new FlowLayout());
	JTextField myOutput = new JTextField(45);
	myOutput.setText("URL");
       	pane.add(myOutput);
	//	go = new JButton("Go!");
	//	go.addActionListener(this);
	//	pane.add(go);
	//text!
	/*	JTextArea navigation =new JTextArea();
		       	text.setColumns(20);
	       		text.setRows(1);
       			text.setBorder(BorderFactory.createLineBorder(Color.red,2));
			text.addKeyListener(new Key());
			pane.add(text);
	*/
JTextArea textArea = new JTextArea(
    "This is an editable JTextArea. " +
    "A text area is a \"plain\" text component, " +
    "which means that although it can display text " +
    "in any font, all of the text is in the same font."
);
textArea.setFont(new Font("Serif", Font.ITALIC, 16));
textArea.setLineWrap(true);
textArea.setWrapStyleWord(true);


			}
    public static void main(String[] args) {
	Gui x = new Gui();
	x.setVisible(true);
    }
}
