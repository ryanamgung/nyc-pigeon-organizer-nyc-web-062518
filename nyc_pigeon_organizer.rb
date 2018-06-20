def nyc_pigeon_organizer(data)
  # write your code here!
  new_hash = {}
  data[:gender].each do |gen, names|
    new_hash[names] => {}
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
end