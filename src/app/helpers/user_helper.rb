module UserHelper
  def format_name(user)
    case user.gender
    when 1
      "Mr. #{user.first_name} #{user.last_name}"
    when 0
      "Ms. #{user.first_name} #{user.last_name}"
    else
      "#{user.first_name} #{user.last_name}"
    end
  end

  def format_height(user)
    return unless user.height.present?

    "#{user.height} cm"
  end

  def format_weight(user)
    return unless user.weight.present?

    "#{user.weight} kg"
  end

  def format_gender(user)
    return unless user.gender.present?

    GENDER_OPTIONS[user.gender]
  end
end
