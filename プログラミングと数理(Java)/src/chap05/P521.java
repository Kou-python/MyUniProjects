package chap05;

import tg.TurtleFrame;

public class P521 {

	public static void main(String[] args) {
		TurtleFrame f = new TurtleFrame();
		MyTurtle m = new MyTurtle();
		f.add(m);
		m.house(10, 100, 100);
		m.houses(4, 20, 30, 200, 100);
	}

}
