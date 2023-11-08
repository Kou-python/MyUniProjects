package chap06;

import chap05.HTurtle;
import javafx.scene.paint.Color;
import tg.TurtleFrame;

public class P67 {
	public static void main(String[] args) {
		double size[] = { 20, 40, 20, 60 };
		int n[] = { 7, 5, 3, 4, 6 };
		Color c[] = { Color.ORANGE, Color.RED, Color.BLUE };
		TurtleFrame f = new TurtleFrame(600, 300);
		HTurtle[] hm = new HTurtle[10]; // 配列オブジェクトを生成
		for (int i = 0; i < 10; i++) {
			hm[i] = new HTurtle(i * 50 + 25, 150, 0); // HTurtle を生成，配列の各要素に代入
			f.add(hm[i]);
		}
		for (int i = 0; i < 10; i++) {
			hm[i].setColor(c[i % c.length]);
			hm[i].polygon(n[i % n.length], size[i % size.length]); // hm[i] に代入されている HTurtle へのメソッド呼び出し
		}
	}
}
