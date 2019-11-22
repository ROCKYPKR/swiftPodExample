import Alamofire
public class ReplaceMe{
    public static func requestData(){// 1 - create url
        let URL:String = "https://httpbin.org/get"
        // 2 - create request
        Alamofire.request(URL, method: .get, parameters: nil)
                    .validate()
                    .responseJSON { response in
        // 3 - HTTP response handle
                    guard response.result.isSuccess else {
                    print("Error while fetching remote rooms: \(String(describing: response.result.error))")
                    return

                 print(response)
        }


        }

    }
}
