-- Função que retorna o maior entre três valores
maiorValor :: Double -> Double -> Double -> Double
maiorValor a b c
    | a >= b && a >= c = a
    | b >= a && b >= c = b
    | otherwise        = c

main :: IO ()
main = do
    putStrLn "Digite o valor de a: "
    a <- readLn
    putStrLn "Digite o valor de b: "
    b <- readLn
    putStrLn "
