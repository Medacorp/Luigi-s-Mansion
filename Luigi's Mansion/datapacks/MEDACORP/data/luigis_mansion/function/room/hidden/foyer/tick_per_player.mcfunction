function luigis_mansion:other/music/set/foyer
title @s[tag=!seen_room_name,tag=!fully_separated_camera] title {type:"translatable",translate:"luigis_mansion:location.foyer"}
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.foyer{seen:0b} if entity @s[tag=!spectator,tag=!fully_separated_camera] run function luigis_mansion:room/hidden/foyer/set_seen

execute unless entity @s[tag=!wall_warp,tag=!spectator] if entity @s[tag=!already_ticked] run function luigis_mansion:room/hidden/foyer/wall_warp

tag @s add already_ticked

function luigis_mansion:entities/player/run_command_as_model {command:'execute if entity @s[x=745.5,y=11,z=7.0,distance=..4] if data storage luigis_mansion:data current_state.current_data{obtained_keys:["hallway_3"]} run function luigis_mansion:room/hidden/foyer/clear_blockade'}

function luigis_mansion:entities/player/run_command_as_model {command:'execute if entity @s[x=751.0,y=11,z=7.0,distance=..3] unless entity @s[x=751.0,y=11,z=7.0,distance=..3,tag=chance_check] unless entity @a[x=751.0,y=11,z=7.0,distance=..3,tag=scanning,limit=1] unless entity @a[tag=warp,limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.nursery{cleared:0b} unless entity @e[scores={Room=1},tag=chandelier,type=minecraft:marker,limit=1] if predicate luigis_mansion:falling_chandelier_chance positioned 751.0 21 7.0 run function luigis_mansion:spawn_entities/falling_chandelier'}
function luigis_mansion:entities/player/run_command_as_model {command:'tag @s[x=751.0,y=11,z=7.0,distance=..3,tag=!chance_check] add chance_check'}
function luigis_mansion:entities/player/run_command_as_model {command:'tag @s[x=751.0,y=11,z=7.0,distance=4..5,tag=chance_check] remove chance_check'}

execute if entity @s[tag=first_entrance] run function luigis_mansion:room/hidden/foyer/first_entrance