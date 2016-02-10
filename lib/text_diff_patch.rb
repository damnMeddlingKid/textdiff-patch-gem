module TextDiffPatch
	def TextDiffPatch.patch(old, delta)
    result = ''
    index = 0

    delta.each do |item|
      operation = item[0]
      value = item[1]

      case operation
      when -1
        index+=1
      when 0
        result += old[index,index+=value]
      when 1
        result += value
      end

    end

    result
	end
end
