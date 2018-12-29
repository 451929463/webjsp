package comm;

import java.util.UUID;

public class CommUtils {
	public static String getUUID(){
		UUID uuid = UUID.randomUUID();
		String string = uuid.toString();
		System.out.println(string);
		return string.replace("-", "");
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println(getUUID());
	}

}
