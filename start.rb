cols = 0..7
rows = 0..7

queens = []

cols.each do |col|
  first_row = [col,0]
  queens.push(first_row)
end


def show(cols, rows, queens)
  rows.each do |row|
    cols.each do |col|
      found_queen = false
      queens.each do |queen|
        if queen[0] == col && queen[1] == row
          found_queen = true
        end
      end
      print ( found_queen ? ' Q' : ' x' )
    end
    print "\n"
  end
  print "\n"
end

def solution? (queens)
  queens.each_with_index do |queen_start, i|
    queens.each_with_index do |queen_compare, j|
      if j > i
        if queen_start[0] == queen_compare[0] ||
           queen_start[1] == queen_compare[1] ||
           (queen_start[0] - queen_compare[0]).abs == (queen_start[1] - queen_compare[1]).abs
          return false
        end
      end
    end
  end
  return true
end

def find_solution(queens)
  queens.each do |queen|
    cols.each do |col|
      rows.each do |row|
        queen = [col,row]
      end
    end
  end
end

show(cols, rows, queens)
print "Solution? #{solution?(queens)}\n"
