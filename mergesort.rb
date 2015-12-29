# Merge sort using recursion
def merge_sort(array)
  if array.length <= 1
    return array
  else
    a = merge_sort(array[0...array.length/2])
    b = merge_sort(array[array.length/2..-1])
    merge(a, b)
  end
end

# Merges two arrays. Arrays must be sorted before they are merged.
def merge(a, b)
  return a if b.empty?
  return b if a.empty?
  if a[0] < b[0]
    return [a[0]] + merge(a[1..-1], b)
  else
    return [b[0]] + merge(a, b[1..-1])
  end
end
