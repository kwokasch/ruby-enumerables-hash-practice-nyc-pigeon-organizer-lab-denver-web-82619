require 'pry' 

def nyc_pigeon_organizer(data)
  new_pigeon_list = {}
  
  data.each do |descriptor, attribute_hash|
    attribute_hash.each do |attribute, name_array|
      pigeon_name = name_array.first
      name_array.each do |name|
      
      new_pigeon_list["#{pigeon_name}"] = {:color => [], :gender => [], :lives => []} 
      end
    end
  end
     
  data[:color].each do |attribute, name_array|
    name_array.each do |name|
      if data[:color][attribute].include?(name)
        new_pigeon_list["#{name}"][:color] << attribute.to_s 
      end
    end
  end
  
  data[:gender].each do |attribute, name_array|
    name_array.each do |name|
      if data[:gender][attribute].include?(pigeon_name)
        new_pigeon_list["#{pigeon_name}"][:gender] << attribute.to_s 
      end
    end
  end
  
  data[:lives].each do |attribute, name_array|
    name_array.each do |name|
      pigeon_name = name_array.first
      if data[:lives][attribute].include?(pigeon_name)
        new_pigeon_list["#{pigeon_name}"][:lives] << attribute.to_s 
      end
    end
  end
  new_pigeon_list
end

# nyc_pigeon_organizer(pigeon_data)