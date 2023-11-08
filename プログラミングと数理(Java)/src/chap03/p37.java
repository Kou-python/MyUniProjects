package chap03;

import tg.Turtle;
import tg.TurtleFrame;

public class p37 {

	public static void main(String[] args) {
		TurtleFrame f = new TurtleFrame();
		Turtle m = new Turtle();
		f.add(m);

		int n, k;
		n = 8;
		k = 5;

		for (int j = 0; j < n; j++) {
			for (int i = 0; i < k; i++) {
				m.fd(50);
				m.rt(360 / k);
			}
			m.fd(50);
			m.lt(360 / n);
		}
	}

}
