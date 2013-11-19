require_relative 'node'

Node.new(nil, :root) do |root|
  Node.new(root, :living_room) do |living_room|
    Node.new(lr, :cat) do |cat|
      Node.new(cat, :dead_mouse)
    end

    Node.new(lr, :remote_control) do |remote_control|
      Node.new(rem, :dead_batteries)
    end

    Node.new(lr, :player) do |player|
      Node.new(pl, :ham_sandwich)
    end
  end

  Node.new(root, :kitchen) do |kitchen|
    Node.new(kit, :drawer) do |drawer|
      Node.new(dr, :new_batteries)
    end
  end

  Node.new(root, :hall)
end