class VocabulariesController < ApplicationController
  def index
    @vocabularies = Vocabulary.order("id DESC")
    @vocabulary = Vocabulary.new
  end
end
