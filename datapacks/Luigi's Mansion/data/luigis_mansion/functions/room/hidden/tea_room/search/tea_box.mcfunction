execute unless score #tea_room_tea_box Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #tea_room_tea_box Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #tea_room_tea_box Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #tea_room_tea_box Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","small_heart"],Duration:1}
execute unless score #tea_room_tea_box Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #tea_room_tea_box Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=small_heart] positioned 643 22 67 run function luigis_mansion:spawn_entities/item/room_search/small_heart
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 643 21 67 run function luigis_mansion:blocks/dust
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #tea_room_tea_box Searched 1
data merge block 643 21 67 {LootTable:"luigis_mansion:search"}
tag @e[x=643.5,y=21,z=67.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] add spawn
tag @e[x=643.5,y=21,z=67.5,distance=..0.7,tag=ghost,tag=hidden] add spawn