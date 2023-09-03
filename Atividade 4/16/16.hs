-- Função que verifica se x é divisível por y
eDivisivelPor :: Int -> Int -> Bool
eDivisivelPor x y = x `mod` y == 0

main :: IO ()
main = do
    putStrLn "Digite o valor de x: "
    x <- readLn
    putStrLn "Digite o valor de y: "
    y <- readLn
    let divisivel = eDivisivelPor x y
    if divisivel
        then putStrLn (show x ++ " é divisível por " ++ show y)
        else putStrLn (show x ++ " não é divisível por " ++ show y)
