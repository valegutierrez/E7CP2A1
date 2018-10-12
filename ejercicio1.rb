a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]
a2 = a.map { |i| i + 1 }
p a2
a3 = a.map(&:to_f)
p a3
a4 = a.map(&:to_s)
p a4
p(a.reject { |i| i < 5 })
p(a.select { |i| i < 5 })
p(a.inject { |sum, n| sum + n })
p(a.group_by(&:even?))
p(a.group_by { |i| i > 6 })
