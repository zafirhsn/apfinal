import java.util.*;
import java.io.*;

public class Browser {
    private ArrayList<String> wordlist = new ArrayList<String>();
    
    public static ArrayList<String> ReadFile() {
	Scanner sc = null;
	try {
	    sc = new Scanner(new File("Sample.html"));
	} catch (Exception e){
	    System.out.println("Can't open word file");
	    System.exit(0);
	}
	while (sc.hasNext()){
	    wordlist.add(sc.next());
	}
	return wordlist;
    }

    public void search() {
	//code
    }
}
