class PhonemesController < ApplicationController
  def index
    phonemes = Phoneme.all 
    render json: phonemes
  end
end
