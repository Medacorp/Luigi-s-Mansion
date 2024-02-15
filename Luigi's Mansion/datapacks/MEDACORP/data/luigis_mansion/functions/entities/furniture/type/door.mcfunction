execute if entity @s[tag=in_water,tag=burning] run function luigis_mansion:entities/furniture/type/door/extinguish with entity @s ArmorItems[3].tag
execute if entity @s[tag=burning] run function luigis_mansion:entities/furniture/type/door/burn
execute if entity @s[tag=try_open,tag=!open_door,tag=!bash_door,tag=!unlock_door] run function luigis_mansion:entities/furniture/type/door/use
tag @s remove try_open

fill ^ ^ ^-0.5 ^ ^1 ^-0.5 minecraft:light_gray_stained_glass replace minecraft:air
execute if entity @s[tag=!open_door,tag=!bash_door,tag=!unlock_door,tag=!barricade] unless entity @s[tag=!in_vacuum,tag=!was_shaking] run function luigis_mansion:entities/furniture/type/door/shake
execute unless entity @s[tag=!open_door,tag=!forced_animation] run function luigis_mansion:entities/furniture/type/door/open_door
execute if entity @s[tag=bash_door] run function luigis_mansion:entities/furniture/type/door/bash_door
execute if entity @s[tag=unlock_door] run function luigis_mansion:entities/furniture/type/door/unlock_door

execute unless entity @s[tag=!remove_from_existence,tag=!dead] run setblock ^ ^ ^0.5 minecraft:air

execute if entity @s[tag=blockade_sounds_can_play,tag=blockade,tag=!had_blockade] as @a[tag=same_room,tag=looking_at_map] at @s run function luigis_mansion:selection_menu/game_boy_horror/map/exit
execute if entity @s[tag=blockade_sounds_can_play,tag=blockade,tag=!had_blockade] as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/scare/normal
execute if entity @s[tag=blockade_sounds_can_play,tag=blockade,tag=!had_blockade] run playsound luigis_mansion:furniture.blockade.spawn block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=blockade_sounds_can_play,tag=!blockade,tag=!area_blockade,tag=had_blockade] run playsound luigis_mansion:furniture.blockade.disappear block @a[tag=same_room] ~ ~ ~ 1
tag @s remove had_blockade
tag @s[tag=blockade] add had_blockade
tag @s[tag=area_blockade] add had_blockade
tag @s add blockade_sounds_can_play

data modify storage luigis_mansion:data macro set value {name:"door",passive:{namespace:"luigis_mansion",id:"furniture/door"}}
execute store result storage luigis_mansion:data macro.id int 1 run scoreboard players get @s PassiveNr
function luigis_mansion:animations/passive with storage luigis_mansion:data macro