execute unless score #parlor_table_4 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #parlor_table_4 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #parlor_table_4 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #parlor_table_4 Searched matches 1 unless entity @a[tag=meet_e_gadd,limit=1] run summon minecraft:marker ~ ~ ~ {Tags:["chance","small_heart"],Duration:1}
execute unless score #parlor_table_4 Searched matches 1 unless entity @a[tag=meet_e_gadd,limit=1] run summon minecraft:marker ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #parlor_table_4 Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=small_heart] positioned 727 22 19 run function luigis_mansion:spawn_entities/item/small_heart
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=money] positioned 727 22 19 run function luigis_mansion:room/normal/parlor/table_4
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 727 21 19 run function luigis_mansion:blocks/dust
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #parlor_table_4 Searched 1
data merge block 727 21 19 {LootTable:"luigis_mansion:search"}
tag @e[x=727.5,y=21,z=19.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] add spawn
tag @e[x=727.5,y=21,z=19.5,distance=..0.7,tag=ghost,tag=hidden] add spawn