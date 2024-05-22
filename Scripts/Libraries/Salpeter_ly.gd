## Defines the Salpeter class that generates a list of stellar masses in solar masses accorsing to Salpeter's distribution
class_name Salpeter

##
func salpeter_generation(minimum_mass, maximum_mass, number_of_stars) -> Array[float]:
	var alpha: float = 2.35 # constant as defined by Salpeter in 1955
	var exponent: float = -alpha + 1
	var salpeter_rng: RandomNumberGenerator = RandomNumberGenerator.new()
	
	var x: Array[float] # uniformly distributed random numbers between 0 and 1
	
	for i: int in range(number_of_stars+1):
		x.append(salpeter_rng.randf())
	
	for mass: float in x:
		mass = ((maximum_mass**exponent - minimum_mass**exponent) * mass + minimum_mass**exponent)**(1.0/exponent)
		
	return x
