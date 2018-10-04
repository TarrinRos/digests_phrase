require 'digest'

dig_names = ["MD5", "SHA1"]

puts 'Пожалуйста, введите слово или фразу для шифрования:'

phrase = STDIN.gets.chomp

choose = 0
# Пока условие возвращает "false", цикл будет работать
until choose.between?(1,2)
  puts 'Пожалуйста, выберите способ шифрования:'
  dig_names.each_with_index { |name, index| puts "#{index + 1}. #{name}" }
  choose = STDIN.gets.to_i
end

if choose == 1
  result = Digest::MD5.hexdigest(phrase)
else
  result = Digest::SHA1.hexdigest(phrase)
end

puts "Результат шифрования: #{result}"