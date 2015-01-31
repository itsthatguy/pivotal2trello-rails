module PivotalCardsHelper
  class Client

    def initialize(token, project_id)
      ::PivotalTracker::Client.token = token
      @project = ::PivotalTracker::Project.find(project_id)

    end

    def project
      @project
    end

    def cards(options = {})
      @cards = @project.stories.all(options)
    end

    def find_with_id(id)
      @cards ||= cards
      @cards.find { |card| card.id.to_s == id.to_s }
    end

    def find_with_state(state)
      @cards ||= cards
      @cards.select { |card| card.current_state == state }
    end
  end
end
