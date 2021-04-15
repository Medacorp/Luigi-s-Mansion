execute unless score #astral_hall_table_1 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #astral_hall_table_1 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #astral_hall_table_1 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #astral_hall_table_1 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #astral_hall_table_1 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #astral_hall_table_1 Searched matches 1 run tag @e[type=minecraft:area_effect_cloud,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=money] run function luigis_mansion:room/hidden/astral_hall/table_1
execute unless entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=!nothing] positioned 673 111 28 run function luigis_mansion:blocks/dust
scoreboard players set #astral_hall_table_1 Searched 1
data merge block 673 111 28 {LootTable:"luigis_mansion:search"}
tag @e[x=673.5,y=111,z=28.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=673.5,y=111,z=28.5,distance=..0.7,tag=ghost_marker] add spawn