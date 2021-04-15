execute unless score #telephone_room_chest_3 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #telephone_room_chest_3 Searched matches 1 run tag @e[type=minecraft:area_effect_cloud,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=money] run function luigis_mansion:room/normal/telephone_room/chest_3
execute unless entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=!nothing] positioned 716.0 120 -6 run function luigis_mansion:blocks/dust
scoreboard players set #telephone_room_chest_3 Searched 1
data merge block 715 120 -6 {LootTable:"luigis_mansion:search"}
data merge block 716 120 -6 {LootTable:"luigis_mansion:search"}
tag @e[x=715.5,y=120,z=-5.5,distance=..0.7,tag=ghost_marker] add spawn
tag @e[x=715.5,y=120,z=-5.5,distance=..0.7,tag=hidden_boo] add spawn