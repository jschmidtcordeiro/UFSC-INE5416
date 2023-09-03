-- Função que calcula o MDC de dois números usando o Algoritmo de Euclides
mdc :: Int -> Int -> Int
mdc x y
    | y == 0    = x
    | otherwise = mdc y (x `rem` y)

-- Função que verifica se dois números são coprimos
saoCoprimos :: Int -> Int -> Bool
saoCoprimos x y = mdc x y == 1

main :: IO ()
main = do
    putStrLn "Digite o primeiro número (x): "
    x <- readLn
    putStrLn "Digite o segundo número (y): "
    y <- readLn
    let coprimos = saoCoprimos x y
    if coprimos
        then putStrLn ("Os números " ++ show x ++ " e " ++ show y ++ " são coprimos.")
        else putStrLn ("Os números " ++ show x ++ " e " ++ show y ++ " não são coprimos.")
