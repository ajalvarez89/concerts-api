# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    send("#{user.rol.name}_permissions", user)
  end

  def registered_permissions(user)
    can :manage, :all
  end

  def unregistered_permissions(user)
    can :read, Concert, :all
  end

  def list_permissions
    rules.map do |rule|
      object = { actions: rule.actions, about: rule.subjects.map{ |s| s.is_a?(Symbol) ? s : s.name } }
      object[:conditions] = rule.conditions unless rule.conditions.blank?
      object[:inverted] = true unless rule.base_behavior
      object
    end
  end
end
