//
//  PictureOfTheDay.swift
//  APOD
//
//  Created by Chris Pflepsen on 10/30/23.
//

import Foundation

struct PictureOfTheDay: Codable {
    let copyright: String
    let date: Date
    let explanation: String?
    let hdurl: String
    let mediaType: String
    let serviceVersion: String
    let title: String
    let url: String
}
