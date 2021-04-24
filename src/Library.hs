module Library where
import PdePreludat
type Objetivo = String
type Poder = Number
type Entrenamiento = Number
type Fortaleza = Number
type Presion = Number
type Golpe = Objetivo -> Presion

presion :: Entrenamiento -> Objetivo -> Presion
presion horasDeEntrenamiento nombreObjetivo = poder horasDeEntrenamiento / fortaleza nombreObjetivo

poder :: Entrenamiento -> Poder
poder horasDeEntrenamiento = (*15) horasDeEntrenamiento 

fortaleza :: Objetivo -> Fortaleza
fortaleza = (*2).length

gomuGomu :: Golpe
gomuGomu = presion 180

golpesNormalesConsecutivos :: Golpe
golpesNormalesConsecutivos = presion 240

esmenorA :: Number -> Number -> Bool
esmenorA cota numero = (<cota) numero

objetivoEsDificil :: Objetivo -> Bool
objetivoEsDificil = (esmenorA 100).gomuGomu

estaEntre :: Number -> Number -> Number -> Bool
estaEntre inferior superior numero = (inferior < numero) && (numero < superior)

focalizarObjetivo :: Objetivo -> Objetivo
focalizarObjetivo = take 7

objetivoEsAccesible :: Objetivo -> Bool
objetivoEsAccesible = (estaEntre 200 400).golpesNormalesConsecutivos.focalizarObjetivo