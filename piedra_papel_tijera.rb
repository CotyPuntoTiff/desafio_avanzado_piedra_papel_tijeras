#menu del jugador
def menu()
    "    1. Piedra
    2. Papel
    3. Tijeras
    4. Salir"
end
#Opcion del jugador 1 valida o no, y asignandole palabra
def jugador1(primero)

    case 
    when primero == 1
         choi1= 'Piedra'
    when primero == 2
         choi1 = 'Papel'
    when primero == 3
         choi1 = 'Tijeras'
    when primero == 4
         choi1 = 'Salir'
    else 
      choi1 = 'Argumento invadido, elije una opcion del 1 al 4.'
    end
    return choi1
end 
#Opcion del jugador 2 valida o no, y asignandole palabra
def jugador2(segundo)

    case 
    when segundo == 1
         choi2= 'Piedra'
    when segundo == 2
         choi2 = 'Papel'
    when segundo == 3
         choi2 = 'Tijeras'
    when segundo == 4
         choi2 = 'Salir'
    else 
        choi2 = 'Argumento invadido, elije una opcion del 1 al 4.'
    end
    return choi2 
end 

#Intro del juego con las instrucciones
puts 'Bienvenidos al juego de piedra papel o tijeras'
puts 
puts 'jugador 1 elije una opcion del 1 al 4'
puts menu
p1 = gets.chomp.to_i
#aqui intento hacer que si el argumento es invalido vuelva a pedirle uno valido
#lo mismo con el dos
    if  jugador1(p1) == 'Piedra'||jugador1(p1) == 'Papel'||jugador1(p1) == 'Tijeras'
        print "elegiste: \n         "
        puts jugador1(p1) 
        puts "-------------------------------"
    elsif jugador1(p1) == 'Salir'
        exit()
    else
        while jugador1(p1) == 'Argumento invadido, elije una opcion del 1 al 4.' do 
            puts'Argumento invadido, elije una opcion del 1 al 4.'
            p1 = gets.chomp.to_i   
        end
    end

puts
puts 'jugador dos elije una opcion'
puts menu
p2 = gets.chomp.to_i
#aqui intento hacer que si el argumento es invalido vuelva a pedirle uno valido
#lo mismo con el 1

    if  jugador2(p2) == 'Piedra'||jugador2(p2) == 'Papel'||jugador2(p2) == 'Tijeras'||jugador2(p2) == 'Salir'
        print "elegiste: \n         "
        puts jugador2(p2) 
        puts "-------------------------------"

    elsif jugador2(p2) == 'Salir'
        exit()
    else 
        while jugador2(p2) == 'Argumento invadido, elije una opcion del 1 al 4.' do 
            puts'Argumento invadido, elije una opcion del 1 al 4.'
            p2 = gets.chomp.to_i
        end
    end 

puts "El resultado es:"
if jugador1(p1) == 'Papel' 
    case
        when jugador2(p2) == 'Piedra' 
            puts '                  Papel gana a Piedra'
        when jugador2(p2) == 'Tijeras'
            puts '                  Tijeras gana a Papel'
        when jugador2(p2) == 'Papel'
            puts '                  EMPATE!!'
        when jugador2(p2) == "Salir"
            puts "                  Saliste del juego"
    end
    
elsif jugador1(p1) == 'Piedra' 
    case
        when jugador2(p2) == 'Tijeras' 
            puts '                  Piedra gana a Tijeras'
        when jugador2(p2) == 'Papel'
            puts '                  Papel gana a Piedra'
        when jugador2(p2) == 'Piedra'
            puts '                  EMPATE!!'
        when jugador2(p2) == "Salir"
            puts "                  Saliste del juego"
    end
    
else jugador1(p1) == 'Tijeras' 
    case
        when jugador2(p2) == 'Papel' 
            puts '                  Tijeras gana a Papel'
        when jugador2(p2) == 'Piedra'
            puts '                  Piedra Gana a Tijeras'
        when jugador2(p2) == 'Tijeras'
            puts '                  EMPATE!!'
        when jugador2(p2) == "Salir"
            puts "                  Saliste del juego"
    end
end
