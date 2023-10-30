//
//  AstronomyPictureAPI.swift
//  APOD
//
//  Created by Chris Pflepsen on 10/30/23.
//

import Foundation
import RestySwift
import UIKit

struct APIConfig: Codable {
    let key: String
}

private struct SpaceDefaults: RequestDefaults {
    var parameters: Parameters? = {
        // TODO: Move to function or builder
        guard let jsonAsset = NSDataAsset(name: "APIConfig") else { return [:] }
        let apiKey = (try? JSONDecoder().decode(APIConfig.self, from: jsonAsset.data).key) ?? ""
        return [
            "api_key": .single(apiKey)
        ]
    }()
    var headers: Headers? { nil }
}

struct AstronomyPictureAPI: API {
    var baseUrl: String { "https://api.nasa.gov" }
    var defaults: RequestDefaults? = SpaceDefaults()
    var decoder: JSONDecoder {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        decoder.dateDecodingStrategy = .formatted(dateFormatter)
        return decoder
    }
}
