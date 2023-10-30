//
//  PictureOfTheDayRequest.swift
//  APOD
//
//  Created by Chris Pflepsen on 10/30/23.
//

import Foundation
import RestySwift

struct PictureOfTheDayRequest: APIRequest {
    typealias Response = PictureOfTheDay
    var path: String { "/planetary/apod" }
}
