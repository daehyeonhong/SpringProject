package shop.carrental.util;

import java.util.Random;

public class Authenticode {

	public String authenticode() {
		StringBuffer temp = new StringBuffer();
		Random random = new Random();

		for (int i = 0; i < 20; i++) {
			int randomIndex = random.nextInt(3);
			switch (randomIndex) {
			case 0:
				// a-z
				temp.append((char) ((int) (random.nextInt(26)) + 97));
				break;
			case 1:
				// A-Z
				temp.append((char) ((int) (random.nextInt(26)) + 65));
				break;
			case 2:
				// 0-9
				temp.append((random.nextInt(10)));
				break;
			}
		}
		return temp.toString();
	}

}