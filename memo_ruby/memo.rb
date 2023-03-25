require "csv" # CSVファイルを扱うためのライブラリを読み込んでいます
 
 puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する。"
 
 memo_type = gets.to_i # ユーザーの入力値を取得し、数字へ変換しています
 
 # if文を使用して続きを作成していきましょう。
 # 「memo_type」の値（1 or 2）によって処理を分岐させていきましょう。
if memo_type == 1
    puts "拡張子を除いたファイルを入力してください。"

#ファイル名を受け取ります。
    file_name = gets.chomp
    
#格納したメモに内容を書き込みます。
    puts "メモしたい内容を記入してください。完了したらCtrl + Dを押します。"
    file_memo = $stdin.read

#ファイル名とメモ内容を保存し、メモ内容を格納します。
    CSV.open("#{file_name}.csv" , "w") do |csv|
    csv.puts ["#{file_memo}"]
    end

#格納されたメモを編集する場合
elsif memo_type == 2
    puts "編集したいメモの拡張子を除いたファイルを入力してください。"
        
#追記したいメモを読み込みます。
    file_name = gets.chomp
    

#追記したい内容を受け取ります。
    puts "追記したい内容を記入してください。完了したらCtrl + Dを押します。"
    file_memo = $stdin.read
    

    CSV.open("#{file_name}.csv","a") do |csv|
    csv.puts ["#{file_memo}"]
    end

#１と２以外が入力された場合
else
    puts "1もしくは2を選択してください。"

end