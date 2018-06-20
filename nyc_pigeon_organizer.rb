def nyc_pigeon_organizer(data)

+  data.each do |attribute, details_hash|
+    organized_hash.each do |quality, data|
+      details_hash.each do |key, value|
+        if value.include? quality
+          organized_hash[quality][attribute] << key.to_s
+        end
+      end
+    end
+  end
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

  




end