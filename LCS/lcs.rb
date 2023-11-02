# @param {String} text1
# @param {String} text2
# @return {Integer}
def longest_common_subsequence(text1, text2)
  # Creating an empty hash
  answer = {}
  size_text1, size_text2 = text1.length, text2.length

  # The loops go through all possible positions of characters in the strings.
  for i in 0..size_text1 - 1
    for j in 0..size_text2 - 1
      if text1[i] == text2[j]
        if i > 0 && j > 0
          answer["#{i},#{j}"] = (answer["#{i - 1},#{j - 1}"].to_i + 1)
        else
          answer["#{i},#{j}"] = 1
        end
      else
        answer["#{i},#{j}"] = [answer["#{i},#{j - 1}"].to_i, answer["#{i - 1},#{j}"].to_i].max
      end
    end
  end

  # Returns the result stored in the hash
  return answer["#{size_text1 - 1},#{size_text2 - 1}"].to_i
end
