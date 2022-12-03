module ApplicationHelper
  def strongify(day)
    result_day = %w[jour day].map do |key|
      I18n.with_locale(:en) { I18n.t("#{key}.#{day.downcase}") }
    end
    result_day.include?(Date.today.strftime('%A'))    # ? "<strong>#{day}</strong>" : day
  end

  def display_hours_of_each_shop(range)
    range['start_at'] == '0' || range['end_at'] == '0' ? 'Closed' : "#{l(range['start_at'].to_time)} - #{l(range['end_at'].to_time)}"
  end

  def bold_class_current_day_hours(day)
    strongify(day) ? 'bold-day' : ''
  end
end
