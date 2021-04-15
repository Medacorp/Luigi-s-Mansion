execute unless score #ceramics_studio_jar_5 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #ceramics_studio_jar_5 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #ceramics_studio_jar_5 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #ceramics_studio_jar_5 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #ceramics_studio_jar_5 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #ceramics_studio_jar_5 Searched matches 1 run tag @e[type=minecraft:area_effect_cloud,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=money] run function luigis_mansion:room/hidden/ceramics_studio/jar_5
execute unless entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=!nothing] positioned 687 120 -27 run function luigis_mansion:blocks/dust
scoreboard players set #ceramics_studio_jar_5 Searched 1
data merge block 687 120 -27 {LootTable:"luigis_mansion:search"}
setblock 687 120 -27 minecraft:hopper[enabled=false]
tag @e[x=687.5,y=120,z=-26.5,distance=..0.7,tag=ghost_marker] add spawn
tag @e[x=687.5,y=120,z=-26.5,distance=..0.7,tag=hidden_boo] add spawn