-- Função que verifica se um número é primo
ehPrimo :: Int -> Bool
ehPrimo n
    | n <= 1    = False -- Números menores ou iguais a 1 não são primos
    | otherwise = not (temDivisor n 2)
  where
    temDivisor :: Int -> Int -> Bool
    temDivisor x divisor
        | divisor * divisor > x = False -- Se não encontramos um divisor até a raiz quadrada de x, então x é primo
        | x `mod` divisor == 0   = True  -- Encontramos um divisor
        | otherwise              = temDivisor x (divisor + 1)

main :: IO ()
main = do
    putStrLn "Digite um número para verificar se é primo: "
    n <- readLn
    let primo = ehPrimo n
    if primo
        then putStrLn (show n ++ " é primo.")
        else putStrLn (show n ++ " não é primo.")
