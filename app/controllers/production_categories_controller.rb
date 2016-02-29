# Production categories controller
class ProductionCategoriesController < ApplicationController
  before_action :fetch_production_category, only: %i(update destroy)

  def index
    @production_categories = ProductionCategory.all
  end

  def create
    @production_category = ProductionCategory.create production_category_params

    if @production_category.save
      redirect_to production_categories_path, flash: {
        success: 'Категория была успешно создана!'
      }
    else
      redirect_to production_categories_path, flash: {
        error: @production_category.errors.full_messages.join(', ')
      }
    end
  end

  def update
    if @production_category.update_attributes production_category_params
      redirect_to production_categories_path, flash: {
        success: 'Категория была успешно обновлена!'
      }
    else
      redirect_to production_categories_path, flash: {
        error: @production_category.errors.full_messages.join(', ')
      }
    end
  end

  def destroy
    redirect_to production_categories_path, flash: {
      success: 'Категория была успешно удалена!'
    }
  end

  private

  def production_category_params
    params.require(:production_category).permit :name, :context, :description
  end

  def fetch_production_category
    @production_category = ProductionCategory.find params[:id]
  end
end
