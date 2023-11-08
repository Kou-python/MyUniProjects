package chap05;

import tg.TurtleFrame;

public class P52 {

	public static void main(String[] args) {
		TurtleFrame f = new TurtleFrame();
		MyTurtle m = new MyTurtle();

		f.add(m);
		m.houses(10, 10, 10);
		m.fd(50);
		m.pPolygon(10, 10, 10);
		m.fd(50);
		m.flower(10, 10, 10);
	}

}
