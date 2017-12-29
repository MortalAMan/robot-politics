class Api::PartiesController < ApplicationController
  skip_before_action :authenticate_user!, raise: false
  before_action :set_party, only: [:show, :update, :destroy]
  
  def index
    render json: Party.order(:score)
  end

  def show
    render json: @party
  end

  def create
    party = Party.new(party_params)
    if party.save
      render json: party
    else
      render_errors(party)
    end
  end

  def update
    if @party.update(party_params)
      render json: @party
    else
      render_errors(@party)
    end
  end

  def destroy
    @party.destroy
  end
  
  private
    def set_party 
      @party = Party.find(params[:id])
    end
  
    def party_params
      params.require(:party).permit(:name, :score, :logo)
    end
end
