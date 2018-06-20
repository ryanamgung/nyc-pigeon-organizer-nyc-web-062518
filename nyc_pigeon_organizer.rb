def nyc_pigeon_organizer(data)

+  seven_pigeons.each do |name|
+    organized_hash[name] = {}
+  end
+  data.each do |attribute, details_hash|
+    organized_hash.each do |quality, data|
+      organized_hash[quality][attribute] = []
+    end
+  end
+  data.each do |attribute, details_hash|
+    organized_hash.each do |quality, data|
+      details_hash.each do |key, value|
+        if value.include? quality
+          organized_hash[quality][attribute] << key.to_s
+        end
+      end
+    end
+  end
+  organized_hash
new_hash = {}

all_names = data.map do |types, hash|
  hash.values
end
all_names = all_names.flatten.uniq

all_names.each do |name|

end



end