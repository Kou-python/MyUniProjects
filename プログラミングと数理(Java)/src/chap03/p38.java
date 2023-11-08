package chap03;

import tg.Turtle;
import tg.TurtleFrame;

public class p38 {

	public static void main(String[] args) {
		TurtleFrame f = new TurtleFrame();
		Turtle m = new Turtle();
		f.add(m);

		int n = 5;// n角形

		for (int r = 2;; r++) {
			for (int j = 0; j < r; j++) {
				for (int i = 0; i < n; i++) {
					m.fd(50);
					m.rt(360 / n);
				}
				m.lt(360 / r);
			}
			f.clear();
		}
	}

}
