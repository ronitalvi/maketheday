class PaymentPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  def create?
    true
  end

  def show?
    true
  end

  def set_order?
    true
  end

end
