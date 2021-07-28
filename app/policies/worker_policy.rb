class WorkerPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  # def new?
  #   true       #### NO NEED BECAUSE CREATE CALLS NEW
  # end

  def create?
    true
  end

  def show?
    true
  end

  # def edit?
  # user (pundit) => current_user (devise)
  # record (pundit) => @worker (argument passed to 'authorize' in Pundit)
  #   if user == record.user
  #     true
  #   else       #### NO NEED BECAUSE UPDATE CALLS EDIT
  #     false
  #   end
  # end

  def update?
    my_method_user_or_admin
  end

  def destroy?
    my_method_user_or_admin
  end

  private

  def my_method_user_or_admin
    user == record.user || user.admin
  end
end
