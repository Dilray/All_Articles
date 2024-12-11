class TopicsController < ApplicationController
  before_action :set_topic, only: [:edit, :update, :destroy]

  def create
    @topic = Topic.new(topic_params)
    if @topic.save
      redirect_to articles_path, notice: 'Тема успешно создана.'
    else
      render :new # Или другой метод, который соответствует вашему представлению
    end
  end

  def new
    @topic = Topic.new
  end

  def edit
    # Здесь можно добавить код для редактирования темы
  end

  def update
    if @topic.update(topic_params)
      redirect_to articles_path, notice: 'Тема успешно обновлена.'
    else
      render :edit
    end
  end

  def destroy
    @topic.destroy
    redirect_to articles_path, notice: 'Тема успешно удалена.'
  end

  private

  def set_topic
    @topic = Topic.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to articles_path, alert: 'Тема не найдена.'
  end

  def topic_params
    params.require(:topic).permit(:name)
  end
end
