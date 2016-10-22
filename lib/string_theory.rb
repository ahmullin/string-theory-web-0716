def sort_by_appearance(characters_to_sort, long_text)
  result = {}
  characters_to_sort.split("").each do |char|
    counter = 0
    long_text.split("").each do |letter|
      if char == letter
        counter += 1
      end
    end
    result[char] = counter
  end
    result = result.sort_by {|k,v| v}.reverse.to_h
    result.keys.join("")
end
