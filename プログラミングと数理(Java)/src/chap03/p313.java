package chap03;

public class p313 {

	public static void main(String[] args) {
		System.out.println("1.");
		int x = 5;
		if (x == 2 || x == 4 || x == 6 || x == 9 || x == 11)
			System.out.println("Yes");
		else
			System.out.println("No");

		System.out.println("2.");
		int y = 2002;
		if ((y % 4 == 0 && y % 100 != 0) || y % 400 == 0)
			System.out.println("Yes");
		else
			System.out.println("No");

		System.out.println("3.");
		x = 0;
		y = 0;
		if ((x > 0 && x < 400) && (y > 0 && y < 400))
			System.out.println("Yes");
		else
			System.out.println("No");
	}

}
