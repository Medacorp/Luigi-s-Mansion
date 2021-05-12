execute unless score #ceramics_studio_jar_4 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #ceramics_studio_jar_4 Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=money] run function luigis_mansion:room/hidden/ceramics_studio/jar_4
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 710 29 -55 run function luigis_mansion:blocks/dust
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #ceramics_studio_jar_4 Searched 1
data merge block 710 29 -55 {LootTable:"luigis_mansion:search"}
setblock 710 29 -55 minecraft:hopper[enabled=false]
tag @e[x=710.5,y=29,z=-54.5,distance=..0.7,tag=ghost,tag=hidden] add spawn
tag @e[x=710.5,y=29,z=-54.5,distance=..0.7,tag=hidden_boo] add spawn