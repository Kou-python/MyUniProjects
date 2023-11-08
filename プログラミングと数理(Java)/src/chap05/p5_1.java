package chap05;

import tg.TurtleFrame;

public class p5_1 {

	public static void main(String[] args) {
		TurtleFrame f = new TurtleFrame();
		MyTurtle m = new MyTurtle();

		f.add(m);
		m.houses(3, 5, 10);// (個、辺、)
	}

}
