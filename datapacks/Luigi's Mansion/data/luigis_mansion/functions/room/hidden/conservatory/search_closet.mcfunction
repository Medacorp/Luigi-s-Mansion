execute unless score #conservatory_closet Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #conservatory_closet Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","poison_mushroom"],Duration:1}
execute unless score #conservatory_closet Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #conservatory_closet Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","small_heart"],Duration:1}
execute unless score #conservatory_closet Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #conservatory_closet Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=poison_mushroom] positioned 655 12 41 run function luigis_mansion:spawn_entities/item/poison_mushroom
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=small_heart] positioned 655 12 41 run function luigis_mansion:spawn_entities/item/small_heart
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=money] positioned 655 12 41 run function luigis_mansion:room/hidden/conservatory/closet
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 654 12 42.0 run function luigis_mansion:blocks/dust
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #conservatory_closet Searched 1
data merge block 654 12 41 {LootTable:"luigis_mansion:search"}
data merge block 654 12 42 {LootTable:"luigis_mansion:search"}
tag @e[x=654.5,y=12,z=41.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] add spawn
tag @e[x=654.5,y=12,z=41.5,distance=..0.7,tag=ghost,tag=hidden] add spawn