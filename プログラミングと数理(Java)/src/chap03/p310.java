package chap03;

import tg.Turtle;
import tg.TurtleFrame;

public class p310 {

	public static void main(String[] args) {
		TurtleFrame f = new TurtleFrame();
		Turtle m = new Turtle();
		f.add(m);

		for (int r = 3; r < 11; r++) {
			m.fd(50);
			m.rt(360 / 8);
			for (int j = 0; j < r; j++) {
				m.fd(50);
				m.lt(360 / r);
			}
		}
	}

}
