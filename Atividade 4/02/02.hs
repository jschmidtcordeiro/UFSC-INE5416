-- Função que retorna o valor absoluto de um número
valorAbsoluto :: Double -> Double
valorAbsoluto x
    | x >= 0    = x
    | otherwise = -x

main :: IO ()
main = do
    putStrLn "Digite um número: "
    x <- readLn
    let absoluto = valorAbsoluto x
    putStrLn ("O valor absoluto de " ++ show x ++ " é " ++ show absoluto)
