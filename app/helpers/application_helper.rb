module ApplicationHelper

  def bootstrap_class_for flash_type
    { success: "alert-success my-3", error: "alert-danger my-3", alert: "alert-warning my-3", notice: "alert-info my-3" }.stringify_keys[flash_type.to_s] || flash_type.to_s
  end

  def flash_messages(opts = {})
    flash.each do |msg_type, message|
      concat(content_tag(:div, message, class: "alert #{bootstrap_class_for(msg_type)}", role: "alert") do 
              concat content_tag(:button, 'x', class: "close", data: { dismiss: 'alert' })
              concat message 
            end)
    end
    nil
  end

  def subjects_helper
    [
      ['Maths'],
      ['English'],
      ['Science'],
      ['Geography'],
      ['Computers']
    ]
  end

  def grades_helper
    [
      ['Primary School'],
      ['High School']
    ]
  end

  def resource_helper
    [
      ['PDF'],
      ['Doc']
    ]
  end

end
