class VocabulariesController < ApplicationController
  def index
    @vocabulary = Vocabulary.new
    @vocabularies = Vocabulary.order("id DESC")
  end

  def create
    @vocabulary = Vocabulary.new(vocabulary_params)
    if @vocabulary.save
      redirect_to root_path
    end
  end

  private
  def vocabulary_params
    params.require(:vocabulary).permit(:word, :meaning, :level).merge(user_id: current_user.id)
  end
end
