-- Função que verifica se é possível construir um triângulo com os comprimentos dados
podeConstruirTriangulo :: Int -> Int -> Int -> Bool
podeConstruirTriangulo x y z = 
    x + y > z && x + z > y && y + z > x

main :: IO ()
main = do
    putStrLn "Digite o comprimento da primeira vareta: "
    x <- readLn
    putStrLn "Digite o comprimento da segunda vareta: "
    y <- readLn
    putStrLn "Digite o comprimento da terceira vareta: "
    z <- readLn
    let podeConstruir = podeConstruirTriangulo x y z
    if podeConstruir
        then putStrLn "É possível construir um triângulo com essas varetas."
        else putStrLn "Não é possível construir um triângulo com essas varetas."
