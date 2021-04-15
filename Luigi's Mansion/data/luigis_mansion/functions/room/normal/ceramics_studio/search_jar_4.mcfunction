execute unless score #ceramics_studio_jar_4 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #ceramics_studio_jar_4 Searched matches 1 run tag @e[type=minecraft:area_effect_cloud,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=money] run function luigis_mansion:room/normal/ceramics_studio/jar_4
execute unless entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=!nothing] positioned 696 120 45 run function luigis_mansion:blocks/dust
scoreboard players set #ceramics_studio_jar_4 Searched 1
data merge block 696 120 45 {LootTable:"luigis_mansion:search"}
setblock 696 120 45 minecraft:hopper[enabled=false]
tag @e[x=696.5,y=120,z=45.5,distance=..0.7,tag=ghost_marker] add spawn
tag @e[x=696.5,y=120,z=45.5,distance=..0.7,tag=hidden_boo] add spawn