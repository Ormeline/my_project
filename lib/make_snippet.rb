def make_snippet(string)
    arr = string.split(" ")
    remade_string = arr[0..4]
    return remade_string.join(" ")
end
