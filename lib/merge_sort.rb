arr = [105, 79, 100, 110]

def merge(arr_a, arr_b)
  result = []
  until arr_a.empty? || arr_b.empty?
    if arr_a[0] > arr_b[0]
      result << arr_b[0]
      arr_b.shift
    else
      result << arr_a[0]
      arr_a.shift
    end
  end
  result << arr_a[0] if arr_b.empty?
  result << arr_b[0] if arr_a.empty?
  result
end

def merge_sort(array)
  return array if array.length < 2
  mid = (array.length / 2)
  merge(merge_sort(array[0...mid]), merge_sort(array[mid..])) 
end

p merge_sort(arr)