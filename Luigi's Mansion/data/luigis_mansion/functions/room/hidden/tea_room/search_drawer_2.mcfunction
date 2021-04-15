execute unless score #tea_room_drawer_2 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #tea_room_drawer_2 Searched matches 1 run tag @e[type=minecraft:area_effect_cloud,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=money] run function luigis_mansion:room/hidden/tea_room/drawer_2
execute unless entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=!nothing] positioned 659 111 55 run function luigis_mansion:blocks/dust
scoreboard players set #tea_room_drawer_2 Searched 1
data merge block 657 111 55 {LootTable:"luigis_mansion:search"}
data merge block 658 111 55 {LootTable:"luigis_mansion:search"}
data merge block 660 111 55 {LootTable:"luigis_mansion:search"}
data merge block 661 111 55 {LootTable:"luigis_mansion:search"}
tag @e[x=659.5,y=111,z=55.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=659.5,y=111,z=-39.5,distance=..0.7,tag=ghost_marker] add spawn
teleport @e[x=659.5,y=111,z=55.5,distance=..0.7,tag=spawn] 659 111 54