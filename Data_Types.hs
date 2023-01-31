data Person = Empty | Person String Int deriving (Show)

createPerson :: String -> Int -> Person
createPerson n a = Person n a

main :: IO()
main = do
    let p = createPerson "Felipe" 20
    print p