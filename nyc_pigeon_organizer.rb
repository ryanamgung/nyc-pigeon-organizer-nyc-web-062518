def nyc_pigeon_organizer(data)
  # write your code here!
  new_hash = {}
  data[:gender].each do |gen, names|
    new_hash[names] = {}
  end
  
  data[:color].each do |hash|
    hash.each do |color, names|
      new_hash.each do |name, hash|
        if names == name
          new_hash[name][:color] = [color]
        end
      end
    end
  end
  
  data[:gender].each do |hash|
    hash.each do |gender, names|
      new_hash.each do |name, hash|
        if names == name
          new_hash[name][:gender] = [gender]
        end
      end
    end
  end
  
  data[:lives].each do |hash|
    hash.each do |location, names|
      new_hash.each do |name, hash|
        if names == name
          new_hash[name][:lives] = [location]
        end
      end
    end
  end
  
  new_hash
end