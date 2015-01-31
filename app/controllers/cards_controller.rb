class CardController < ApplicationController
  attr_accessor :id, :card

  def initialize(card)
    @card = card
    @id = card.id
  end
end
