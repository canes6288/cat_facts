class FactsController < ApplicationController
  before_action :authenticate_user!, only: [:index, :create]

  def index
    @facts = Fact.get_cat_facts
  end

  def create
    fact = Fact.find_or_create_by(content: params[:content])
    fact.add_as_favorite(current_user)

    redirect_to root_path
  end
end
