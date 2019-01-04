package comm;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Random;
import java.util.UUID;

import javax.imageio.ImageIO;

public class CommUtils {
	private static String content= "";
	//得到UUID
	public static String getUUID(){
		UUID uuid = UUID.randomUUID();
		String string = uuid.toString();
		System.out.println(string);
		return string.replace("-", "");
	}
	//得到图片验证码
	public static BufferedImage imgCode(){
		//得到缓冲区
		BufferedImage bi = new BufferedImage(150, 70, BufferedImage.TYPE_INT_ARGB);
		//配置绘图环境
		Graphics2D g2 = (Graphics2D) bi.getGraphics();
		
		//背景颜色
		g2.setColor(Color.RED);
		//背景颜色填充范围
		g2.fillRect(0, 0, 150, 70);
		
		//设置字体
		g2.setFont(new Font("楷体", Font.BOLD, 30));
		//设置字体颜色
		g2.setColor(Color.orange);
		UUID uuid = UUID.randomUUID();
		System.out.println(uuid);
		int num = (int)(Math.random()*(10000-1000)+1000);
		content = num+"";
		//内容定位
		g2.drawString(num+"", 20, 50);
		return bi;
	}
	
		//输出图片
		public static void OutImg(BufferedImage bi,String type_img,OutputStream os) {
			try {
				ImageIO.write(bi, type_img, os);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		public static String getContent(){
			return content;
		}
		
		public static void main(String[] args) {
			try {
				OutImg(imgCode(), "jpg",new FileOutputStream("f:p.jpg"));
			} catch (FileNotFoundException e) {
				e.printStackTrace();
			}
			System.out.println(getContent());
		}

}
