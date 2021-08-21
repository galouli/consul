class Admin::Budgets::DraftingComponent < ApplicationComponent
  delegate :can?, to: :controller
  attr_reader :budget

  def initialize(budget)
    @budget = budget
  end

  def render?
    can?(:publish, budget)
  end

  private

    def action(action_name, **options)
      render Admin::ActionComponent.new(action_name, budget, **options)
    end
end
