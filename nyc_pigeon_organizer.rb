
def nyc_pigeon_organizer(data)
  new_pigeon_list = {}
  
  data.each do |descriptor, attribute_hash|
    attribute_hash.each do |attribute, name_array|
      name_array.each do |name|
        
      new_pigeon_list[name] = {:color => [], :gender => [], :lives => []} 
  
  
    
end
