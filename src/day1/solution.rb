require 'minitest/autorun'

require_relative '../../lib/solution_base'

module Day1
  class SolutionTest < Minitest::Test
    make_my_diffs_pretty!

    def setup
      @solution = Day1::Solution.new
    end

    def test_sample
      assert_output(/Loaded sample input:/) { @solution.sample }
    end

    def test_part_one
      assert_output(/Loaded actual input:/) { @solution.part_one }
    end

    def test_part_two
      skip 'Not implemented yet'
    end
  end

  class Solution < SolutionBase
    def sample
      puts 'Loaded sample input:'
      puts sample_input
      puts '---'
    end

    def part_one
      puts 'Loaded actual input:'
      puts actual_input
      puts '---'
    end

    def part_two
      raise NotImplementedError, 'Not implemented yet'
    end
  end
end
