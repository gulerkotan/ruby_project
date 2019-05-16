class OnTaraf::AnasayfaController < ApplicationController
  def index
      @paylasimlar = Paylasim.all
  end
end
