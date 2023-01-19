import Int "mo:base/Int";
import Iter "mo:base/Iter";
import Buffer "mo:base/Buffer";
import Nat "mo:base/Nat";
import Array "mo:base/Array";


actor {
let buffer = Buffer.Buffer<Int>(3);
    public func second_maximum(arr : [Int]) : async Int {
        for (i in arr.vals()) {
            buffer.add(i);
        };
        buffer.sort(Int.compare);
        let i : Nat = buffer.size() - 2;
        buffer.get(i);
    };

    public func remove_even(array : [Nat]) : async [Nat] {
        let odds = Array.filter<Nat>(array, func x = x % 2 != 0);
        odds;
    };

    // public func drop<T>(xs : [T], n : Nat) : async [T] {
    //     let buf = Buffer.Buffer<T>(3);

    //     return Buffer.toArray();
    // };


};
