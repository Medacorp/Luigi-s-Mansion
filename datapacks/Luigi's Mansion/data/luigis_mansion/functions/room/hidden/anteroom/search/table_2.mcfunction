execute unless score #anteroom_table_2 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #anteroom_table_2 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #anteroom_table_2 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #anteroom_table_2 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #anteroom_table_2 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #anteroom_table_2 Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=money] positioned 685 22 -17.0 run function luigis_mansion:room/hidden/anteroom/table_2
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 685 21 -17.0 run function luigis_mansion:blocks/dust
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #anteroom_table_2 Searched 1
data merge block 685 21 -17 {LootTable:"luigis_mansion:search"}
data merge block 685 21 -18 {LootTable:"luigis_mansion:search"}
tag @e[x=685.5,y=21,z=-16.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] add spawn
tag @e[x=685.5,y=21,z=-16.5,distance=..0.7,tag=ghost,tag=hidden] add spawn