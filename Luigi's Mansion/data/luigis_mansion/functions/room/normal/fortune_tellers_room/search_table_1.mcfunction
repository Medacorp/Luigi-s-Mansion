execute unless score #fortune_tellers_room_table_1 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #fortune_tellers_room_table_1 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #fortune_tellers_room_table_1 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #fortune_tellers_room_table_1 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #fortune_tellers_room_table_1 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #fortune_tellers_room_table_1 Searched matches 1 run tag @e[type=minecraft:area_effect_cloud,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=money] run function luigis_mansion:room/normal/fortune_tellers_room/table_1
execute unless entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=!nothing] positioned 736 11 -21.0 run function luigis_mansion:blocks/dust
scoreboard players set #fortune_tellers_room_table_1 Searched 1
data merge block 736 11 -22 {LootTable:"luigis_mansion:search"}
data merge block 736 11 -21 {LootTable:"luigis_mansion:search"}
tag @e[x=736.5,y=11,z=-21.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=736.5,y=11,z=-21.5,distance=..0.7,tag=ghost_marker] add spawn