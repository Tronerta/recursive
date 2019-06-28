def fibs(n)

	result = []

	n.times do |i|
		if i == 0 || i == 1
			result << i
		else
			result << result[-1] + result[-2]
		end
	end

	result
end

print fibs(10)

def fibs_rec(n)
  return 0 if n == 0
  return 1 if n == 1

  fibs_rec(n - 1) + fibs_rec(n - 2)
end

print fibs_rec(3)


