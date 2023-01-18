import Array "mo:base/Array";
import Iter "mo:base/Iter";
import Text "mo:base/Text";
import Char "mo:base/Char";
import Debug "mo:base/Debug";

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
    
     type Pattern = Text.Pattern;
  
  public func count_character(t : Text, c : Char) : async Nat {
      var n : Nat = 0;
      let p : Pattern = #char(c);
      for(letter in t.chars()) {
        if(Text.contains(Char.toText(letter), p)){
          n := n+1;
        }
      };
      return n;
    };
  
 }





