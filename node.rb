require 'ostruct'

class Node < OpenStruct
  DEFAULTS = {
      :root => {:open => true},
      :room => {:open => true},
      :item => {:open => false},
      :player => {:open => true}
  }

  def initialize(parent, tag)
    super()

    @parent = parent
    @tag = tag
    @children = []
    @parent.children << self unless parent.nil?

    yield(self) if block_given?
  end
end