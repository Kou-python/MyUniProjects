package chap03;

import tg.Turtle;
import tg.TurtleFrame;

public class p35 {

	public static void main(String[] args) {
		TurtleFrame f = new TurtleFrame();
		Turtle m = new Turtle();
		f.add(m);

		for (int i = 0; i < 270; i++) {
			m.fd(i);
			m.rt(i);
		}
	}

}
