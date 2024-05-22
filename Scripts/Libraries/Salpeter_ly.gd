#@tool
class_name Salpeter

#func _run():
	#salpeter_generation(0.08, 110, 5000000)

func salpeter_generation(minimum_mass, maximum_mass, number_of_stars):
	var alpha = 2.35 # constant as defined by Salpeter in 1955
	var exponent = -alpha + 1
	var salpeter_rng = RandomNumberGenerator.new()
	
	var x = [] # uniformly distributed random numbers between 0 and 1
	
	for i in range(number_of_stars+1):
		x.append(salpeter_rng.randf())
	
	#for i in range(num_stars):
	#masses[i] = ((m_max**exponent - m_min**exponent) * x[i] + m_min**exponent)**(1.0/exponent)
	
	for i in range(number_of_stars+1):
		x[i] = ((maximum_mass**exponent - minimum_mass**exponent) * x[i] + minimum_mass**exponent)**(1.0/exponent)
		
	for a in x:
		if a > 20:
			print(a)
