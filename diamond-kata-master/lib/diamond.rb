class Diamond

  def build(char)
    a = ('A'..char).to_a
    n = 0
    total = a.length
    triangle = ""
    while total > 1
      triangle << build_line(a[n], total, n) + "\n"
      total -=1
      n +=1
    end
     if char == 'A'
       char + "\n"
     else
      triangle + build_line(a[n], total, n) + triangle.reverse! + "\n"
     end
  end

  def build_line(current_char, total, n)
    u = '_'*(total -1)
    result = u + current_char
    if n == 0
      result + u
    else
      result + "_"*(n*2 - 1) + result.reverse
    end
  end

end
