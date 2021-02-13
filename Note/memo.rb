require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.to_i

if memo_type == 1
    
    puts "拡張子を除いたファイル名を入力して下さい"
    file_name = gets
    puts "メモしたい内容を入力して下さい"
    puts "完了したらCTRL＋Dを入力して下さい"
    
    CSV.open("#{file_name}.csv", "w") do |test|
        while line = gets
            test << ["#{line.chomp}",""]
        end
    end

elsif memo_type == 2
    
    puts "拡張子を除いたファイル名を入力して下さい"
    file_name = gets
    puts "編集したい内容を追記してください"
    puts "完了したらCTRL＋Dを入力して下さい"
    
    CSV.open("#{file_name}.csv", "a") do |test|
        while line = gets
            test << ["#{line.chomp}",""]
        end
    end
else
    puts "1か2を入力してください"
end