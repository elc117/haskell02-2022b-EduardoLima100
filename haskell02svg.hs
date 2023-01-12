import Text.Printf

svgBegin :: Float -> Float -> String
svgBegin w h = printf "<svg width='%.2f' height='%.2f' xmlns='http://www.w3.org/2000/svg'>\n" w h 

svgEnd :: String
svgEnd = "</svg>"

svgCircle :: Int -> Int -> Int -> String -> String 
svgCircle x y r style = 
  printf "<circle cx='%d' cy='%d' r='%d' fill='%s' />\n" x y r style

-- Lista de tuplas com as coordenadas x e y, o raio e a cor de cada círculo
circles = [ (200,200,50,"rgb(255, 0, 0, 1)"), 
            (250,250,30,"rgb(0, 0, 255, 1)"), 
            (150,150,40,"rgb(0, 255, 0, 1)"),
            (100,100,60,"rgb(255, 0, 255, 1)"),
            (50,50,70,"rgb(255, 255, 0, 1)") ]

-- Uso da função map para aplicar a função svgCircle a cada tupla na lista de círculos
svgCircles = map (\(x,y,r,s) -> svgCircle x y r s) circles

-- Uso da função concat para juntar todas as strings em uma única
svgAll = svgBegin 500 500 ++ concat svgCircles ++ svgEnd

main :: IO ()
main = do
  writeFile "circles.svg" svgAll
