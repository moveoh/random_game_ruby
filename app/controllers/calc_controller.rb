
class CalcController < ApplicationController
  def index
    $first_num =(2..9).to_a.sample(1)
    $second_num =(2..9).to_a.sample(1)
  end

  def result
    @correct = $first_num[0]*$second_num[0]
    @res = params[:multnum]
    
    if @correct.to_i == @res.to_i then
      @message='정답입니다'
    else
      @message='바보?'
    end
  end
end
