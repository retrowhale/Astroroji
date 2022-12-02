//
//  ObjectClass.swift
//  astroroji
//
//  Created by Deniz Donmezer on 2022-10-21.
//

import Foundation


class ViewData : ObservableObject {
    
    @Published var appVersionString: String = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as! String
    
}
