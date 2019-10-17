class Diamond

  def build(char)
    a = ('A'..char).to_a
    n = 0
    total = a.length
    triangle = ""
    while total > 1
      triangle << build_line(a[n], total, n)
      total -=1
      n +=1
    end
     if char == 'A'
       char + "\n"
     else

     end

  end


  def build_line(current_char, total, n)

     if n == 0 #A
      '_'*(total -1) + current_char  + '_'*(total -1) + "\n"
     else
      puts "aqui caiu no else "
    end
  end

end
