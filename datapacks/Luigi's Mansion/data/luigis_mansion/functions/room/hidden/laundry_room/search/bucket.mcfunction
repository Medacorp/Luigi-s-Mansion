execute unless score #laundry_room_bucket Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #laundry_room_bucket Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","poison_mushroom"],Duration:1}
execute unless score #laundry_room_bucket Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #laundry_room_bucket Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","small_heart"],Duration:1}
execute unless score #laundry_room_bucket Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #laundry_room_bucket Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=poison_mushroom] positioned 715 11 -46 run function luigis_mansion:spawn_entities/item/room_search/poison_mushroom
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=small_heart] positioned 715 11 -46 run function luigis_mansion:spawn_entities/item/room_search/small_heart
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=money] positioned 715 11 -46 run function luigis_mansion:room/hidden/laundry_room/bucket
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 714 11 -46 run function luigis_mansion:blocks/dust
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #laundry_room_bucket Searched 1
data merge block 714 11 -46 {LootTable:"luigis_mansion:search"}
setblock 714 11 -46 minecraft:hopper[enabled=false]
tag @e[x=714.5,y=11,z=-45.5,distance=..0.7,tag=ghost,tag=hidden] add spawn