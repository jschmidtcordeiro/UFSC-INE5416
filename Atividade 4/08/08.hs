-- Função que resolve uma equação de segundo grau utilizando a fórmula de Bhaskara
resolverEquacaoSegundoGrau :: Double -> Double -> Double -> (Double, Double)
resolverEquacaoSegundoGrau a b c
    | discriminante < 0 = error "Não há raízes reais"
    | otherwise = ((-b + raizDiscriminante) / (2 * a), (-b - raizDiscriminante) / (2 * a))
  where
    discriminante = b * b - 4 * a * c
    raizDiscriminante = sqrt discriminante

main :: IO ()
main = do
    putStrLn "Digite o coeficiente a: "
    a <- readLn
    putStrLn "Digite o coeficiente b: "
    b <- readLn
    putStrLn "Digite o coeficiente c: "
    c <- readLn
    let (x1, x2) = resolverEquacaoSegundoGrau a b c
    putStrLn ("As raízes da equação são x1 = " ++ show x1 ++ " e x2 = " ++ show x2)
