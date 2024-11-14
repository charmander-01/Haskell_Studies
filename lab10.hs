-- Questão 1
elefantes :: Int -> IO ()
elefantes n = do  
               if(n<=2) then return ()
               else do
                elefantes (n-1)
                putStrLn ("Se " ++ show (n-1) ++ " elefantes incomodam muita gente, ")
                putStrLn (show(n) ++ " incomodam muito mais!")
                

