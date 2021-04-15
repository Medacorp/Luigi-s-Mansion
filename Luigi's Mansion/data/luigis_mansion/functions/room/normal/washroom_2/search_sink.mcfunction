execute unless score #washroom_2_sink Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #washroom_2_sink Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #washroom_2_sink Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #washroom_2_sink Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","small_heart"],Duration:1}
execute unless score #washroom_2_sink Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #washroom_2_sink Searched matches 1 run tag @e[type=minecraft:area_effect_cloud,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=small_heart] positioned 666 112 30 run function luigis_mansion:spawn_entities/item/small_heart
execute unless entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=!nothing] positioned 666 111 30 run function luigis_mansion:blocks/dust
scoreboard players set #washroom_2_sink Searched 1
data merge block 666 111 30 {LootTable:"luigis_mansion:search"}
tag @e[x=666.5,y=111,z=30.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=666.5,y=111,z=30.5,distance=..0.7,tag=ghost_marker] add spawn