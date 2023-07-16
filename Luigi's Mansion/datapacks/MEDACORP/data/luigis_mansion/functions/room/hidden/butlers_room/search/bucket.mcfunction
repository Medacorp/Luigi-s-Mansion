execute unless score #butlers_room_bucket Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #butlers_room_bucket Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=money] positioned 749 12 -56 run function luigis_mansion:room/hidden/butlers_room/bucket
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 749 11 -56 run function luigis_mansion:blocks/dust
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #butlers_room_bucket Searched 1
data merge block 749 11 -56 {LootTable:"luigis_mansion:search"}
setblock 749 11 -56 minecraft:hopper[enabled=false]
tag @e[x=749.5,y=11,z=-55.5,distance=..0.7,tag=ghost,tag=hidden] add spawn