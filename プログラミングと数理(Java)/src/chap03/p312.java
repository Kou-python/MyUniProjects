package chap03;

public class p312 {

	public static void main(String[] args) {
		int sum = 0, i = 1;
		while (sum < 1000) {
			sum += i * i;
			i++;
		}
		System.out.println("合計が" + sum + "になったので、" + (i - 1) + "の2乗まで足した時");
	}

}
