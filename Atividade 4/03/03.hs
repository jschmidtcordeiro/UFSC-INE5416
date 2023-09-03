-- Função que calcula a área de um triângulo
areaTriangulo :: Double -> Double -> Double
areaTriangulo base altura = (base * altura) / 2.0

main :: IO ()
main = do
    putStrLn "Digite a base do triângulo: "
    base <- readLn
    putStrLn "Digite a altura do triângulo: "
    altura <- readLn
    let area = areaTriangulo base altura
    putStrLn ("A área do triângulo com base " ++ show base ++ " e altura " ++ show altura ++ " é " ++ show area)
