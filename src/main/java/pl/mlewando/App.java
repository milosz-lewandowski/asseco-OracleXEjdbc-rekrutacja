package pl.mlewando;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
    String cmd = args[args.length-1];
    switch (cmd){
        case "example1":
            new Example1();
            break;
        case "example2":
            new Example2();
            break;
        default:
            System.out.println("command not found");
    }
    }
}
