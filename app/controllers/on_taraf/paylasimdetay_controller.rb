class OnTaraf::PaylasimdetayController < ApplicationController
  def index
       if params[:id] 
         @paylasim = Paylasim.find(params[:id])
       end
  end
end
