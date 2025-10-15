execute if entity @s[tag=can_attack,tag=!frozen] unless entity @s[tag=dark_room,tag=!no_escape] if predicate luigis_mansion:boo/attack_chance run tag @s add attack

execute at @s[tag=!rotated,tag=!wall,tag=!flee,tag=dark_room] run function luigis_mansion:entities/boo/rotate_dark_room
execute at @s[tag=!rotated,tag=!wall,tag=!flee,tag=!dark_room] run function luigis_mansion:entities/boo/rotate
execute if entity @s[scores={Time=600..},tag=no_escape,tag=!flee] run function luigis_mansion:entities/boo/rotate_random
execute if score #temp Move matches 1.. at @s[tag=move_up] unless entity @s[tag=up,x_rotation=-90] run function luigis_mansion:entities/boo/move/up
execute if score #temp Move matches 1.. at @s[tag=!move_up] unless entity @s[tag=down,x_rotation=90] run function luigis_mansion:entities/boo/move/down
execute if score #temp Move matches 1.. at @s[tag=up,x_rotation=-90] run function luigis_mansion:entities/boo/move/forward
execute if score #temp Move matches 1.. at @s[tag=down,x_rotation=90] run function luigis_mansion:entities/boo/move/forward

function luigis_mansion:entities/boo/direction with entity @s data.mansion
execute if entity @s[tag=wall,tag=!warped] run function luigis_mansion:entities/boo/ai/try_warp
tag @s[tag=!up,tag=!down,tag=!north,tag=!south,tag=!east,tag=!west] add no_escape
tag @s[tag=no_escape] add can_attack


execute unless score #temp RoomSection = @s RoomSection run tag @s[scores={RoomSection=1..},tag=!appear] add new_section
scoreboard players add @s[tag=new_section,tag=!wall] BooTimer 1
execute if entity @s[scores={BooTimer=3},tag=!wall] run function luigis_mansion:entities/boo/ai/entered_new_section