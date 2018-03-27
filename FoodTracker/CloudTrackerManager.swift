//
//  CloudTrackerManager.swift
//  FoodTracker
//
//  Created by KevinT on 2018-03-26.
//  Copyright © 2018 KevinT. All rights reserved.
//

import UIKit

class CloudTrackerManager: NSObject {
  
//  func signUpFunction() {
//    print("Sign Up Pressed")
//    
//    let url: NSURL = NSURL(string: "https://cloud-tracker.herokuapp.com/signup")!
//    var request = URLRequest(url: url as URL)
//    request.setValue("application/json", forHTTPHeaderField: "Content-Type")
//    request.httpMethod = "POST"
//    
//    let jsonObject: NSMutableDictionary = NSMutableDictionary()
//    jsonObject.setValue(UserDefaults.standard.string(forKey: "username")!, forKey: "username")
//    jsonObject.setValue(UserDefaults.standard.string(forKey: "password")!, forKey: "password")
//    
//    let jsonData: NSData
//    
//    let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
//    let viewController = storyboard.instantiateViewController(withIdentifier: "SignUpViewController")
//
//    do {
//      jsonData = try JSONSerialization.data(withJSONObject: jsonObject, options: JSONSerialization.WritingOptions()) as NSData
//      let jsonString = NSString(data: jsonData as Data, encoding: String.Encoding.utf8.rawValue)! as String
//      
//      print("json string = \(jsonString)")
//      request.httpBody = jsonString.data(using: .utf8)
//    } catch _ {
//      print("JSON Failure")
//    }
//    
//    let task = URLSession.shared.dataTask(with: request) { data, response, error in
//      
//      let alert = UIAlertController(title: "Error", message: nil, preferredStyle: .alert)
//      
//      guard let data = data, error == nil else {
//        print("error=\(String(describing: error))")
//        alert.message = "error=\(String(describing: error))"
//        viewController.present(alert, animated: true, completion: nil)
//        return
//      }
//      if let httpStatus = response as? HTTPURLResponse, httpStatus.statusCode != 200 {
//        print("statusCode should be 200, but is \(httpStatus.statusCode)")
//        print("response = \(String(describing: response))")
//        alert.message = "statusCode should be 200, but is \(httpStatus.statusCode)" + "response = \(String(describing: response))"
//        viewController.present(alert, animated: true, completion: nil)
//        
//      }
//      let responseString = String(data: data, encoding: .utf8)
//      print("responseString = \(String(describing: responseString))")
//      
//    }
//    task.resume()
//    
//  }
//
//  func loginFunction() {
//    print("login Pressed")
//    
//    let url: NSURL = NSURL(string: "https://cloud-tracker.herokuapp.com/login")!
//    var request = URLRequest(url: url as URL)
//    request.setValue("application/json", forHTTPHeaderField: "Content-Type")
//    request.httpMethod = "POST"
//    
//    let jsonObject: NSMutableDictionary = NSMutableDictionary()
//    jsonObject.setValue(UserDefaults.standard.string(forKey: "username")!, forKey: "username")
//    jsonObject.setValue(UserDefaults.standard.string(forKey: "password")!, forKey: "password")
//    
//    let jsonData: NSData
//    
//    let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
//    let viewController = storyboard.instantiateViewController(withIdentifier: "SignUpViewController")
//    
//    do {
//      jsonData = try JSONSerialization.data(withJSONObject: jsonObject, options: JSONSerialization.WritingOptions()) as NSData
//      let jsonString = NSString(data: jsonData as Data, encoding: String.Encoding.utf8.rawValue)! as String
//      
//      print("json string = \(jsonString)")
//      request.httpBody = jsonString.data(using: .utf8)
//    } catch _ {
//      print("JSON Failure")
//    }
//    
//    let task = URLSession.shared.dataTask(with: request) { data, response, error in
//      
//      let alert = UIAlertController(title: "Error", message: nil, preferredStyle: .alert)
//      
//      guard let data = data, error == nil else {
//        print("error=\(String(describing: error))")
//        alert.message = "error=\(String(describing: error))"
//        viewController.present(alert, animated: true, completion: nil)
//        return
//      }
//      if let httpStatus = response as? HTTPURLResponse, httpStatus.statusCode != 200 {
//        print("statusCode is \(httpStatus.statusCode)")
//        print("response = \(String(describing: response))")
//        alert.message = "statusCode is \(httpStatus.statusCode)" + "response = \(String(describing: response))"
//        viewController.present(alert, animated: true, completion: nil)
//        
//      }
//      //      print("response = \(String(describing: response))")
//      let responseString = String(data: data, encoding: .utf8)
//      print("responseString = \(String(describing: responseString))")
//      
//      do {
//        
//        let json = try JSONSerialization.jsonObject(with: data, options: [])
//        if let object = json as? [String: Any] {
//          
//          // json is a dictionary
//          print(object)
//          guard let token = object["token"] else {
//            print("invalid token")
//            return
//          }
//          UserDefaults.standard.set(token, forKey: "token")
//          
//        } else if let object = json as? [Any] {
//          // json is an array
//          print(object)
//        } else {
//          print("JSON is invalid")
//        }
//      }
//      catch {
//        
//      }
//      
//    }
//    task.resume()
//    
//  }

