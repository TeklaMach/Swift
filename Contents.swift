result(for: "პირველი ამოცანა", action: {
    
    var myArray = [ 1,2,3,4 ]
    
    if myArray.count >= 2 {
        var firstDigit = myArray[0]
        myArray[0] = myArray[myArray.count - 1]
        myArray[myArray.count - 1] = firstDigit
    }
    print(myArray)
})

result(for: "მეორე ამოცანა", action: {
    var myArray = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11 ]
    
    var digitsToKeep = 0
    
    if myArray.count % 2 == 1 {
        digitsToKeep = (myArray.count - 1) / 2
    } else {
        digitsToKeep = myArray.count / 2
    }
    
    var newArray: [Int] = []
    
    for i in 0..<digitsToKeep {
        newArray.append(myArray[i])
    }
    
    myArray = newArray
    
    print("half of the array: \(myArray)")
})

result(for: "მესამე ამოცანა", action: {
    var myArray = [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ]
    var oddNumbersArray: [Int] = []
    var evenNumbersArray: [Int] = []
    
    for num in myArray {
        if num % 2 == 0 {
            evenNumbersArray.append(num)
        } else {
            oddNumbersArray.append(num)
        }
    }
    print("Original Array: \(myArray)")
    print("Even Numbers Array: \(evenNumbersArray)")
    print("Odd Numbers Array: \(oddNumbersArray)")
})

result(for: "მეოთხე ამოცანა", action: {
    var doubleArray: [Double] = [ 3.14, 2.5, 7.8, 1.1, 5.6, 9.2, 4.0 ]
    var maxNum: Double = doubleArray[0]
    
    for num in doubleArray {
        if num > maxNum {
            maxNum = num
        }
    }
    print("Largest Number: \(maxNum)")
})

result(for: "მეხუთე ამოცანა", action: {
    var array1 = [ 8, 4, 9, 9, 0, 2 ]
    var array2 = [ 1, 0, 9, 2, 3, 7, 0, 1 ]
    var combinedArray = array1 + array2
    print(combinedArray)
})

result(for: "მეექვსე ამოცანა", action: {
    var myString = "the lord of the rings"
    
    var myStringSet = Set(myString)
    
    var charactersChecking = myStringSet.count == myString.count
    
    if charactersChecking {
        print("All characters in: \(myString) are unique.")
    } else {
        print("The string: \(myString) contains duplicate characters.")
    }
})

result(for: "მეშვიდე ამოცანა", action: {
    
    //Union of Ints//
    
    var firstSet: Set = [ 1, 18, 19, 34 ]
    var secondSet: Set = [ 43, 18, 89, 30, 17 ]
    
    for i in firstSet {
        for j in secondSet {
            if i == j {
                print("Common Element: \(i)")
            }
        }
    }
    
    var unionOfSets = firstSet.union(secondSet)
    print("Union of Sets: \(unionOfSets)")
    
    //Intersection of Ints//
    
    var ages: Set = [ 11, 87, 23, 17 ]
    var illegalActionsAge: Set = [ 17, 24, 27, 45 ]
    var ageIntersection = ages.intersection(illegalActionsAge)
    print("People from this age can have a diver's licence: \(ageIntersection)")
    
    //Difference between Ints//
    
    var set1: Set = [ 1, 2, 3, 4, 5 ]
    var set2: Set = [ 3, 4, 5, 6, 7 ]
    
    var uniqueIn1 = set1.subtracting(set2)
    var uniqueIn2 = set2.subtracting(set1)
    
    print("Unique in Set 1: \(uniqueIn1)")
    print("Unique in Set 2: \(uniqueIn2)")

})

result(for: "მერვე ამოცანა", action: {
    var firstSet: Set<String> = [ "apple", "orange" ]
    var secondSet: Set = [ "apple", "banana", "orange", "kiwi" ]
    
    var isSubset = true
    
    for i in firstSet {
        var foundMatch = false
        for j in secondSet {
            if i == j {
                foundMatch = true
                break
            }
        }
        if !foundMatch {
            isSubset = false
            break
        }
    }
    if isSubset {
        print("The first set is a sub-set of the second set.")
    } else {
        print("The first set is not a sub-set of the second set.")
    }
})

result(for: "მეცხრე ამოცანა", action: {
    let myArray = [ 1, 2, 3, 4, 6, 6, 7, 8, 9, 10 ]
    
    var hasDuplicates = false
    
    for i in 0..<myArray.count {
        for j in (i + 1)..<myArray.count {
            if myArray[i] == myArray[j] {
                hasDuplicates = true
                break
            }
        }
        if hasDuplicates {
            break
        }
    }
    if hasDuplicates {
        print("The array contains similar elements.")
    } else {
        print("All elements in the array are distinct.")
    }
})
 
result(for: "მეათე ამოცანა", action: {
    var movieRatings = [String: Double]()
    
    movieRatings["Little women"] = 8.7
    movieRatings["Anna with an E"] = 9.3
    movieRatings["Gilmore girls"] = 9.0
    movieRatings["The holiday"] = 8.9
    movieRatings["Forrest Gump"] = 8.8
    
    var totalRating: Double = 0.0
    
    for (_, rating) in movieRatings {
        totalRating += rating
    }
    var average = totalRating/Double(movieRatings.count)
    average = (average * 100).rounded() / 100
    print("Total rating: \(totalRating)")
    print("avarage value: \(average)")
})
