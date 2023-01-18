import Array "mo:base/Array";
import Iter "mo:base/Iter";
import Text "mo:base/Text";

actor {
  func average_array(array : [Int]) : Int {
    var num : Int = 0;
      for (x in array.vals()){
        num := num + x;
      };
      return num / 2 ;
  };
  
    public func factorial(arg : Nat) : async Nat {
      var x : Nat = 1;
      let i = Iter.range(x, arg);
      for(num in i) {
        x := x * num;
      };
      return x;    
    };
  
 }
