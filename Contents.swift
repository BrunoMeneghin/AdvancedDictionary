// MARK: Group

struct WorldCup2022 {
    let group_A = ["Brazil", "Netherdlands", "Japan", "United States", "Argentina"]
    let group_B = ["Italy", "Chile", "Germany", "Portugal", "South Africa"]
}

let worldCupTeams = WorldCup2022()

let grouped_A = Dictionary(grouping: worldCupTeams.group_A, by: { $0.first! })
let grouped_B = Dictionary(grouping: worldCupTeams.group_B, by: { $0.first! })

print("Group A: ", grouped_A, "\n\nGroup B: ", grouped_B)

print("\nGroup A Keys: ", grouped_A.map { $0.key },
      "\n\nGroup B Keys: ", grouped_B.map { $0.key })


// MARK: - Duplicates

let removeDuplicatesOnDictionary = [("a", 1), ("b", 8), ("b", 7), ("a", 19)]

let letter = Dictionary(removeDuplicatesOnDictionary, uniquingKeysWith: { (letter, number) in letter
    return letter
})

print("\nRemoving duplicates values: ", letter)


// MARK: - ZIP: Dictionary like

let words = ["One", "Two", "Three", "Four"]
let numbers = 1...words.count

for (word, number) in zip(words, numbers) {
    print("\n\(word): \(number)")
}


// MARK: - Zip: Dictionary

let devices = ["iPhone", "iPad", "MacBook Pro", "Apple Watch"]
let devicesWithValue = Dictionary(uniqueKeysWithValues: zip(1..., devices))

print("\n", devicesWithValue)


// MARK: - Functional proramming: Dictionary

var dictionary: [String : String] = [:]
dictionary = ["Movie": "Goldeneye 007", "Genre": "Action", "Year": "1995"]

let filtered = dictionary.filter { $0.key == "Movie" }
print(filtered)

let mapped = dictionary.mapValues { value in
    value.uppercased()
}

print(mapped)
