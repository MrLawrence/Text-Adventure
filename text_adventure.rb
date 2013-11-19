require_relative 'node'

Node.new(nil, :root) do |root|
  Node.new(root, :living_room) do |living_room|
    Node.new(living_room, :cat) do |cat|
      Node.new(cat, :dead_mouse)
    end

    Node.new(living_room, :remote_control) do |remote_control|
      Node.new(remote_control, :dead_batteries)
    end

    Node.new(living_room, :player) do |player|
      Node.new(player, :ham_sandwich)
    end
  end

  Node.new(root, :kitchen) do |kitchen|
    Node.new(kitchen, :drawer) do |drawer|
      Node.new(drawer, :new_batteries)
    end
  end

  Node.new(root, :hall)
end