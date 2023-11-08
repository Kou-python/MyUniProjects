package chap06;

import javafx.scene.paint.Color;
import tg.Turtle;
import tg.TurtleFrame;

public class P68 {
	public static void main(String[] args) {
		TurtleFrame f = new TurtleFrame();
		Turtle m = new Turtle();
		f.add(m);

		Color c[] = { Color.RED, Color.GREEN, Color.YELLOW };
		for (int i = 0; i < 12; i++) {
			m.setColor(c[i % c.length]);
			m.lt(30);
			m.fd(50);
		}
	}
}
