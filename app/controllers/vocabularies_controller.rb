class VocabulariesController < ApplicationController
  def index
    @vocabulary = Vocabulary.new
    @vocabularies = Vocabulary.all.order("created_at DESC")
    @paginatable_array = Kaminari.paginate_array(@vocabularies).page(params[:page]).per(10)

    @q = Vocabulary.ransack(params[:q])
    @vocabularies = @q.result
  end

  def create
    @vocabulary = Vocabulary.new(vocabulary_params)
    if @vocabulary.save
      redirect_to root_path
    end
  end

  def destroy
    @vocabulary = Vocabulary.find(params[:id])
    if @vocabulary.destroy
      redirect_to root_path
    end
  end

  def edit
    @vocabulary = Vocabulary.find(params[:id])
  end

  def update
    vocabulary = Vocabulary.find(params[:id])
    if vocabulary.update(vocabulary_params)
      redirect_to root_path
    else
      render edit
    end
  end

  private
  def vocabulary_params
    params.require(:vocabulary).permit(:word, :meaning, :level).merge(user_id: current_user.id)
  end
end
