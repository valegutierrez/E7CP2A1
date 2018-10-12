nombres = %w[Violeta Andino Clemente Javiera Paula Pia Ray]
p(nombres.select { |i| i.length > 5 })
lowercase = nombres.map(&:downcase)
p lowercase
start_with_p = nombres.select { |i| i.start_with?('P') }
p start_with_p
count_of_letters = nombres.map(&:length)
p count_of_letters
p(nombres.map { |i| i.gsub(/[AEIOUaeiou]/, '') })
