class Step {
  var end:Int;
  var step:Int;
  var index:Int;
 
  public inline function new(start:Int, end:Int, step:Int) {
    this.index = start;
    this.end = end;
    this.step = step;
  }
 
  public inline function hasNext() return step > 0 ? end >= index : index >= end;
  public inline function next() return (index += step) - step;
}
class Main {
  static function main() {

  var LIMIT:Int = 200000;

  var  count = 0;
  var a:Int = 3;
  var i:Int = 2;
  var flag:Int = 0;
  var primes = new haxe.ds.List<Int>();
  primes.add(2);
  for (a in new Step(3, LIMIT, 2)) {
    
    flag = 0;
    for (i in primes){
      
      if(a%i == 0){
        flag = 1; 
        break;
      }
    }
      if(flag == 0){
        
        primes.add(a);
        
        count += 1;
        
      }
    }
    Sys.println(count);
    
  }
}