abstract class Brand{
    protected  Pen pen;
    public Brand(Pen pen){
        super();
        this.pen=pen;
    }
    public abstract void action(String msg);
}
abstract class Pen{
  public abstract void write(String msg);
}
class DeLiPen extends Brand{
    public DeLiPen(Pen pen){
        super(pen);
    }

    @Override
    public void action(String msg) {
        System.out.println("用得力笔写");
        this.pen.write(msg);
    }
}
class KOWELLPen extends Brand{
    public KOWELLPen(Pen pen) {
        super(pen);
    }

    @Override
    public void action(String msg) {
        System.out.println("用kowell笔写:");
        this.pen.write(msg);
    }
}
class MGPen extends Brand{
    public MGPen(Pen pen) {
        super(pen);
    }

    @Override
    public void action(String msg) {
        System.out.println("用晨光笔写:");
        this.pen.write(msg);
    }
}
class AIPen extends Pen{
    public AIPen() {
    }

    @Override
    public void write(String msg) {
        System.out.println("用智能笔写:"+msg);
    }
    public void can(){
        System.out.println("用智能笔扫描！");
    }
}
class InkPen extends Pen{
    public InkPen() {
    }

    @Override
    public void write(String msg) {
        System.out.println("用水笔写:"+msg);
    }

}
public class Client {
     public static void main(String[] args) {
        MGPen mg=new MGPen(new AIPen());
        mg.action("伟大祖国");
        DeLiPen deli=new DeLiPen(new InkPen());
        deli.action("幸福是奋斗出来的!");

     }
}
