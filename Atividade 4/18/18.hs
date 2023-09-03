-- Função que realiza uma operação matemática com base no operador
calcularOperacao :: Char -> Double -> Double -> Double
calcularOperacao '+' x y = x + y
calcularOperacao '-' x y = x - y
calcularOperacao '*' x y = x * y
calcularOperacao '/' x y
    | y == 0    = error "Divisão por zero não é permitida."
    | otherwise = x / y
calcularOperacao _ _ _ = error "Operador inválido."

main :: IO ()
main = do
    putStrLn "Digite o operador (+, -, *, /): "
    operador <- getLine
    putStrLn "Digite o valor de x: "
    x <- readLn
    putStrLn "Digite o valor de y: "
    y <- readLn

    let resultado = case operador of
                    "+" -> calcularOperacao '+' x y
                    "-" -> calcularOperacao '-' x y
                    "*" -> calcularOperacao '*' x y
                    "/" -> calcularOperacao '/' x y
                    _   -> error "Operador inválido."

    putStrLn ("O resultado da operação é: " ++ show resultado)
