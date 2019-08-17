require pry 

def nyc_pigeon_organizer(data)
  new_pigeon_list = {}
  
  data.each do |descriptor, attribute_hash|
    attribute_hash.each do |attribute, name_array|
      name_array.each do |name|
        
      new_pigeon_list[name] = {:color => [], :gender => [], :lives => []} 
      end
    end
  end
  
  data[:color].each do |color, name_array|
    name_array.each do |name|
      if data[:color][attribute].include?(name)
        new_pigeon_list[name][:color] << attribute.to_s 
      end
    end
  end
  
  data[:gender].each do |gender, name_array|
    name_array.each do |name|
      if data[:gender][attribute].include?(name)
        new_pigeon_list[name][:gender] << attribute.to_s 
      end
    end
  end
  
    data[:lives].each do |location, name_array|
    name_array.each do |name|
      if data[:lives][attribute].include?(name)
        new_pigeon_list[name][:lives] << attribute.to_s 
      end
    end
  end
end

new_pigeon_list