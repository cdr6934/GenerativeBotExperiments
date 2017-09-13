#https://nerdsrule.co/2013/06/13/getting-started-with-twitter-in-r/
  #Examples of the plants 

#Plant 2
generatePlant("X",list("X"="F[+X][-X]FX", "F"="FF"),25.7,6)

# #Plant 3
generatePlant("X",list("X"="F[+X]F[-X]+X", "F"="FF"),20,7)

#Plant 4
generatePlant("X",list("X"="F-[[X]+X]+F[+FX]-X", "F"="FF"),22.5,6)

#Plant 5
generatePlant("F",list("F"="F[+F]F[-F]F"),25.7,5)

#Plant 6
generatePlant("F",list("F"="F[+F]F[-F][F]"),20,5)
