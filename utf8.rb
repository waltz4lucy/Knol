Dir['*.smi2'].each do |f|
  t = "#{f.gsub('smi2', 'smi')}"
  puts %Q[mv "#{f}" "#{t}"]
end
__END__
Dir['*.smi'].each do |f|
  t = "#{f}2"
  puts %Q[echo "<SAMI>" > "#{t}"]
  puts %Q[echo "<BODY>" >> "#{t}"]
  puts %Q[iconv -f cp949 -t utf-8 "#{f}" >> "#{t}"]
end
