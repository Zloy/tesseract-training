#!/usr/bin/env ruby
#
# Сравнивает два файла. dвыводит второй файл с отличающимися строками, выделенными звездочкой 


model = File.open(ARGV.shift).readlines
file  = File.open(ARGV.shift).readlines

puts file.each_with_index.map{|l,i| l == model[i] ? l.strip : "#{l.strip}<b>*</b>"}.join("\n")


