game = $('#game')
board = $('#board')

status_indicatiors = $('#teams li')  # status bar container
tiles = []                           # all the tiles
# think about ways to make tiles smarter aka whos on it...good for the algorithm
players = [                          # player data
  {
    name: 'Ernie',
    marker: '&times;',
    img_url: 'img/ernie.jpg',
    indicator: $(status_indicators[0])
  }
  {
    name: 'Bert'
    marker: '&oslash;'
    img_url: 'img/bert.jpg'
    indicator: $(stat_indicators[1])
  }
]
current player # this might be set elsewhere
turns = 0

win_combos = [                          # Set winning combos
  [0,1,2],[3,4,5],[6,7,8],
  [0,3,6],[1,4,7],[2,5,8],
  [0,4,8],[2,4,6]
]

initialize = ->
  # ready the board for game play

  # 1.) Create nine tiles. Each is a div, each needs to be bound to 'handle_click'.
  # Make sure giving each tile a unique 'id' for targeting. Find tile's 'class' in css.
  # Append tiles to board.

  # 2.) Make first player the current_player

  # 3.) Set up the players 'indicators' in UI
  # - set player image, name, marker
  # - set player name
  # - the 'current_player' has a different style (see css '.current')

  # 4.) fade in the game

handle_click = ->
  # this function is bound to a click event for each tile on the board
  # Needs to be scoped

is_win = ->
  # whether or not the current player's positions result in a win
  # returns boolean

is_tie = ->
  # has the game resulted in a tie?
  # returns boolean

new_game = ->
  # see http://stackoverflow.com/questions/2405117/difference-between-window-location-href-window-location-href-and-window-location
  # nothing to add here
  window.location.href = window.location.href

# is_active = (tile) ->
#   # boolean - is tile active?

# activate_tile = (tile) ->
#   # activate tile
#   # don't forget to up 'turn' count

# toggle_player = ->
#   # After each turn, toggle the current player and update player indicators

# handle_win = ->
#   # update the UI to reflect that a win has occurred.
#   # - show results panel
#   # - display winner name and image
#   # - congrats message
#   # - show new_game button

# handle_tie = ->
#   # update the UI to reflect that a tie game has occurred.
#   # - show results panel
#   # - display tie and rubber ducky image
#   # - show new_game button

# hide_indicators = ->
#   # optional: call this to hide the "status" container after detecting a win or a tie

# show_combo = ->
#   # optional: call this to highlight the combination of tiles that resulted in a win
#   # e.g. colors winning XXX or OOO red.

# initiatlize