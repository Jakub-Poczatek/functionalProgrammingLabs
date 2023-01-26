import Data.List (sort, sortBy)

names :: [(String, String)]
names = [("Bngela", "Merkel"), ("Angela", "Merkel"), ("Bngela", "Merkel"), ("Joe", "Biden"), 
    ("Michael D", "Higgins"), ("Boris", "Johnson")]

compareLastNames :: Ord a => (a, a) -> (a, a) -> Ordering
compareLastNames name1 name2
    | lastName1 > lastName2 = GT
    | lastName1 < lastName2 = LT
    | firstName1 > firstName2 = GT
    | firstName1 < firstName2 = LT
    | otherwise = EQ
    where   lastName1 = snd name1
            lastName2 = snd name2
            firstName1 = fst name1
            firstName2 = fst name2

compareFirstNames :: Ord a => (a, a) -> (a, a) -> Ordering
compareFirstNames name1 name2
    | firstName1 > firstName2 = GT
    | firstName1 < firstName2 = LT
    | otherwise = EQ
    where   firstName1 = fst name1
            firstName2 = fst name2

compareDescLastNames :: Ord a => (a, a) -> (a, a) -> Ordering
compareDescLastNames name1 name2
    | lastName1 > lastName2 = LT
    | lastName1 < lastName2 = GT
    | otherwise = EQ
    where   lastName1 = snd name1
            lastName2 = snd name2