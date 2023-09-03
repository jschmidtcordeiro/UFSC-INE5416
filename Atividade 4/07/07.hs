-- Função que calcula o n-ésimo número de Fibonacci
fibonacci :: Int -> Int
fibonacci n
    | n == 0    = 0
    | n == 1    = 1
    | otherwise = fibonacci (n - 1) + fibonacci (n - 2)

main :: IO ()
main = do
    putStrLn "Digite o valor de n para calcular o n-ésimo número de Fibonacci: "
    n <- readLn
    let resultado = fibonacci n
    putStrLn ("O " ++ show n ++ "-ésimo número de Fibonacci é " ++ show resultado)
