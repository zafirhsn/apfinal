import java.util.*;
import java.io.*;

public class Browser {
    private static ArrayList<String> wordlist = new ArrayList<String>();
    private static ArrayList<String> tags = new ArrayList<String>();
    private static Gui basicGui = new Gui();
    
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
		    html();
		}
		if (wordlist.get(i).equals("<title>")) {
		    title();
		}
		if (wordlist.get(i).equals("<header>")) {
		    header();
		}
		if (wordlist.get(i).equals("<body>")) {
		    body();
		}
		if (wordlist.get(i).equals("<b>")) {
		    bold();
		}
		if (wordlist.get(i).equals("<i>")) {
		    italics();
		}
		if (wordlist.get(i).equals("<u>")) {
		    underline();
		}
	    }
	    
	}
	return false;
    }

    public void html() {
	//html code goes here
    }

    public void title() {
	basicGui.setTitle(
	
}
 

