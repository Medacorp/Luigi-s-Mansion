execute unless score #pipe_room_bucket Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #pipe_room_bucket Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #pipe_room_bucket Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #pipe_room_bucket Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #pipe_room_bucket Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #pipe_room_bucket Searched matches 1 run tag @e[type=minecraft:area_effect_cloud,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=money] run function luigis_mansion:room/normal/pipe_room/bucket
execute unless entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=!nothing] positioned 697 93 -13 run function luigis_mansion:blocks/dust
scoreboard players set #pipe_room_bucket Searched 1
data merge block 697 93 -13 {LootTable:"luigis_mansion:search"}
setblock 697 93 -13 minecraft:hopper[enabled=false]
tag @e[x=697.5,y=93,z=-12.5,distance=..0.7,tag=ghost_marker] add spawn
tag @e[x=697.5,y=93,z=-12.5,distance=..0.7,tag=hidden_boo] add spawn