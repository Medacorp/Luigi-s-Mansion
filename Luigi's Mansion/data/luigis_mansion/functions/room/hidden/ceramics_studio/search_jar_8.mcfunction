execute unless score #ceramics_studio_jar_8 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #ceramics_studio_jar_8 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","poison_mushroom"],Duration:1}
execute unless score #ceramics_studio_jar_8 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #ceramics_studio_jar_8 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #ceramics_studio_jar_8 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #ceramics_studio_jar_8 Searched matches 1 run tag @e[type=minecraft:area_effect_cloud,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=poison_mushroom] positioned 696 120 -24 run function luigis_mansion:spawn_entities/item/poison_mushroom
execute if entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=money] run function luigis_mansion:room/hidden/ceramics_studio/jar_8
execute unless entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=!nothing] positioned 697 120 -24 run function luigis_mansion:blocks/dust
scoreboard players set #ceramics_studio_jar_8 Searched 1
data merge block 697 120 -24 {LootTable:"luigis_mansion:search"}
setblock 697 120 -24 minecraft:hopper[enabled=false]
tag @e[x=697.5,y=120,z=-23.5,distance=..0.7,tag=ghost_marker] add spawn
tag @e[x=697.5,y=120,z=-23.5,distance=..0.7,tag=hidden_boo] add spawn