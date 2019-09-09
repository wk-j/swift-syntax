import Foundation

let url = URL(string: "https://edoc.ku.ac.th")
var request = URLRequest(url: url!)

URLSession.shared.dataTask(with: request) { data, response, error in
    guard let data = data else { return }
    guard let response = response else { return }
    let str = String(data: data, encoding: .utf8)
    print(str!)
    
    
}.resume()
