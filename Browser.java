import java.util.*;
import java.io.*;

public class Browser {
    private static ArrayList<String> wordlist = new ArrayList<String>();
    private static ArrayList<String> tags = new ArrayList<String>();
    
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

    public static boolean search() {
	for (int i=0;i<wordlist.size();i++) {
	    if (wordlist.get(i).substring(0,1).equals("<")) {

		if (wordlist.get(i).equals("<html>")) {
		    // call html function
		}
		if (wordlist.get(i).equals("<title>")) {
		    // call title function
		}
		if (wordlist.get(i).equals("<header>")) {
		    // call header function
		}
		if (wordlist.get(i).equals("<body>")) {
		    // call body function
		}
		if (wordlist.get(i).equals("<b>")) {
		    // call bod function
		}
		if (wordlist.get(i).equals("<i>")) {
		}
		if (wordlist.get(i).equals("<u>")) {
		}
	    }
	    
	}
	return false;
    }

    public void html() {
	// gui stuff
    }
}
 

