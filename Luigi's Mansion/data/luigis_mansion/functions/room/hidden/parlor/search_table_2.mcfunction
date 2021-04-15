execute unless score #parlor_table_2 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #parlor_table_2 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #parlor_table_2 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #parlor_table_2 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #parlor_table_2 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #parlor_table_2 Searched matches 1 run tag @e[type=minecraft:area_effect_cloud,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=money] run function luigis_mansion:room/hidden/parlor/table_2
execute unless entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=!nothing] positioned 684 111 8.0 run function luigis_mansion:blocks/dust
scoreboard players set #parlor_table_2 Searched 1
data merge block 684 111 8 {LootTable:"luigis_mansion:search"}
data merge block 684 111 7 {LootTable:"luigis_mansion:search"}
tag @e[x=684.5,y=111,z=7.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=684.5,y=111,z=7.5,distance=..0.7,tag=ghost_marker] add spawn