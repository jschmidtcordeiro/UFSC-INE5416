-- Função que calcula o MDC de dois números usando o Algoritmo de Euclides
mdc :: Int -> Int -> Int
mdc x y
    | y == 0    = x
    | otherwise = mdc y (x `rem` y)

-- Função que calcula o MMC de dois números
mmc :: Int -> Int -> Int
mmc x y = (x * y) `div` (mdc x y)

main :: IO ()
main = do
    putStrLn "Digite o primeiro número (x): "
    x <- readLn
    putStrLn "Digite o segundo número (y): "
    y <- readLn
    let resultado = mmc x y
    putStrLn ("O mínimo múltiplo comum de " ++ show x ++ " e " ++ show y ++ " é " ++ show resultado)
