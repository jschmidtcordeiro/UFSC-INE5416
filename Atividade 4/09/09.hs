-- Função que calcula a distância entre dois pontos no espaço 3D
calcularDistancia3D :: Double -> Double -> Double -> Double -> Double -> Double -> Double
calcularDistancia3D x1 y1 z1 x2 y2 z2 =
    sqrt ((x2 - x1) ^ 2 + (y2 - y1) ^ 2 + (z2 - z1) ^ 2)

main :: IO ()
main = do
    putStrLn "Digite as coordenadas do primeiro ponto (x1 y1 z1): "
    x1 <- readLn
    y1 <- readLn
    z1 <- readLn
    putStrLn "Digite as coordenadas do segundo ponto (x2 y2 z2): "
    x2 <- readLn
    y2 <- readLn
    z2 <- readLn
    let distancia = calcularDistancia3D x1 y1 z1 x2 y2 z2
    putStrLn ("A distância entre os pontos é " ++ show distancia)
