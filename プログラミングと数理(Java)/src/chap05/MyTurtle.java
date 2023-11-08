package chap05;

public class MyTurtle extends HTurtle {
	void houses(int n, double s, double w) {// w:間隔
		for (int i = 0; i < n; i++) {
			house(s);
			up();
			rt(90);
			fd(w + s);
			lt(90);
			down();
		}
	}

	public void pPolygon(int n, int m, double s) {
		for (int j = 0; j < n; j++) {
			polygon(m, s);
			fd(s);
			lt(360 / n);
		}
	}

	public void flower(int n, int r, double s) {// 角形、枚、長さ
		for (int j = 0; j < r; j++) {
			for (int i = 0; i < n; i++) {
				fd(s);
				rt(360 / n);
			}
			lt(360 / r);// ｒ枚描くために回転
		}
	}

	/** (x,y)を左下の座標にし、一辺sの長さで家を描く */
	public void house(double s, double x, double y) {
		up();
		moveTo(x, y);
		down();
		house(s);
	}

	public void houses(int n, double s, double w, double x, double y) {
		up();
		moveTo(x, y);
		down();
		houses(n, s, w);
	}
}