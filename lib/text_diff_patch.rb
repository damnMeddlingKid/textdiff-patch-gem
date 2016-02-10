module TextDiffPatch
  def TextDiffPatch.patch(old, delta)
    result = ''
    index = 0

    delta.each do |item|
      operation = item[0]
      value = item[1]
      case operation
      when -1
        index += value
      when 0
        result.concat old[index, index += value]
      when 1
        result.concat value
      end
    end

    result
  end
end
