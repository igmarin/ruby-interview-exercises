# frozen_string_literal: true

# @param [Integer] num_courses
# @param [Array<Array<Integer>>] prerequisites
# @return [Boolean]
def can_finish(num_courses, prerequisites)
  adj = Array.new(num_courses) { [] }
  indegree = Array.new(num_courses, 0)

  prerequisites.each do |course, prereq|
    adj[prereq] << course
    indegree[course] += 1
  end

  queue = (0...num_courses).select { |i| indegree[i].zero? }
  visited = 0

  until queue.empty?
    node = queue.shift
    visited += 1

    adj[node].each do |neighbor|
      indegree[neighbor] -= 1
      queue << neighbor if indegree[neighbor].zero?
    end
  end

  visited == num_courses
end
