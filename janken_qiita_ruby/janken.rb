#class Janken_pointing

  puts "じゃんけん..."

  def janken
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"

    player_hand = gets.to_i
    program_hand = rand(3)

    jankens = ["グー", "チョキ","パー","戦わない"]
    puts "ホイ！"
    puts "-----------------"
    puts "あなたの手:#{jankens[player_hand]}\n相手の手:#{jankens[program_hand]}"
    puts "-----------------"

    if player_hand == program_hand
      puts "あいこで..."
      return true
      
    elsif(player_hand == 0 && program_hand == 1)||(player_hand == 1 && program_hand == 2)||(player_hand == 2 && program_hand == 0)
      #インスタンス変数をpointingメソッドと共有しています
      @win_or_lose = "win"
      #return false
      pointing
      
    elsif player_hand == 3
      puts "試合を棄権しました"
      exit

    else
      #インスタンス変数をpointingメソッドと共有しています
      @win_or_lose = "lose"
      #return false
      pointing
      
    end
  end


  #あっち向いてホイ！メソッド
  def pointing
    puts "あっち向いて〜"
    puts "0(上)1(下)2(左)3(右)"

    pointing_num = gets.to_i
    program_pointing = rand(4)

    pointing_op = ["上","下","左","右"]
    puts "ホイ！"
    puts "-----------------"
    puts "あなた:#{pointing_op[pointing_num]}\n相手:#{pointing_op[program_pointing]}"

    if (pointing_num == program_pointing) && (@win_or_lose == "win")#インスタンス変数をpointingメソッドと共有しています
      puts "勝者が決定しました。\n勝者はあなたです。"
      puts "-----------------"
      exit

    elsif (pointing_num == program_pointing) && (@win_or_lose == "lose")#インスタンス変数をpointingメソッドと共有しています
      puts "勝者が決定しました。\n勝者は相手です。"
      puts "-----------------"
      exit

    else
      puts "じゃんけん..."
      return true
    end
  end


  #あいこの場合じゃんけんを繰り返す処理
  next_game = true

  while next_game
    next_game = janken
  end


  #じゃんけんの勝敗がついた場合、あっち向いてホイに移行する
  #next_game_pointing = false

  #while next_game_pointing
    #next_game_pointing = pointing
  #end

#end

#start_janken = Janken_pointing.new