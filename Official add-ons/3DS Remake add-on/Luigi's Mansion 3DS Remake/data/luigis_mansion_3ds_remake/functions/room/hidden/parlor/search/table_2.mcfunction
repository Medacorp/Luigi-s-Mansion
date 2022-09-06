execute unless score #parlor_table_2 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #parlor_table_2 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #parlor_table_2 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #parlor_table_2 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #parlor_table_2 Searched matches 1 unless entity @a[tag=meet_e_gadd,limit=1] run summon minecraft:marker ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #parlor_table_2 Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=money] positioned 715 20 28.0 run function luigis_mansion_3ds_remake:room/hidden/parlor/table_2
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 714 20 28.0 run function luigis_mansion:blocks/dust
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #parlor_table_2 Searched 1
tag @e[x=714.5,y=20,z=27.5,distance=..0.7,tag=ghost,tag=hidden] add spawn