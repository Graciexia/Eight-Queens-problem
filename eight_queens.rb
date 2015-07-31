# previous version


COL = 0
ROW = 1

def show_queens(queens)
  (0..7).each do |row|
    (0..7).each do |col|
      if queens.include? ([col,row])
        print ' Q'
      else
        print ' .'
      end
    end
    print "\n"
  end
  print "\n"
end


def in_line?(queens)
  (0..6).each do |i|
    ((i+1)..7).each do |j|
      print "Compare queen #{i} to queen #{j}\n"
    end
  end
  return false
end

queens = []
(0..7).each do |i|
  queens[i] = [i,i]
end

show_queens(queens)


print "Are any queens on the same line? "
print in_line?(queens)
print "\n"



