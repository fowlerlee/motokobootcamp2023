module {

    public type Book = { title : Text; pages : Nat };

    public let value = 0;

    public func create_book(title : Text, pages : Nat) : async Book {
        let book : Book = {
            title;
            pages;
        };
        return book;
    };
};
