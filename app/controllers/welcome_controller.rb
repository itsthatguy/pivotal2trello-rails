class WelcomeController < ApplicationController
  include PivotalCardsHelper
  include TrelloCardsHelper
  # expose(:pivotal) do
  #   if pivotal
  #     pivotal
  #   else
  #     Pivotal.new
  #   end
  # end

  # expose(:project) do
  #   pivotal.project
  # end
  expose(:pivotal) { PivotalCardsHelper::Client.new(ENV["PIVOTAL_API_TOKEN"], ENV["PIVOTAL_PROJECT_ID"]) }
  expose(:trello) { TrelloCardsHelper::Client.new(ENV["TRELLO_DEVELOPER_PUBLIC_KEY"], ENV["TRELLO_MEMBER_TOKEN"]) }

  expose(:cards) do
    trello.board.cards
  end

  expose(:lists) do
    trello.board.lists
  end

  def index
  end
end
