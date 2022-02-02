execute unless score #ceramics_studio_jar_3 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #ceramics_studio_jar_3 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #ceramics_studio_jar_3 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #ceramics_studio_jar_3 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","small_heart"],Duration:1}
execute unless score #ceramics_studio_jar_3 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #ceramics_studio_jar_3 Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=small_heart] positioned 702 29 70 run function luigis_mansion:spawn_entities/item/room_search/small_heart
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 701 29 70 run function luigis_mansion:blocks/dust
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #ceramics_studio_jar_3 Searched 1
data merge block 701 29 70 {LootTable:"luigis_mansion:search"}
setblock 701 29 70 minecraft:hopper[enabled=false]
tag @e[x=701.5,y=29,z=70.5,distance=..0.7,tag=ghost,tag=hidden] add spawn