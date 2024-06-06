class GameController < ApplicationController
  def initialize
    @random_move = ["rock","paper","scissors"].sample
    super
  end
  def home
    render({:template => "game_templates/home"})
  end 
  def play_rock
    if @random_move == "rock"
      @outcome = "tied"
    elsif @random_move == "paper"
      @outcome = "lost"
    else
      @outcome = "won"
    end
    render({:template => "game_templates/play_rock"})
  end
  def play_paper
    if @random_move == "paper"
      @outcome = "tied"
    elsif @random_move == "scissors"
      @outcome = "lost"
    else
      @outcome = "won"
    end
    render({:template => "game_templates/play_paper"})
  end

  def play_scissors
    if @random_move == "scissors"
      @outcome = "tied"
    elsif @random_move == "rock"
      @outcome = "lost"
    else
      @outcome = "won"
    end
    render({:template => "game_templates/play_scissors"})
  end
end
