-- Função que implementa o XOR usando apenas &&, || e not
xor :: Bool -> Bool -> Bool
xor x y = (x || y) && not (x && y)

main :: IO ()
main = do
    putStrLn "Digite o valor de x (True ou False): "
    x <- readLn
    putStrLn "Digite o valor de y (True ou False): "
    y <- readLn
    let resultado = xor x y
    putStrLn ("O resultado do XOR entre " ++ show x ++ " e " ++ show y ++ " é " ++ show resultado)