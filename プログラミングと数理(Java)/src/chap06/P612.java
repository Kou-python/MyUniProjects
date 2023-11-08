package chap06;

public class P612 {

	public static void main(String[] args) {
		int a[][] = { { 2, 5, 7, 3 }, { 7, 4, 4, 1 }, { 1, 8, 2, 1 } };
		System.out.println(java.util.Arrays.deepToString(a));
		rows(a);
		columns(a);
		all(a);
	}

	static void rows(int[][] a) {
		System.out.print("行の和: ");
		for (int i = 0; i < a.length; i++) {
			int sum = 0;
			for (int j = 0; j < a[i].length; j++) {
				sum += a[i][j];
			}
			System.out.print(sum + " ");
		}
		System.out.println("");
	}

	static void columns(int[][] a) {
		System.out.print("列の和: ");
		for (int j = 0; j < a[0].length; j++) { // 全ての行が同じ個数でないと動かない
			int sum = 0;
			for (int i = 0; i < a.length; i++) {
				sum += a[i][j];
			}
			System.out.print(sum + " ");
		}
		System.out.println("");
	}

	static void all(int[][] a) {
		int sum = 0;
		for (int i = 0; i < a.length; i++) {
			for (int j = 0; j < a[i].length; j++) {
				sum += a[i][j];
			}
		}
		System.out.println("全体の和: " + sum);
	}
}
