# frozen_string_literal: true

require 'active_record'
require 'active_record/persistence'
require_relative 'update_attributes/version'

module UpdateAttributes
  class Error < StandardError; end

  ActiveRecord::Persistence.class_eval do
    def update_attributes(*args)
      update(*args)
    end

    def update_attributes!(*args)
      update!(*args)
    end
  end

end
