class LawsuitsController < ApplicationController
  def index
    @lawsuits = Lawsuit.all
  end
end
