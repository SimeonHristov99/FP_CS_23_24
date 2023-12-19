import Data.List

main :: IO()
main = do
    print $ hardestSubject [("John", "Maths", 5), ("Kennedy", "English", 2), ("Joe", "Programming", 4), ("Claudia", "Programming", 6), ("Sam", "Maths", 4), ("Jenn", "English", 2)] == "English"
    print $ hardestSubject [("John", "Maths", 5), ("Kennedy", "English", 5), ("Joe", "Programming", 4), ("Claudia", "Programming", 6), ("Sam", "Maths", 4), ("Jenn", "English", 5)] == "Maths"

type Student = String
type Subject = String
type Note = Double
type Record = (Student, Subject, Note)

average xs = sum xs / (fromIntegral $ length xs)

hardestSubject :: [Record] -> Subject
hardestSubject rs = fst $ foldr1 (\ v1@(s1, gr1) v2@(s2, gr2) -> if gr1 < gr2 then v1 else v2) $ map (\ subj -> (subj, average [ grade | (_, s, grade) <- rs, s == subj])) subjects
 where
    subjects = nub $ map (\ (_, subj, _) -> subj) rs
