package chap02;

import tg.Turtle;
import tg.TurtleFrame;

public class p22 {
	public static void main(String[] args) {
		TurtleFrame f;
		f = new TurtleFrame();
		Turtle m = new Turtle();
		Turtle m1 = new Turtle();
		f.add(m);
		f.add(m1);

		m.fd(100);
		m.rt(90);

		f.addMesh();
		m.fd(150);

		m1.rt(90);
		m1.fd(100);

		m.fd(300);
		m1.fd(300);
		f.clear();
	}

}
