class FactsController < ApplicationController
  before_action :authenticate_user!, only: [:index]

  def index
    @facts = Fact.get_cat_facts
  end
end
