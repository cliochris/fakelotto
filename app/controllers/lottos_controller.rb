class LottosController < ApplicationController
  SEED = 543200
  PICK = 6
  OUT_OF = 49
  def index
    numbers = []
    PICK.times.each do
      numbers << generator.rand(OUT_OF)
    end
    render text: numbers.join("\n") + "\n"
  end

  private def generator
    @@generator ||= Random.new(SEED)
  end
end
