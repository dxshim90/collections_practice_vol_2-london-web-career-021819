# your code goes here
def begins_with_r(array)
  array.all? { |word| word.start_with?("r") }
end

def contain_a(array)
return array.select { |word| word.include?("a") }
end 

def first_wa(array)
  newarr = []
  array.each { |word| 
  if word.to_s.start_with?("wa")
    newarr.push(word)
  end}
  newarr.first
end
 
def remove_non_strings(array)
  array.delete_if { |word| !(word.class == String) }
end

def count_elements(array)
array.uniq
.map { |x| {:name => x[:name], count: array.count(x)} }
end

def merge_data(keys, data)
hash = Hash.new
keys.each_with_index do |key, index|
  hash[key] = data[index]
end
hash
end


