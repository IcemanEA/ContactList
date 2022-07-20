//
//  DataStore.swift
//  ContactList
//
//  Created by Egor Ledkov on 19.07.2022.
//

class DataStore {
    let firstNames: [String]
    let lastNames: [String]
    let phones: [String]
    let emails: [String]
    
    init() {
        firstNames = [
            "Ушат",
            "Рулон",
            "Квартет",
            "Улов",
            "Букет",
            "Рекорд",
            "Отряд",
            "Подрыв",
            "Черёд",
            "Подшум",
            "Поджог",
            "Захват",
            "Исход",
            "Подсуд",
            "Обвал",
            "Угон",
            "Загул",
            "Удел",
            "Камаз",
            "Развод",
            "Разгром",
            "Друган",
            "Забег",
            "Учёт",
            "Налог",
            "Парад",
            "Разбор",
            "Ремонт",
            "Побег",
            "Вагон",
            "Отряд",
            "Улов"
        ]
        
        lastNames = [
            "Помоев",
            "Обоев",
            "Гобоев",
            "Налимов",
            "Левкоев",
            "Надоев",
            "Ковбоев",
            "Устоев",
            "Застоев",
            "Прибоев",
            "Сараев",
            "Покоев",
            "Изгоев",
            "Злодеев",
            "Забоев",
            "Харлеев",
            "Старлеев",
            "Плебеев",
            "Отходов",
            "Супругов",
            "Шалманов",
            "Братанов",
            "Дебилов",
            "Расходов",
            "Сдоходов",
            "Уродов",
            "Полётов",
            "Трамваев",
            "Злодеев",
            "Гондонов",
            "Кретинов",
            "Кальмаров"
        ]
        
        phones = DataStore.generatePhones(count: lastNames.count)
        emails = DataStore.generateEmails(count: lastNames.count)
    }
    
    static private func generatePhones(count: Int) -> [String] {
        var randomPhones: [String] = []
        for _ in 0..<count {
            var stringNumber = "+7"
            for _ in 0..<9 {
                stringNumber += Int.random(in: 0...9).formatted()
            }
            randomPhones.append(stringNumber)
        }
        
        return randomPhones
    }
    
    static private func generateEmails(count: Int) -> [String] {
        var randomEmails = [String]()

        let letters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

        for _ in 0..<count {
            var email = ""
            for _ in 0..<Int.random(in: 6...12) {
                email += letters.randomElement() ?? ""
            }
            email += "@pochta.ru"
            randomEmails.append(email)
        }
        
        return randomEmails
    }
}
