//
//  DataManager.swift
//  Serviceman
//
//  Created by Aleksandr on 13.11.2022.
//

import Foundation

class DataManager {
    static let shared = DataManager()
    
    private init () {}
    
    let phones = [
        "89998880000", "89998881111" , "89998882222",
        "89998883333", "89998884444", "89998885555",
        "89998886666", "89998887777", "89998888888", "89998889999",
        "89997770000", "89997771111" , "89997772222",
        "89997773333", "89997774444", "89997775555",
        "89997776666", "89997777777", "89997778888", "89997779999"
    ].shuffled()
    
    let addresses = [
        "Пушкина 168 - 43", "Лермонтова 6 - 33", "Журналистов 13 - 43",
        "Ломоносова 14 - 89", "Космонавтов 1 - 56", "Университетская 99 - 4",
        "Центральная 4 - 123", "Овражная 18 - 31", "Чехова 26 - 66", "Ленина 8 - 12",
        "Пушкина 1 - 43", "Лермонтова 63 - 33", "Журналистов 133 - 43",
        "Ломоносова 145 - 89", "Космонавтов 14 - 56", "Университетская 199 - 4",
        "Центральная 84 - 123", "Овражная 118 - 31", "Чехова 126 - 66", "Ленина 83 - 12"
    ].shuffled()
    
    let stuffs = [
        "кале 60", "гардиан 32.01", "апекс 90",
        "просам", "эльбор", "гардиан 70",
        "аллюр", "абус 80", "зенит", "мэттем",
        "кале 60", "гардиан 32.01", "апекс 90",
        "просам", "эльбор", "гардиан 70",
        "аллюр", "абус 80", "зенит", "мэттем"
    ].shuffled()
    
    var stuffsCosts = [
        800, 900, 1000, 1100, 1200, 1300, 1400, 1500, 1600, 1700,
        800, 900, 1000, 1100, 1200, 1300, 1400, 1500, 1600, 1700
    ].shuffled()
    
    var costs = [
        3500, 3900, 4000, 4100, 5200, 5300, 5400, 6500, 4600, 4700,
        3500, 3900, 4000, 4100, 5200, 5300, 5400, 6500, 4600, 4700
    ].shuffled()
    
    let owners = [
        "Артур", "Артур", "Саша", "Саша", "Саша",
        "Артем", "Артем", "Артем", "Артем", "Артем",
        "Артур", "Артур", "Саша", "Саша", "Саша",
        "Артем", "Артем", "Артем", "Артем", "Артем"
    ].shuffled()
    
}
