execute unless score #butlers_room_closet Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #butlers_room_closet Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","poison_mushroom"],Duration:1}
execute unless score #butlers_room_closet Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #butlers_room_closet Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","small_heart"],Duration:1}
execute unless score #butlers_room_closet Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #butlers_room_closet Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=poison_mushroom] positioned 740 12 -51 run function luigis_mansion:spawn_entities/item/poison_mushroom
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=small_heart] positioned 740 12 -51 run function luigis_mansion:spawn_entities/item/small_heart
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=money] positioned 740 12 -51 run function luigis_mansion:room/hidden/butlers_room/closet
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 739 12 -51 run function luigis_mansion:blocks/dust
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #butlers_room_closet Searched 1
data merge block 739 11 -52 {LootTable:"luigis_mansion:search"}
data merge block 739 14 -52 {LootTable:"luigis_mansion:search"}
data merge block 739 11 -50 {LootTable:"luigis_mansion:search"}
data merge block 739 14 -50 {LootTable:"luigis_mansion:search"}
tag @e[x=739.5,y=11,z=-50.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=739.5,y=11,z=-50.5,distance=..0.7,tag=ghost,tag=hidden] add spawn