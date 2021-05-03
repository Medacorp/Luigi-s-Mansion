execute unless score #laundry_room_bucket Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #laundry_room_bucket Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #laundry_room_bucket Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #laundry_room_bucket Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #laundry_room_bucket Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #laundry_room_bucket Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=money] run function luigis_mansion:room/normal/laundry_room/bucket
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 714 11 61 run function luigis_mansion:blocks/dust
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #laundry_room_bucket Searched 1
data merge block 714 11 61 {LootTable:"luigis_mansion:search"}
setblock 714 11 61 minecraft:hopper[enabled=false]
tag @e[x=714.5,y=11,z=61.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=714.5,y=11,z=61.5,distance=..0.7,tag=ghost,tag=hidden] add spawn