import java.util.ArrayList;

import java.util.Scanner;

public class paiza_01 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		ArrayList<Integer> list = new ArrayList<>();
		String inputRC = sc.nextLine();
		String[] input = inputRC.split(" ");

		for (String string : input) {
			list.add(Integer.parseInt(string));
		}
		ArrayList<String> list2 = new ArrayList<>();
		String result = "";
		loop:
		for (int i = 0; i < list.get(0); i++) {
			String[] row = sc.nextLine().split("");
			if (i+1 == list.get(2)) {
				for (int j = 0; j < list.get(1); j++) {
					list2.add(row[j]);
					if (j+1 == list.get(3)) {
						result = list2.get(j);
						break loop;
					}

				}

			} else {
				row = null;
			}
		}
		if (result.equals(".")) {
			System.out.println("No");
		} else if(result.equals("#")) {
			System.out.println("Yes");
		}

	}
}

