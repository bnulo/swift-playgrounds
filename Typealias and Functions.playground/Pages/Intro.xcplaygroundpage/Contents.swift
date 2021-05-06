
import Foundation



//: ### This is our function
func fetchUserName(userID: Int, completion: @escaping (Result<String, Error>) -> Void) {}

//MARK: -
//: we can use ID instead of Int so in this way its semantic is very clear
typealias ID = Int
func fetchUserName2(userID: ID, completion: @escaping (Result<String, Error>) -> Void) {}

//MARK: -

//: typealias works with function type also
typealias CompletionHandler = (Result<String, Error>) -> Void
func fetchUserName3(userID: ID, completion: @escaping CompletionHandler) {}

// MARK: -
//:typealias with generic
typealias CompletionHandler2<T> = (Result<T, Error>) -> Void
func fetchUserName4(userID: ID, completion: @escaping CompletionHandler2<String>) {}
