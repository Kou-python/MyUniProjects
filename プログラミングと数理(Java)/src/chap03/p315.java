package chap03;

import javafx.scene.paint.Color;
import tg.Point;
import tg.Turtle;
import tg.TurtleFrame;

public class p315 {

	public static void main(String[] args) {
		TurtleFrame f = new TurtleFrame();
		Turtle m = new Turtle();

		f.add(m);

		while (m.getTScale() < 2) {
			Point p = f.getMousePosition();
			if (p.y > 200) {
				m.setTScale(m.getTScale() * 2);
			} else {
				m.setTScale(m.getTScale() / 2);
			}
		}
		m.setTColor(Color.RED);
		m.fd(200);
	}
}
