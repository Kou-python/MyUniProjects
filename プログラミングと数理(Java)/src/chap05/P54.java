package chap05;

import tg.TurtleFrame;

public class P54 {

	public static void main(String[] args) {
		int n = 4;
		TurtleFrame f = new TurtleFrame(800, 400);
		PolygonTurtle p = new PolygonTurtle();

		p.withTurtleAll = false;
		f.add(p);
		p.rt(90);
		for (int i = 1; i < n; i++) {
			p.draw();
			p.fd(100);
		}
	}

}
