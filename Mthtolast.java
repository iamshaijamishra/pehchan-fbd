import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;
import java.util.Scanner;
public class Mthtolast {

    public static void main(String[] args) {
        /* Enter your code here. Read input from STDIN. Print output to STDOUT. Your class should be named Solution. */
        LinkedList<Integer> linkedlist=new LinkedList<Integer>();
        Scanner sc=new Scanner(System.in);
        int size=sc.nextInt();
        int index=sc.nextInt();
        for(int i=1;i<=size;i++)
        {
            linkedlist.add(sc.nextInt());
        }
        if(index>size)
        {
            System.out.println("NIL");
        }
        else
        {
            for(int i=0;i<size-index+1;i++)
            {
                System.out.println(linkedlist.get(i));
            }
        }
    }
}