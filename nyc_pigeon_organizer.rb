+data.each_with_object({}) do |(key, hash), pigeon_list|
-end 	+  hash.each do |attribute, pigeon_array|
+    pigeon_array.each do |pigeon|
+      pigeon_list[pigeon] ||= {}
+      pigeon_list[pigeon][key] ||= []
+      pigeon_list[pigeon][key] << attribute.to_s
+      #binding.pry
+    end
+
+  end
+
+end

def nyc_pigeon_organizer(data)
  # write your code here!
  data[:gender].each do |color|
end