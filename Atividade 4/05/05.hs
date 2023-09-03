-- Função que calcula a média e verifica se o aluno foi aprovado ou reprovado
verificarAprovacao :: Double -> Double -> Double -> String
verificarAprovacao a b c
    | media >= 6.0 = "Aprovado"
    | otherwise    = "Reprovado"
  where
    media = (a + b + c) / 3.0

main :: IO ()
main = do
    putStrLn "Digite a primeira nota do aluno: "
    nota1 <- readLn
    putStrLn "Digite a segunda nota do aluno: "
    nota2 <- readLn
    putStrLn "Digite a terceira nota do aluno: "
    nota3 <- readLn
    let resultado = verificarAprovacao nota1 nota2 nota3
    putStrLn ("O aluno está " ++ resultado)
