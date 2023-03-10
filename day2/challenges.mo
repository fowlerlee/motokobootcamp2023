import Array "mo:base/Array";
import Iter "mo:base/Iter";
import Text "mo:base/Text";
import Char "mo:base/Char";
import Debug "mo:base/Debug";
import Buffer "mo:base/Buffer";
import Nat "mo:base/Nat";
import Int "mo:base/Int";


actor {
  public func average_array(array : [Int]) : async Int {
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
    
    public func number_of_words(t : Text) : async Nat {
      var n : Nat = 1;
      let txt : Text = "hello world";
      for (charz in t.chars()){
        if (Text.equal(Char.toText(charz), " ")){
          n := n + 1;
        }
      };
      return n;
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
    
    public query func find_duplicates(a : [Nat]) : async [Nat] {
    var buffer = Buffer.Buffer<Nat>(1);
    for(i in Iter.range(0, a.size()-1 )) {
        for(j in Iter.range(i+1, a.size()-1)){
          if(a[i] == a[j] and not Buffer.contains(buffer, a[i], Nat.equal)){
              buffer.add(a[j]);
          };
        };
    };
    return Buffer.toArray(buffer);
    };
    
    public func convert_to_binary(n : Nat) : async ?Text {
      return Text.decodeUtf8(Text.encodeUtf8(Nat.toText(n)));
    }
  
 }





