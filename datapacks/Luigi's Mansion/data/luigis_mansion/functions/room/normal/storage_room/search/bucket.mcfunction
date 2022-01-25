execute unless score #storage_room_bucket Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #storage_room_bucket Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","poison_mushroom"],Duration:1}
execute unless score #storage_room_bucket Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #storage_room_bucket Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","small_heart"],Duration:1}
execute unless score #storage_room_bucket Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #storage_room_bucket Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=poison_mushroom] positioned 681 12 -55 run function luigis_mansion:spawn_entities/item/room_search/poison_mushroom
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=small_heart] positioned 681 12 -55 run function luigis_mansion:spawn_entities/item/room_search/small_heart
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=money] positioned 681 12 -55 run function luigis_mansion:room/normal/storage_room/bucket
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 681 11 -55 run function luigis_mansion:blocks/dust
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #storage_room_bucket Searched 1
data merge block 681 11 -55 {LootTable:"luigis_mansion:search"}
setblock 681 11 -55 minecraft:hopper[enabled=false]
tag @e[x=681.5,y=11,z=-54.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] add spawn
tag @e[x=681.5,y=11,z=-54.5,distance=..0.7,tag=ghost,tag=hidden] add spawn