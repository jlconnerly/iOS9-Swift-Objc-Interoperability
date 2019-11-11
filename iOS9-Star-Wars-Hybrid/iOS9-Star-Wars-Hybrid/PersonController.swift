//
//  PersonController.swift
//  iOS9-Star-Wars-Hybrid
//
//  Created by Paul Solt on 11/11/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

import Foundation

class PersonController: NSObject {
	
	// https://swapi.co/api/people?search=luke
	private let baseURL = URL(string: "https://swapi.co/api/people")!
	
//	override init() {
//		let person = LSIPerson()
//	}
	
	@objc func searchForPeople(with searchTerm: String,
						 completion: @escaping ([LSIPerson]?, Error?) -> Void) {
		var components = URLComponents(url: self.baseURL, resolvingAgainstBaseURL: true)!
		
        let searchItem = URLQueryItem(name: "search", value: searchTerm)
        components.queryItems = [searchItem]
        let url = components.url!

		// TODO: DispatchQueue in API code vs. client code
		
        URLSession.shared.dataTask(with: url) { (data, _, error) in
            if let error = error {
                completion(nil, error)
                return
            }
			
			
			
			
        }.resume()
	
	}
}
