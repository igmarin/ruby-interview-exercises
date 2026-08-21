# frozen_string_literal: true

# @param [Array<Array<String>>] grid
# @return [Integer]
def num_islands(grid)
  return 0 if grid.nil? || grid.empty?

  rows = grid.length
  cols = grid[0].length
  count = 0

  (0...rows).each do |r|
    (0...cols).each do |c|
      next unless grid[r][c] == '1'

      count += 1
      mark(grid, r, c)
    end
  end

  count
end

def mark(grid, row, col)
  return if row < 0 || row >= grid.length || col < 0 || col >= grid[0].length
  return unless grid[row][col] == '1'

  grid[row][col] = '0'
  mark(grid, row + 1, col)
  mark(grid, row - 1, col)
  mark(grid, row, col + 1)
  mark(grid, row, col - 1)
end
