package chap03;

public class p318 {
	public static void main(String[] args) {
		int x;
		for (x = 0; x < 100; x++) {
			if (x % 2 == 0)
				continue;
			if (x * x - 145 * x + 3616 == 0)
				break; // この break文が実行されると
		} // 4〜6 行目の for 文が終了する
		if (x < 100)
			System.out.println(x);
		else
			System.out.println("Not exist");
	}
}
