########################################
# Welcome to the Steampunk Ninja Game! #
# The art for this game was handled by #
# Dan Oak, and the code was written by #
#  Harry Thoemmes. We hope you have a  #
#        great time playing it!        #
########################################

# TODO: display graphics (of the ascii variety or otherwiseÅ, but more likely just
# going to start by displaying a window), arrow keys input

# require 'ruby2d'

$floorlevel = 0
$maxjumpheight = 3
$movespeed = 1

$playerX = $floorlevel
$playerY = 0
$playerHealth = 2

$enemyX = 3 #only defining out here for a bit, gonna move l8r
$enemyY = $floorlevel

$currentPlayfield = 0 #define the current level the player is on

def jump
	until $playerY == $maxjumpheight #bring the player up
		$playerY += 1
		puts $playerY	
	end
	
	until $playerY == $floorlevel #bring the player back down
		$playerY -= 1
		puts $playerY
	end
	# prepare for new input, or break to main
	main
end

def right
	$playerX += $movespeed #add to x at a rate equal to movespeed
	puts $playerX
	main
end

def left
	$playerX -= $movespeed
	puts $playerX
	main
end

def main
	input = gets.chomp #declare input as console input minus newline char
	
	endflag = 50 #an object to signify level end is 50 units from start
	
	if $playerX == endflag
		$currentPlayfield += 1
		puts $currentPlayfield
	end
	
	if input == "up"
		jump #call the jump function
	end

	if input == "right" #handle left/right input
		right
	elsif input == "left"
		left
	elsif input == "end"
		puts  "Goodbye!"
		abort
	else
		puts "Invalid input"
	end
	main
end

def takedamage
	puts "Damage is being taken whoopdee doo"
end

main

# consider developing a ruby gem for displaying 2D graphics following the
# conventions of game development, rather than the currently existing graphics
# libraries that follow more mathematical conventions
# might be really really difficult though, so probably not
# also figure out how to implement any current ruby GUI extension, or anything
# of that nature really


# it might make this project a bit easier, consider how much time it will take to
# develop

# aseprite (probably png or gif to be honest)