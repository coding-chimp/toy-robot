require_relative 'robot'

ALLOWED_COMMANDS = ['MOVE', 'LEFT', 'RIGHT', 'REPORT']
PLACE_COMMAND_REGEX = /PLACE ([0-5]),([0-5]),(EAST|WEST|NORTH|SOUTH)/

robot = Robot.new

while command = gets.chomp
  if matches = PLACE_COMMAND_REGEX.match(command)
    x = matches[1]
    y = matches[2]
    facing = matches[3]
    robot.place(x, y, facing)
    robot.placed_once = true
  end

  if ALLOWED_COMMANDS.include?(command) && robot.placed_once
    robot.send(command.downcase.to_sym)
  end
end
