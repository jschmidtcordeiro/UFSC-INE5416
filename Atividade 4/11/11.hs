-- Função que calcula o MDC usando o Algoritmo de Euclides
mdc :: Int -> Int -> Int
mdc x y
    | y == 0    = x
    | otherwise = mdc y (x `rem` y)

main :: IO ()
main = do
    putStrLn "Digite o primeiro número (x): "
    x <- readLn
    putStrLn "Digite o segundo número (y): "
    y <- readLn
    let resultado = mdc x y
    putStrLn ("O máximo divisor comum de " ++ show x ++ " e " ++ show y ++ " é " ++ show resultado)
