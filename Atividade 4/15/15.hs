-- Função que calcula o MDC de dois números usando o Algoritmo de Euclides
mdc :: Int -> Int -> Int
mdc x y
    | y == 0    = x
    | otherwise = mdc y (x `rem` y)

-- Função que calcula a função totiente de Euler (φ(n)) de um número n
phi :: Int -> Int
phi n = length [r | r <- [1..n-1], mdc n r == 1]

main :: IO ()
main = do
    putStrLn "Digite o número n para calcular a função totiente de Euler (φ(n)): "
    n <- readLn
    let resultado = phi n
    putStrLn ("φ(" ++ show n ++ ") = " ++ show resultado)
