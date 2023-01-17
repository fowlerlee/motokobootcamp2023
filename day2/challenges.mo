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
  
 }
