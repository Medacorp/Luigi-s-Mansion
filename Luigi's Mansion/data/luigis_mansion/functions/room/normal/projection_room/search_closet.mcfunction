execute unless score #projection_room_closet Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #projection_room_closet Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","poison_mushroom"],Duration:1}
execute unless score #projection_room_closet Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #projection_room_closet Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #projection_room_closet Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #projection_room_closet Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=poison_mushroom] positioned 684.0 11.3 33 run function luigis_mansion:spawn_entities/item/poison_mushroom
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=money] run function luigis_mansion:room/normal/projection_room/closet
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 684.0 11 32 run function luigis_mansion:blocks/dust
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #projection_room_closet Searched 1
data merge block 684 11 32 {LootTable:"luigis_mansion:search"}
data merge block 683 11 32 {LootTable:"luigis_mansion:search"}
tag @e[x=684.5,y=11,z=32.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=684.5,y=11,z=32.5,distance=..0.7,tag=ghost_marker] add spawn
teleport @e[x=684.5,y=11,z=32.5,distance=..0.7,tag=spawn] 684.0 11 32