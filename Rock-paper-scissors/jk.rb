puts "じゃんけん..."

def janken
  puts "[0]グー\n[1]チョキ\n[2]パー"

  player_choice = gets.to_i
  program_jankens = rand(3)
  program_hoi = rand(4)

  jankens = ["グー", "チョキ","パー"]
  hoi = ["上", "右", "左" ,"下"]
  puts "あなたの手:#{jankens[player_choice]}, 相手の手:#{jankens[program_jankens]}"

  if player_choice == program_jankens
        puts "あいこで"
        return true
    
    elsif (player_choice == 0 && program_jankens == 1)||(player_choice == 1 && program_jankens == 2)||(player_choice == 2 && program_jankens == 0)
        puts "あなたのターン"
        puts "あっちむいて"
        puts "[0]上\n[1]右\n[2]下\n[3]左"
        player_choice = gets.to_i
        puts "ほい"
        puts "あなた:#{hoi[player_choice]}, 相手:#{hoi[program_hoi]}"
        case_pattern = "パターンA"
        
    else
        puts "相手のターン"
         puts "あっちむいて"
        puts "[0]上\n[1]右\n[2]下\n[3]左"
        player_choice = gets.to_i
        puts "ほい"
        puts "あなた:#{hoi[player_choice]}, 相手:#{hoi[program_hoi]}"
        case_pattern = "パターンB"
    end
    
  case case_pattern
  
    when "パターンA"
        if player_choice == program_hoi
        puts "あなたの勝ちです"
        
    else (player_choice == 0 && program_hoi == 1)||(player_choice == 1 && program_hoi == 2)||(player_choice == 2 && program_hoi == 3)||(player_choice == 3 && program_hoi == 0)
        puts "じゃんけん..."
        return true
        
        end
        
    when "パターンB"
        if player_choice == program_hoi
        puts "あなたの負けです"
        
    else (player_choice == 0 && program_hoi == 1)||(player_choice == 1 && program_hoi == 2)||(player_choice == 2 && program_hoi == 3)||(player_choice == 3 && program_hoi == 0)
        puts "じゃんけん..."
        
        end
    end
end
next_game = true

while next_game
  next_game = janken
end