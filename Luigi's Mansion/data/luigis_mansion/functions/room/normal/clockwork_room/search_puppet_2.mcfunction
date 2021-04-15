execute unless score #clockwork_room_puppet_2 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #clockwork_room_puppet_2 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #clockwork_room_puppet_2 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #clockwork_room_puppet_2 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","small_heart"],Duration:1}
execute unless score #clockwork_room_puppet_2 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #clockwork_room_puppet_2 Searched matches 1 run tag @e[type=minecraft:area_effect_cloud,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=small_heart] positioned 689 123 -6 run function luigis_mansion:spawn_entities/item/small_heart
execute unless entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=!nothing] positioned 689.0 122 -7.0 run function luigis_mansion:blocks/dust
scoreboard players set #clockwork_room_puppet_2 Searched 1
tag @e[x=688.5,y=122,z=-6.5,distance=..0.7,tag=ghost_marker] add spawn
tag @e[x=688.5,y=122,z=-6.5,distance=..0.7,tag=hidden_boo] add spawn