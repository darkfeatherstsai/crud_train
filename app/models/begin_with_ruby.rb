class BeginWithRubyValidtor < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value.starts_with? 'Ruby'
      record.errors[attribute] << "必須是Ruby開頭"
    end
  end
end
