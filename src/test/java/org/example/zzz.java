package org.example;

public class zzz {
    //写一个猜数字游戏 1-100

    public static void main(String[] args) {
        int num = (int)(Math.random()*100+1);
        System.out.println(num);
        int count = 0;
        while(true){
            count++;
            java.util.Scanner s = new java.util.Scanner(System.in);
            System.out.println("请输入一个1-100的数字");
            int guessNum = s.nextInt();
            if(guessNum>num){
                System.out.println("你猜的数字"+guessNum+"大了");
            }else if(guessNum<num){
                System.out.println("你猜的数字"+guessNum+"小了");
            }else{
                System.out.println("恭喜你猜中了");
                break;
            }
        }
        System.out.println("你总共猜了"+count+"次");
    }




}
