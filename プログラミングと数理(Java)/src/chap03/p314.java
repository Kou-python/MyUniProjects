package chap03;

import tg.Point;
import tg.Turtle;
import tg.TurtleFrame;

public class p314 {
	public static void main(String[] args) {
		TurtleFrame f = new TurtleFrame();
		Point p = f.getMousePosition();
		Turtle m = new Turtle(p.x, p.y, 0);

		f.add(m);
		int i = 1;
		while ((m.getX() > 0 && m.getX() < 400) && (m.getY() > 0 && m.getY() < 400)) {
			m.fd(i * 10);
			m.rt(72);
			i++;
		}
	}
}
