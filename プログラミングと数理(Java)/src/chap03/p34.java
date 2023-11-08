package chap03;

import tg.Turtle;
import tg.TurtleFrame;

public class p34 {

	public static void main(String[] args) {
		TurtleFrame f = new TurtleFrame();
		Turtle m = new Turtle();
		f.add(m);

		for (int i = 2; i <= 180; i += 2) {
			m.fd(50);
			m.rt(i * 2);
		}
	}

}
