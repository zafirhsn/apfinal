public class Driver {
    public static void main(String[] args) {
	Browser test = new Browser();

	System.out.println(test.ReadFile());
	test.search();
	System.out.println(test);
    }
}