  func signInLoginFunction(button: String) {
    let url: NSURL
    if button == "login" {
      print("login Pressed")
      url = NSURL(string: "https://cloud-tracker.herokuapp.com/login")!
    } else {
      print("Sign Up Pressed")
      url = NSURL(string: "https://cloud-tracker.herokuapp.com/signup")!
    }
    
    var request = URLRequest(url: url as URL)
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")
    request.httpMethod = "POST"
    
    let jsonObject: NSMutableDictionary = NSMutableDictionary()
    jsonObject.setValue(UserDefaults.standard.string(forKey: "username")!, forKey: "username")
    jsonObject.setValue(UserDefaults.standard.string(forKey: "password")!, forKey: "password")
    
    let jsonData: NSData
    
    let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
    let viewController = storyboard.instantiateViewController(withIdentifier: "SignUpViewController")
    
    do {
      jsonData = try JSONSerialization.data(withJSONObject: jsonObject, options: JSONSerialization.WritingOptions()) as NSData
      let jsonString = NSString(data: jsonData as Data, encoding: String.Encoding.utf8.rawValue)! as String
      
      print("json string = \(jsonString)")
      request.httpBody = jsonString.data(using: .utf8)
    } catch _ {
      print("JSON Failure")
    }
    
    let task = URLSession.shared.dataTask(with: request) { data, response, error in
      
      let alert = UIAlertController(title: "Error", message: nil, preferredStyle: .alert)
      
      guard let data = data, error == nil else {
        print("error=\(String(describing: error))")
        alert.message = "error=\(String(describing: error))"
        viewController.present(alert, animated: true, completion: nil)
        return
      }
      if let httpStatus = response as? HTTPURLResponse, httpStatus.statusCode != 200 {
        print("statusCode is \(httpStatus.statusCode)")
        print("response = \(String(describing: response))")
        alert.message = "statusCode is \(httpStatus.statusCode)" + "response = \(String(describing: response))"
        viewController.present(alert, animated: true, completion: nil)
        
      }
      //      print("response = \(String(describing: response))")
      let responseString = String(data: data, encoding: .utf8)
      print("responseString = \(String(describing: responseString))")
      
      do {
        
        let json = try JSONSerialization.jsonObject(with: data, options: [])
        if let object = json as? [String: Any] {
          
          // json is a dictionary
          print(object)
          guard let token = object["token"] else {
            print("invalid token")
            return
          }
          UserDefaults.standard.set(token, forKey: "token")
          
        } else if let object = json as? [Any] {
          // json is an array
          print(object)
        } else {
          print("JSON is invalid")
        }
      }
      catch {
        
      }
      
    }
    task.resume()
    
  }
  
  func saveMeal(meal: Meal, completion: (NSError?)) -> (Void) {
    
  }

}
