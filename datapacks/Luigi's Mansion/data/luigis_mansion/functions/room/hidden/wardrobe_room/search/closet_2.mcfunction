execute unless score #wardrobe_room_closet_2 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #wardrobe_room_closet_2 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","poison_mushroom"],Duration:1}
execute unless score #wardrobe_room_closet_2 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #wardrobe_room_closet_2 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","small_heart"],Duration:1}
execute unless score #wardrobe_room_closet_2 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #wardrobe_room_closet_2 Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=poison_mushroom] positioned 680 21 -50.0 run function luigis_mansion:spawn_entities/item/room_search/poison_mushroom
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=small_heart] positioned 680 21 -50.0 run function luigis_mansion:spawn_entities/item/room_search/small_heart
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=money] positioned 680 21 -50.0 run function luigis_mansion:room/hidden/wardrobe_room/closet_2
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 679 21 -50.0 run function luigis_mansion:blocks/dust
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 675 21 -50.0 run function luigis_mansion:blocks/dust_no_sound
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #wardrobe_room_closet_2 Searched 1
data merge block 679 21 -51 {LootTable:"luigis_mansion:search"}
data merge block 679 21 -50 {LootTable:"luigis_mansion:search"}
tag @e[x=679.5,y=21,z=-49.5,distance=..0.7,tag=ghost,tag=hidden] add spawn