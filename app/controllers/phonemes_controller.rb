class PhonemesController < ApplicationController
  def index
    phonemes = Phonemes.all 
    render json: phonemes
  end
end
