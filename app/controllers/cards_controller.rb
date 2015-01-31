class CardsController < ApplicationController
  # before_action :authenticate_user!

  include PivotalCardsHelper
  include TrelloCardsHelper

  expose(:pivotal) { PivotalCardsHelper::Client.new(ENV["PIVOTAL_API_TOKEN"], ENV["PIVOTAL_PROJECT_ID"]) }
  expose(:trello) { TrelloCardsHelper::Client.new(ENV["TRELLO_DEVELOPER_PUBLIC_KEY"], ENV["TRELLO_MEMBER_TOKEN"]) }

  expose(:pivotal_cards) do
    pivotal.cards
  end

  expose(:trello_cards) do
    trello.board.cards
  end

  expose(:pivotal_states) do
     pivotal_cards.map { |card| card.current_state }.uniq
  end

  def index
  end
end
