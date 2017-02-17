module ApplicationHelper
  def to_id(string)
    I18n.transliterate(string).gsub(' ', '-')
  end
end
