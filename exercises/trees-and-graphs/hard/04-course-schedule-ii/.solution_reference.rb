# frozen_string_literal: true

# @param [Integer] num_courses
# @param [Array<Array<Integer>>] prerequisites
# @return [Array<Integer>]
def find_order(num_courses, prerequisites)
  adj = Array.new(num_courses) { [] }
  indegree = Array.new(num_courses, 0)

  prerequisites.each do |course, prereq|
    adj[prereq] << course
    indegree[course] += 1
  end

  queue = (0...num_courses).select { |i| indegree[i].zero? }
  order = []

  until queue.empty?
    node = queue.shift
    order << node

    adj[node].each do |neighbor|
      indegree[neighbor] -= 1
      queue << neighbor if indegree[neighbor].zero?
    end
  end

  order.length == num_courses ? order : []
end
