require 'minitest/autorun'
require 'minitest/pride'
require_relative 'magic_ball'

class MagicBallTest < Minitest::Test
  def test_magic_ball_class_exists
    magic_ball = MagicBall.new
    assert magic_ball.ask("How am I doing?") != nil
  end

  def test_possible_answer_array
    assert_kind_of Array, MagicBall::ANSWERS
  end

  def test_answer_array_is_not_empty
    refute_empty MagicBall::ANSWERS
  end

  def test_question_is_not_a_number
    assert_raises "Question has invalid format." do
      magic_ball = MagicBall.new
      magic_ball.ask(1)
    end
  end
end