module ApplicationHelper
  def markdown(text)
    raw BlueCloth.new(text).to_html
  end

  def user_is_committee
    user_signed_in? and current_user.is_committee
  end
  
  def next_workshop_section(current_section)
    if current_section.order_number == WorkshopSection.all.count
      'Next'
    else
      link_to 'Next >>', WorkshopSection.where(
        :order_number => current_section.order_number + 1).first
    end
  end
  
  def previous_workshop_section(current_section)
    if current_section.order_number == 1
      'Previous'
    else
      link_to '<< Previous', WorkshopSection.where(
        :order_number => current_section.order_number - 1).first
    end
  end
  
  def index_workshop_section(current_section)
    link_to 'Index', (workshop_sections_path + "?page=#{current_section.order_number / 4 + 1}")
  end
  
  def previous_index_next(current_section)
    raw (previous_workshop_section(current_section) + ' | ' +
      index_workshop_section(current_section) + ' | ' +
      next_workshop_section(current_section))
  end
end
