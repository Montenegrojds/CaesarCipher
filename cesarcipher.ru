
puts 'Ingre lo que se va a encriptar'
entrytext = gets.chomp()

puts "Ingrese un numero"
numero = gets.chomp().to_i

while  numero > 26
    numero=numero-26    
end

text_in_ascii= entrytext.bytes

text_in_ascii_encrypted=text_in_ascii.map do |x|
    xtoi = x.to_i
    if (xtoi>64 && xtoi<91) 
        if (xtoi + numero) > 90
            x = 64 + (( xtoi + numero) -90 )            
        else
            x = xtoi+numero            
        end                         
    elsif (xtoi>96 && xtoi<123)
        if (xtoi + numero) > 122
            x = 96 + (( xtoi + numero) -122 )            
        else
            x = xtoi+numero
        end
    else 
        x = xtoi 
    end    
end

text_encrypted= text_in_ascii_encrypted.pack('c*')
puts 'Su texto encriptado'
puts text_encrypted

