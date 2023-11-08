package chap06;

public class P611 {

	public static void main(String[] args) {
		int data[] = { 0, 1, 2, 3, 100, 5, 106, 7, 108, 9 };
		show(data);
		System.out.println("合計：" + sum(data));
		System.out.println("平均：" + average(data));
		System.out.println("最大値：" + max(data));
		System.out.println("最大値を与える一番小さいインデックス：" + maxIndex(data));
		System.out.println("100 以上の個数：" + numGreater(data, 100));
	}

	static void show(int[] a) {
		for (int i : a)
			System.out.print(i + ",");
		System.out.println();
	}

	static int sum(int[] a) {
		int sum = 0;
		for (int i : a)
			sum += i;
		return sum;
	}

	static int average(int[] a) {
		return sum(a) / a.length;
	}

	static int max(int[] a) {
		int max = a[0];
		for (int i : a)
			if (max < i)
				max = i;
		return max;
	}

	static int maxIndex(int[] a) {
		int maxIndex = 0;
		for (int i = 0; i < a.length; i++) {
			if (a[maxIndex] < a[i])
				maxIndex = i;
		}
		return maxIndex;
	}

	static int numGreater(int[] a, int n) { // n以上の数の個数
		int cnt = 0;
		for (int i = 0; i < a.length; i++) {
			if (a[i] >= n)
				cnt++;
		}
		return cnt;
	}

}
