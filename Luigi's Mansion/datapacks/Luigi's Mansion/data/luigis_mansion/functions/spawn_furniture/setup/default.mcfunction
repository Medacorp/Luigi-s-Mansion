scoreboard players reset #candle_flames Selected
execute if data storage luigis_mansion:data furniture.candle_flames[0] if score #debug_messages Selected matches 1.. run tellraw @a {"translate":"luigis_mansion:message.debug.format","with":[{"translate":"luigis_mansion:message.debug","color":"gold"},{"translate":"luigis_mansion:message.debug.candle_flame.too_many","color":"red"}]}
# Display and sound
function luigis_mansion:spawn_furniture/setup/pose
function luigis_mansion:spawn_furniture/setup/search_animations
function luigis_mansion:spawn_furniture/setup/sound

# Search details
function luigis_mansion:spawn_furniture/setup/searchable_by
function luigis_mansion:spawn_furniture/setup/searched_status
function luigis_mansion:spawn_furniture/setup/must_face_to_search
function luigis_mansion:spawn_furniture/setup/cannot_search_when_open

# Search result
function luigis_mansion:spawn_furniture/setup/no_dust_on_search
function luigis_mansion:spawn_furniture/setup/loot
function luigis_mansion:spawn_furniture/setup/dialog
function luigis_mansion:spawn_furniture/setup/boo_can_hide_in
function luigis_mansion:spawn_furniture/setup/scan_message

# Other
function luigis_mansion:spawn_furniture/setup/tags

# If it never can be affected by anything, it never animates, and as such its reflection doesn't need updates
function luigis_mansion:spawn_furniture/setup/static