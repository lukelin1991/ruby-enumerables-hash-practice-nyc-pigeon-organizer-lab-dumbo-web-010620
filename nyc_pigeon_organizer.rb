require 'pry'

def nyc_pigeon_organizer(data)
  new_hash = {}
  binding.pry
  data.each do |property, hash| # property: color, gender, lives. #hash: hash
    hash.each do |attribute, array| #attribute: purple, male etc. etc....
      array.each do |name| #name: idx inside array.
        if new_hash.has_key?(name) #does hash have name yet?

          if new_hash[name].has_key?(property) # if so, does name have name properties? (color/gender/lives)
            new_hash[name][property] << attribute.to_s
          else
            new_hash[name][property] = [attribute.to_s]
          end
        else
          new_hash[name] = {hash => [attribute.to_s]}
        end
      end
    end
  end
  return new_hash
  # write your code here!
end
