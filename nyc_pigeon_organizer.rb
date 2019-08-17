
def nyc_pigeon_organizer(data)
  pigeon_list = {}
  
  data.each do |descriptor|
    descriptor.each do |specific_descriptor|
      pigeon_name = specific_descriptor.values.first 
      
      pigeon_list["#{pigeon_name}"] = {:color => pigeon_data[:color] => specific_descriptor
    
end
