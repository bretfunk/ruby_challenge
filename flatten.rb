def flatten(array, results=[])
  array.each do |element|
    if element.class == Array
      flatten(element, results)
    else
      results << element
    end
  end
  results
end

print flatten([[1,2,[3]],4])
print flatten([[[1],2,[3]],4])
print flatten([[1,[2,[3]]],4])
