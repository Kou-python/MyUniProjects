package chap05;

import tg.Turtle;
import tg.TurtleFrame;

public class P53 {

	public static void main(String[] args) {
		TurtleFrame f = new TurtleFrame();
		MyTurtle m = new MyTurtle();
		Turtle.withTurtleAll = false;
		f.add(m);

		for (int n = 3; n < 7; n++) {
			for (int r = 2; r < 11; r++) {
				m.up();
				m.moveTo((r - 1) * 100, (n - 2) * 100);
				m.down();
				m.flower(n, r, 20);
			}
		}
	}

}
