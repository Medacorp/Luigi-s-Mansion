execute unless score #kitchen_closet Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #kitchen_closet Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #kitchen_closet Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #kitchen_closet Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","small_heart"],Duration:1}
execute unless score #kitchen_closet Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #kitchen_closet Searched matches 1 run tag @e[type=minecraft:area_effect_cloud,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=money] run function luigis_mansion:room/hidden/kitchen/closet
execute unless entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=!nothing] positioned 687 103 -15 run function luigis_mansion:blocks/dust
scoreboard players set #kitchen_closet Searched 1
data merge block 687 103 -16 {LootTable:"luigis_mansion:search"}
data merge block 687 103 -14 {LootTable:"luigis_mansion:search"}
tag @e[x=687.5,y=102,z=-14.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=687.5,y=102,z=-14.5,distance=..0.7,tag=ghost_marker] add spawn