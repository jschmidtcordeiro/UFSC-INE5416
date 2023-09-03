-- Função que calcula o MDC de três números usando o Algoritmo de Euclides
mdcTresNumeros :: Int -> Int -> Int -> Int
mdcTresNumeros a b c = mdc (mdc a b) c
  where
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
    putStrLn "Digite o terceiro número (z): "
    z <- readLn
    let resultado = mdcTresNumeros x y z
    putStrLn ("O máximo divisor comum de " ++ show x ++ ", " ++ show y ++ " e " ++ show z ++ " é "
