package com.opms.unti;

import java.util.Random;


/**
 * 
 * description:
 * @author changzhewei
 * @date 2017��7��29��
 */
public class RandomTest {
	/**
	 * 
	 * description:���һ�����ID
	 * @author changzhewei
	 * @date 2017��7��29��
	 */
	public static long random(){
		Random rs=new Random();
		String ss=rs.nextLong()+"";
		Long ran = Long.parseLong("146"+ss.substring(ss.length()-16, ss.length()));
		return ran;
	}
	
}
