def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |property, hash|
    hash.each do |attribute, array|
      array.each do |name|
        if !new_hash.has_key?(name)
          new_hash[name] = {}
        end

        if !new_name[name].has_key?(property)
          new_hash[name][property] = []
        end

        if !new_name[name][property].include?(attribute)
          new_hash[name][property] << attribute.to_s
        end
      end
    end
  end
  return new_hash
  # write your code here!
end
