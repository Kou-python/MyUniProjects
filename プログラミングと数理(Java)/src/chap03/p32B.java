package chap03;

import tg.Point;
import tg.Turtle;
import tg.TurtleFrame;

public class p32B {

	public static void main(String[] args) {
		TurtleFrame f;
		f = new TurtleFrame();
		double x, y;
		Point p = f.getMousePosition();
		Turtle m = new Turtle();
		f.add(m);
		x = m.getAngle();
		y = m.getY();

		for (int i = 0; i < 10; i++) {
			Point p1 = f.getMousePosition();
			m.moveTo(p1.x, p1.y);
		}

		f.remove(m);
	}

}
