class BeginWithRubyValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value.starts_with? 'Ruby'
      record.errors[attribute] << "必須是 Ruby 開頭喔!"
    end
  end
end


class User < ApplicationRecord
  has_one :store
  validates :name, begin_with_ruby: true
end
