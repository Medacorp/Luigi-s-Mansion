execute unless score #bathroom_2_mirror Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #bathroom_2_mirror Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #bathroom_2_mirror Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #bathroom_2_mirror Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","small_heart"],Duration:1}
execute unless score #bathroom_2_mirror Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #bathroom_2_mirror Searched matches 1 run tag @e[type=minecraft:area_effect_cloud,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=small_heart] positioned 656 112 -12 run function luigis_mansion:spawn_entities/item/small_heart
execute unless entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=!nothing] positioned 656.0 112 -12 run function luigis_mansion:blocks/dust
scoreboard players set #bathroom_2_mirror Searched 1
tag @e[x=656.5,y=111,z=-11.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=656.5,y=111,z=-11.5,distance=..0.7,tag=ghost_marker] add spawn