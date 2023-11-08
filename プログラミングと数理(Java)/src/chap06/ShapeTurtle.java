package chap06;

import tg.Turtle;
import tg.TurtleFrame;

public class ShapeTurtle extends Turtle {
	public static void main(String[] args) {
		ShapeTurtle f = new ShapeTurtle();
		TurtleFrame m = new TurtleFrame();
		m.add(f);
		f.drawShape(100, 90, 100, 45, Math.sqrt(2) * 100, 135, 200);
	}

	void drawShape(double... a) {
		for (int i = 0; i < a.length; i++) {
			if (i % 2 == 0)
				fd(a[i]);
			else
				rt(a[i]);
		}
	}
}
