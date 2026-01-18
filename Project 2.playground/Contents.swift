
let cities: [(String, Int)] = [
    ("New York",8500000),
    ("Los Angeles",3900000),
    ("Chicago",2700000),
    ("Houston",2300000),
    ("Phoenix",1600000),
    ("Philadelphia",1500000),
]

func getStats(data: [(String, Int)]) -> (Int, Int, Int) {
    let populations = data.map {$0.1}
    let minPopulation = populations.min()!
    let maxPopulation = populations.max()!
    let averagePopulation = populations.reduce(0, +) / populations.count
    return (minPopulation, maxPopulation, averagePopulation)
}

func filterData(data: [(String, Int)]) -> [(String, Int)] {
    return data.filter {$0.1 > 3_000_000}
}

let stats = getStats(data: cities)
let filtered = filterData(data: cities)

print("Summary")
print("Min:", stats.0)
print("Max:", stats.1)
print("Average:", stats.2)

print("Filtered")
for city in filtered {
    print(city.0, city.1)
}
