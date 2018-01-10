   class Flatten
     
   def flatten_array(array, results=[])
     array.each do |element|
       if element.class == Array
         flatten_array(element, results)
       else
         results << element
       end
     end
     results
   end
     
 end
