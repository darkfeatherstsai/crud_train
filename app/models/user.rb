class User < ApplicationRecord
  has_one :store

  validate :name, presence: true, begin_with_ruby: true
end
