potencia :: Double -> Double -> Double
potencia x y = x ** y

main :: IO ()
main = do
    putStrLn "Digite o valor de x: "
    x <- readLn
    putStrLn "Digite o valor de y: "
    y <- readLn
    let resultado = potencia x y
    putStrLn ("O resultado de " ++ show x ++ " elevado a " ++ show y ++ " é " ++ show resultado)