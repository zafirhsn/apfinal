import javax.swing.*;
import java.awt.*;

public class Gui extends JFrame {
    private JButton refresh,go;
    private Container pane;
    private JLabel title;
    private JPanel canvas;
    private JTextArea text;
    public Gui(){
	setTitle("Browser");
	//When available change to
	//setTitle(Browser.getTitle())
	setSize(800,800);
	setLocation(100,100);
	setDefaultCloseOperation(EXIT_ON_CLOSE);
	//text!
	text =new JTextArea();
		       	text.setColumns(40);
	       		text.setRows(5);
       			text.setBorder(BorderFactory.createLineBorder(Color.red,2));
			pane.add(text);
    }
    public static void main(String[] args) {
	Gui x = new Gui();
	x.setVisible(true);
    }
}
