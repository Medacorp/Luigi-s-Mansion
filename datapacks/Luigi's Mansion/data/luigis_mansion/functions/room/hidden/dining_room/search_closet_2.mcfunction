execute unless score #dining_room_closet_2 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #dining_room_closet_2 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","poison_mushroom"],Duration:1}
execute unless score #dining_room_closet_2 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #dining_room_closet_2 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #dining_room_closet_2 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #dining_room_closet_2 Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=poison_mushroom] positioned 700 12 -19 run function luigis_mansion:spawn_entities/item/poison_mushroom
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=money] positioned 700 12 -19 run function luigis_mansion:room/hidden/dining_room/closet_2
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 699 12 -19 run function luigis_mansion:blocks/dust
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #dining_room_closet_2 Searched 1
data merge block 699 12 -20 {LootTable:"luigis_mansion:search"}
data merge block 699 12 -18 {LootTable:"luigis_mansion:search"}
tag @e[x=699.5,y=11,z=-18.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] add spawn
tag @e[x=699.5,y=11,z=-18.5,distance=..0.7,tag=ghost,tag=hidden] add spawn