isFever :: Float -> Bool
isFever temperature = temperature > 37.8

hasFever :: [Float] -> [Float]
hasFever temperatures = filter isFever temperatures

hasFever' :: [Float] -> [Float]
hasFever' temperatures = filter (\temperature -> temperature > 37.8) temperatures

itemize :: [String] -> [String]
itemize list = map (\string -> "<li>" ++ string ++ "</li>") list

bigCircles :: Float -> [Float] -> [Float]
bigCircles area list = filter (\radius -> pi * (radius^2) > area) list

quarantine :: [(String,Float)] -> [(String,Float)]
quarantine list = filter (\(name, temperature) -> temperature > 37.8) list

agesIn :: [Int] -> Int -> [Int]
agesIn birthYears referenceYear = map (\year -> referenceYear - year) birthYears

superNames :: [String] -> [String]
superNames names = map (\name -> if head name == 'A' then "Super " ++ name else name) names

onlyShorts :: [String] -> [String]
onlyShorts strings = filter (\string -> length string < 5) strings
