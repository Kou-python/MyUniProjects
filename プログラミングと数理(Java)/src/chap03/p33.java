package chap03;

import tg.Turtle;
import tg.TurtleFrame;

public class p33 {

	public static void main(String[] args) {
		TurtleFrame f = new TurtleFrame();
		Turtle m = new Turtle();
		f.add(m);

		int n = 8; // n角形
		int k = 3;

		for (int i = 0; i < n; i++) {
			m.fd(100);
			m.rt(360 / n * k);
		}
	}

}
