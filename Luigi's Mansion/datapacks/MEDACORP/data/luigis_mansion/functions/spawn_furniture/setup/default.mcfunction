scoreboard players reset #candle_flames Selected
execute if data storage luigis_mansion:data furniture.candle_flames_edit[0] if entity @e[tag=this_entity,tag=candelabra,limit=1] if score #debug_messages Selected matches 1.. run tellraw @a {"translate":"luigis_mansion:message.debug.format","with":[{"translate":"luigis_mansion:message.debug","color":"gold"},{"translate":"luigis_mansion:message.debug.candle_flame.too_many","color":"red"}]}
data remove storage luigis_mansion:data furniture.candle_flames_edit
# Display and sound
execute if entity @e[tag=this_entity,tag=!candelabra,type=minecraft:armor_stand,limit=1] run function luigis_mansion:spawn_furniture/setup/pose
function luigis_mansion:spawn_furniture/setup/search_animations
function luigis_mansion:spawn_furniture/setup/sound

# Search details
function luigis_mansion:spawn_furniture/setup/overwrite_type
function luigis_mansion:spawn_furniture/setup/searchable_by
function luigis_mansion:spawn_furniture/setup/searched_status
function luigis_mansion:spawn_furniture/setup/must_face_to_search

# Search result
function luigis_mansion:spawn_furniture/setup/no_dust_on_search
function luigis_mansion:spawn_furniture/setup/loot
function luigis_mansion:spawn_furniture/setup/dialog
function luigis_mansion:spawn_furniture/setup/boo_can_hide_in
function luigis_mansion:spawn_furniture/setup/scan_message

# Other
execute if entity @e[tag=this_entity,tag=can_be_fire_elemental_source,limit=1] run function luigis_mansion:spawn_furniture/setup/fire_elemental_source
execute if entity @e[tag=this_entity,tag=can_be_water_elemental_source,limit=1] run function luigis_mansion:spawn_furniture/setup/water_elemental_source
execute if entity @e[tag=this_entity,tag=can_be_ice_elemental_source,limit=1] run function luigis_mansion:spawn_furniture/setup/ice_elemental_source
execute if entity @e[tag=this_entity,tag=!lamp,scores={FurnitureLightStrength=0..15},limit=1] run function luigis_mansion:spawn_furniture/setup/ambient_light
execute if entity @e[tag=this_entity,tag=mirror,limit=1] run function luigis_mansion:spawn_furniture/setup/mirror_reflection
execute if entity @e[tag=this_entity,tag=room_clear_chest,limit=1] run function luigis_mansion:spawn_furniture/setup/room_clear_chest_spawn_sound
function luigis_mansion:spawn_furniture/setup/tags
function luigis_mansion:spawn_furniture/setup/position
function luigis_mansion:spawn_furniture/setup/debug_spawn

# If it never can be affected by anything, it never animates, and as such its reflection doesn't need updates
function luigis_mansion:spawn_furniture/setup/static