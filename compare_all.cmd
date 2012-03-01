ruby compare.rb model_text.txt ./"exp1 - as is"/total.txt > 1.txt
ruby compare.rb model_text.txt ./"exp2 - trained"/total-trained.txt > 2.txt
ruby compare.rb model_text.txt ./"exp3 - scaled"/total-scaled.txt > 3.txt
ruby compare.rb model_text.txt ./"exp4 - resized"/total-resized.txt > 4.txt

