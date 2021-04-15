execute unless score #butlers_room_bucket Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #butlers_room_bucket Searched matches 1 run tag @e[type=minecraft:area_effect_cloud,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=money] run function luigis_mansion:room/normal/butlers_room/bucket
execute unless entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=!nothing] positioned 749 11 71 run function luigis_mansion:blocks/dust
scoreboard players set #butlers_room_bucket Searched 1
data merge block 749 11 71 {LootTable:"luigis_mansion:search"}
setblock 749 11 71 minecraft:hopper[enabled=false]
tag @e[x=749.5,y=11,z=71.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=749.5,y=11,z=71.5,distance=..0.7,tag=ghost_marker] add spawn