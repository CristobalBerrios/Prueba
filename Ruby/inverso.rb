def inverso(palabra)
	patron = /[^AaEeIiOoUu]/
	arrayPalabra = palabra.split("")
	reversa = ""
	i = arrayPalabra.length - 1

	while i >= 0
		if patron.match(arrayPalabra[i]) != nil
			reversa += arrayPalabra[i]
		end	
		i-=1
	end

	return reversa
end

puts "Ingrese una palabra"
palabra = gets.chomp

puts inverso(palabra)


