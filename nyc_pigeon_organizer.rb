def nyc_pigeon_organizer(data)
  new_hash = {}
  
  all_names = data.map do |types, hash|
    hash.values
  end
  all_names = all_names.flatten.uniq
  
  all_names.each do |name|
    new_hash[name] = {}
  end
  
  data.each do |type, hash|
    new_hash.each do |name, info|
      new_hash[name][type] = []
    end
  end
  
  data.each do |type, hash|
    hash.each do |attribute, name|
      new_hash.each do |names, type|
        if name.include?(names)
          new_hash[names][type] << hash.to_s
        end
      end
    end
  end
  
  new_hash
end