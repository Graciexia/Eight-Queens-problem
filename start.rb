
def show(cols, rows, queens)
  rows.each do |row|
    cols.each do |col|
      found_queen = false
      queens.each do |queen|
        if queen[0] == col && queen[1] == row
          found_queen = true
        end
      end
      print ( found_queen ? ' Q' : ' .' )
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

def move_queens? (num, rows, queens)
  return false if num < 0
  queen = queens[num]
  queen[1] += 1
  if queen[1] > rows.max
    queen[1] = 0
    return move_queens?(num-1, rows, queens)
  end
  return true
end

def find_solution? (cols, rows, queens)
  while ! solution?(queens)
    if ! move_queens?(cols.max, rows, queens)
      return false
    end
  end
  return true
end

cols = 0..8
rows = 0..8

queens = []
cols.each do |col|
  first_row = [col,0]
  queens.push(first_row)
end

count = 0
while find_solution?(cols, rows, queens)
  show(cols, rows, queens)
  print "\n"
  count += 1
  if ! move_queens?(cols.max, rows, queens)
    break
  end
end
print "I found #{count} solutions! :-)"

# print "Solution? #{solution?(queens)}\n"
