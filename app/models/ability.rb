class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, Category
    can :read, Expense

    return unless user.present? # additional permissions for logged in users (they can read their own posts)

    can %i[read update create destroy], Category, user_id: user.id
    can %i[read update create destroy], Expense, user_id: user.id

    return unless user.admin? # additional permissions for administrators

    can :manage, :all
  end
end
