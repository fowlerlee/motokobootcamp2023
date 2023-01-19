import B "./book";
import Buffer "mo:base/Buffer";
import List "mo:base/List";


actor {
    private var book : [B.Book] = [];
    var list = List.nil<B.Book>();
    
    public func add_book(b : B.Book) : () {
        ignore List.push(b, list);
    };

    public func get_books() : async [B.Book]{
       List.toArray(list); 
    };
};