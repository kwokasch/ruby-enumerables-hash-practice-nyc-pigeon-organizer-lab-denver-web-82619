def nyc_pigeon_organizer(data)
  new_pigeon_list = {}
  
  data.each do |descriptor, attribute_hash| 
    #=> in the passed in hash, grab the keys ("descriptor") and the values (hashes) associated with those keys
    
    attribute_hash.each do |attribute, name_array|
       #=> within the hashes associated with the "descriptor" keys, grab the keys ("attribute") and the array of names associated with those keys'
       
      name_array.each do |name|
      #=> within the name array, grab each name
      
      new_pigeon_list["#{name}"] = {:color => [], :gender => [], :lives => []} 
      #=> for each name in the array, add that name to the new has as a key, and pair it with a hash --> within this hash, create the keys ":color", ":gender", ":lives" and pair those keys with new arrays
      
      end
    end
  end
     
  data[:color].each do |attribute, name_array|
    #=> in the passed in "data" hash, look at the :color key and its associated hash --> within that hash, grab the "attribute" key (i.e. "purple") and its associated name array 
    
    name_array.each do |name|
      #=> within the name array, grab each name
      
      if data[:color][attribute].include?(name)
        #=> if the attribute (i.e. purple) associated with the :color key within the data has includes a specific pigeon name in the name array
        
        new_pigeon_list["#{name}"][:color] << attribute.to_s 
        #=> add that attribute (i.e. purple) as a string to the :color key of that pigeon's name within the new hash ("new_pigeon_list")
        
      end
    end
  end
  
  data[:gender].each do |attribute, name_array|
    name_array.each do |name|
      if data[:gender][attribute].include?(name)
        new_pigeon_list["#{name}"][:gender] << attribute.to_s 
      end
    end
  end
  
  data[:lives].each do |attribute, name_array|
    name_array.each do |name|
      if data[:lives][attribute].include?(name)
        new_pigeon_list["#{name}"][:lives] << attribute.to_s 
      end
    end
  end
  new_pigeon_list   #=> return new hash 
end