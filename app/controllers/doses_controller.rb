class DosesController < ApplicationController
  def new
    @doses = Dose.all
  end
end
