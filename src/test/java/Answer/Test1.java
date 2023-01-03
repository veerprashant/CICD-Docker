package Answer;

import org.testng.annotations.Test;

public class Test1 {
    int a=10;
    int b=20;
    int answer;

    @Test
    public void sum(){
        answer=a+b;
        System.out.println(answer);
    }

    @Test
    public void sub(){
        answer=b-a;
        System.out.println(answer);
    }


}
