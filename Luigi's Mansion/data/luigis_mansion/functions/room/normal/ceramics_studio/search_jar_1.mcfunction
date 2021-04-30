execute unless score #ceramics_studio_jar_1 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #ceramics_studio_jar_1 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","poison_mushroom"],Duration:1}
execute unless score #ceramics_studio_jar_1 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #ceramics_studio_jar_1 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #ceramics_studio_jar_1 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #ceramics_studio_jar_1 Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=poison_mushroom] positioned 704 29 73 run function luigis_mansion:spawn_entities/item/poison_mushroom
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=money] run function luigis_mansion:room/normal/ceramics_studio/jar_1
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] 703 29 73 run function luigis_mansion:blocks/dust
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #ceramics_studio_jar_1 Searched 1
data merge block 703 29 73 {LootTable:"luigis_mansion:search"}
setblock 703 29 73 minecraft:hopper[enabled=false]
tag @e[x=703.5,y=29,z=73.5,distance=..0.7,tag=ghost_marker] add spawn
tag @e[x=730.5,y=29,z=73.5,distance=..0.7,tag=hidden_boo] add spawn