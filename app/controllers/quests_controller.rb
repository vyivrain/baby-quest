class QuestsController < ApplicationController
  def answer
    answer_result, url = AnswerValidator.new(quest_params).validate_answer
    render json: { answerResult: answer_result, url: url }
  end

  private

  def quest_params
    params.permit(:quest_id, :answer)
  end
end
