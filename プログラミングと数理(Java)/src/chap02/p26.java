package chap02;

import tg.Point;
import tg.Turtle;
import tg.TurtleFrame;

public class p26 {

	public static void main(String[] args) {
		TurtleFrame f;
		f = new TurtleFrame();
		Turtle m = new Turtle();
		f.add(m);
		Point p = f.getMousePosition();
		m.up();
		m.moveTo(p.x, p.y, 0);

		m.down();
		m.fd(100);
		m.rt(144);
		m.fd(100);
		m.rt(144);
		m.fd(100);
		m.rt(144);
		m.fd(100);
		m.rt(144);
		m.fd(100);
		m.rt(144);
	}

}
