//
//  sampledata.swift
//  instagram-app
//
//  Created by cissokho abdoulaye on 11/04/2023.
//

import Foundation

import Foundation

public var userList = [
    "abdcsko",
"chris",
"faudel",
"florian",
"gédeon",
"moctar",
"Pom",
"Sourany",
"zoumana"]

public var mesPhotos = [
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
    "H",
    "I",
    "J",
    "K",
    "L",
    "M",
    "O",
    "P",
    "Q",
    "R",
    "S",
    "T",
    "U",
    "V",
    "W",
    "X",
    "Y"]

public struct messagerieTableau: Codable, Hashable {
    var image : String
    var nom : String
    var message: String

}

public var message = [
    messagerieTableau(image: "A", nom: "Abdcsko", message: "En ligne il y a 9h"),
    messagerieTableau(image: "B", nom: "Abdcsko", message: "En ligne il y a 1h"),
    messagerieTableau(image: "C", nom: "Abdcsko", message: "En ligne il y a 2j"),
    messagerieTableau(image: "D", nom: "Abdcsko", message: "En ligne il y a 3j"),
    messagerieTableau(image: "E", nom: "Abdcsko", message: "En ligne il y a 3j"),
    messagerieTableau(image: "F", nom: "Abdcsko", message: "En ligne il y a 4j"),
    messagerieTableau(image: "K", nom: "Abdcsko", message: "En ligne il y a 1j"),
    messagerieTableau(image: "J", nom: "Abdcsko", message: "En ligne il y a 3h"),
    messagerieTableau(image: "L", nom: "Abdcsko", message: "En ligne il y a 5h"),
    messagerieTableau(image: "M", nom: "Abdcsko", message: "En ligne il y a 7h"),
    messagerieTableau(image: "U", nom: "Abdcsko", message: "En ligne il y a 6h"),
    messagerieTableau(image: "O", nom: "Abdcsko", message: "En ligne il y a 8h"),
    messagerieTableau(image: "E", nom: "Abdcsko", message: "En ligne il y a 2h"),
    messagerieTableau(image: "Y", nom: "Abdcsko", message: "En ligne il y a 3h"),
    messagerieTableau(image: "A", nom: "Abdcsko", message: "En ligne il y a 8h"),
    messagerieTableau(image: "V", nom: "Abdcsko", message: "En ligne il y a 4h"),
    

]


