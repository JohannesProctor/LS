
VALID_CHOICES = %w(r p s l sp)
MAX_SCORE = 3

def prompt(message)
  puts "=> #{message}"
end

def get_user_choice
  choice = ""
  loop do
    prompt("Enter rock (r), paper (p), scissors (s), lizard (l), or spock (sp)")
    choice = gets.chomp
    break if VALID_CHOICES.include?(choice.downcase)
    prompt("Error, invalid input")
  end
  choice
end


def roshambo(p1_choice, p2_choice)
	return 'tie' if p1_choice == p2_choice
	case p1_choice
	when 'r'
		'p1' if p2_choice == 's' || p2_choice == 'l'
	
	when 'p'
		'p1' if p2_choice == 's' || p2_choice == 'sp'

	when 's'
		'p1' if p2_choice == 'r' || p2_choice == 'l'

	when 'l'
		'p1' if p2_choice == 'sp' || p2_choice == 'p'

	when 'sp'
		'p1' if p2_choice == 'r' || p2_choice == 's'
	end
end


def update_score(winner, score)
	if winner == 'tie'
		return
	elsif winner == 'p1'
		score[0] += 1
	else
		score[1] += 1
	end
end


def display_round_winner(winner)
	if winner == 'tie'
		prompt("Tie!")
		return
	elsif winner == 'p1'
		prompt("Win!")
	else
		prompt("Lose!")
	end
end


def display_choice(choice)
	case choice
	when 'r'
		'rock'
	when 'p'
		'paper'
	when 's'
		'scissors'
	when 'l'
		'lizard'
	when 'sp'
		'spock'
	end
end

def display_score(score)
	puts "=> The score is #{score[0]} to #{score[1]}"
end

def display_match_winner(score)
	if score[0] == MAX_SCORE
		prompt("You won!")
	else
		prompt("Computer won!")
	end
end

score = [0, 0]
loop do
	loop do
		choice = get_user_choice

		computer_choice = VALID_CHOICES.sample
		
		puts "=> #{display_choice(choice)} vs. #{display_choice(computer_choice)}"
		winner = roshambo(choice, computer_choice)
		update_score(winner, score)
		display_round_winner(winner)
		display_score(score)

		break if score[0] == MAX_SCORE || score[1] == MAX_SCORE
	end

	display_match_winner(score)

	prompt("again? (y or n) ")
	break if gets.chomp.downcase.start_with?('n')
	score[0] = 0
	score[1] = 0
end

