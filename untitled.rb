Dir.chdir '/Users/adamstelle/Pictures/2010/August-December'
pic_names = Dir['/Volumes/NO NAME/dcim/100Media/*.{JPG,jpg}']

puts 'Please enter the desired batch (group) name - i.e. "Spring 2011"'
batch_name = gets.chomp #here they are naming the batch of pictures

puts 
print 'Downloading ' +pic_names.length.to_s+' files: '

pic_number = 1

pic_names.each do |name|
  print ' .' #progress bar
  
  new_name = if pic_number < 10
    batch_name + '0' + pic_number.to_s + '.jpg'
  else
    batch_name    +    pic_number.to_s + '.jpg'
  end
  
  File.rename name, new_name
  
  pic_number = pic_number + 1
end

#Just a test edit

puts 'Done!'
