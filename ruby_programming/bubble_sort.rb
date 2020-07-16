def bubble_sort(values)
  return values unless values.length > 1

  values.length.times do
    values.each_with_index do |value, index|
      unless index == values.length - 1
        if values[index] > values[index + 1]
          values[index], values[index + 1] = values[index + 1], values[index]
        end
      end
    end
  end

  values
end

bubble_sort([4,3,78,2,0,2])
