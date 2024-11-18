arr = [3, 2, 1, 13, 8, 5, 0, 1]

def merge(arr_a, arr_b)
  i = 0
  j = 0
  k = 0
  arr_c = []
  while i < arr_a.length && j < arr_b.length
    if arr_a[i] < arr_b[j]
      arr_c[k] = arr_a[i]
      i += 1
    else
      arr_c[k] = arr_b[j]
      j += 1
    end
    k += 1
  end
  arr_c[k] = arr_a[i] if i < arr_a.length
  arr_c[k] = arr_a[j] if j < arr_b.length
  arr_c
end

arr_a = [1, 3, 10, 20]
arr_b = [2, 6, 12, 15]
p merge(arr_a, arr_b)
