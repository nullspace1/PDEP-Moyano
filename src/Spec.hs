module Spec where
import PdePreludat
import Library
import Test.Hspec

correrTests :: IO ()
correrTests = hspec $ do
  describe "Presion" $ do
    it "presion" $ do
       presion 200 "bolsa de entrenamiento" `shouldBe` 68.181818182
  describe "Esta entre y menorA" $ do
    it "200 esta entre 150 y 250" $ do
       estaEntre 150 250 200 `shouldBe` True
    it "0.57721 no esta entre 2.72 y 3.14" $ do
       estaEntre 2.72 3.14 0.57721 `shouldBe` False  
    it "500 es menor a 900" $ do
       esmenorA 900 500 `shouldBe` True
    it "3 no es menor a 2.72" $ do
       esmenorA 2.72 3 `shouldBe` False
  describe "Golpes" $ do
    it "gomu gomu funca" $ do
        gomuGomu "bolsa de entrenamiento" `shouldBe` 61.363636364
    it "golpes normales consecutivos funca" $ do
        golpesNormalesConsecutivos "bolsa de entrenamiento" `shouldBe` 81.818181818
  describe "Objetivo es dificil funca?" $ do
    it "Bolsa de entrenamiento es dificil" $ do
      objetivoEsDificil "bolsa de entrenamiento"  `shouldBe` True
    it "Puf es facil" $ do
      objetivoEsDificil "puf" `shouldBe` False
  describe "Objetivo es accesible funca?" $do
    it "bolsa de entrenamiento es accesible" $ do
      objetivoEsAccesible "bolsa de entrenamiento" `shouldBe` True
    it "puf no es accesible" $ do
      objetivoEsAccesible "puf" `shouldBe` False
    

