package chap03;

public class p311_3 {

	public static void main(String[] args) {
		for (int i = 0; i < 10; i++) {
			for (int j = 0; j < i; j++) {
				System.out.print("     ");
			}
			for (int k = 10; k > i; k--) {
				System.out.print("Java ");
			}
			System.out.println();
		}
	}

}
