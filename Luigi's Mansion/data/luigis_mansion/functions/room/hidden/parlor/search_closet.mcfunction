execute unless score #parlor_closet Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #parlor_closet Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","poison_mushroom"],Duration:1}
execute unless score #parlor_closet Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #parlor_closet Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #parlor_closet Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #parlor_closet Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=poison_mushroom] positioned 715 22 -19 run function luigis_mansion:spawn_entities/item/poison_mushroom
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=money] run function luigis_mansion:room/hidden/parlor/closet
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 714 21 -19 run function luigis_mansion:blocks/dust
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #parlor_closet Searched 1
data merge block 714 21 -20 {LootTable:"luigis_mansion:search"}
data merge block 714 21 -18 {LootTable:"luigis_mansion:search"}
tag @e[x=714.5,y=20,z=-18.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=714.5,y=20,z=-18.5,distance=..0.7,tag=ghost,tag=hidden] add spawn