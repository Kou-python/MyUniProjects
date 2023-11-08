package chap03;

import tg.Turtle;
import tg.TurtleFrame;

public class p32A {

	public static void main(String[] args) {
		TurtleFrame f = new TurtleFrame();
		Turtle m = new Turtle();
		f.add(m);

		double s = 100; // 1辺の長さ
		int n = 5; // n角形

		for (int i = 0; i < n; i++) {
			m.fd(s);
			m.rt(144);
		}
	}

}
