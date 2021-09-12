class AnswerValidator
  QUEST_IDS = %w(instruction cbd456b8f38004a8 081c07e4438bace1 f87f2b2b1222f818 a9491f0d95dca96c 5eaf308ea58d7f50 result_675b289348d8ccfb)

  class NotCorrectQuestIDError < StandardError; end

  delegate :url_helpers, to: 'Rails.application.routes'

  def initialize(params)
    @params = params
  end

  def validate_answer
    validate_quest_ids!
    send("quest_#{@params[:quest_id]}")
  rescue NotCorrectQuestIDError
    false
  end

  private

  def quest_instruction
    if formatted_answer == 'lullaby'
      [true, url_helpers.quest_validator_path(quest_id: 'cbd456b8f38004a8')]
    else
      [false]
    end
  end

  def quest_cbd456b8f38004a8
    if ['вибір', 'выбор'].include? formatted_answer
      [true, url_helpers.quest_validator_path(quest_id: '081c07e4438bace1')]
    else
      [false]
    end
  end

  def quest_081c07e4438bace1
    if ['казка', 'казки', 'сказка', 'сказки'].include? formatted_answer
      [true, url_helpers.quest_validator_path(quest_id: 'f87f2b2b1222f818')]
    else
      [false]
    end
  end

  def quest_f87f2b2b1222f818
    if ['135653'].include? formatted_answer
      [true, url_helpers.quest_validator_path(quest_id: 'a9491f0d95dca96c')]
    else
      [false]
    end
  end

  def quest_a9491f0d95dca96c
    if ['дитина', 'ребёнок', 'hебенок'].include? formatted_answer
      [true, url_helpers.quest_validator_path(quest_id: '5eaf308ea58d7f50')]
    else
      [false]
    end
  end

  def validate_quest_ids!
    raise(NotCorrectQuestIDError) unless QUEST_IDS.include?(@params[:quest_id])
  end

  def formatted_answer
    @params[:answer].to_s.strip.downcase
  end
end
