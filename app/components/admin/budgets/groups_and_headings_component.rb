class Admin::Budgets::GroupsAndHeadingsComponent < ApplicationComponent
  attr_reader :budget

  def initialize(budget)
    @budget = budget
  end

  private

    def action(*args)
      render Admin::ActionComponent.new(*args)
    end
end
