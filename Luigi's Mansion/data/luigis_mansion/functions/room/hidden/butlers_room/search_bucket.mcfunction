execute unless score #butlers_room_bucket Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #butlers_room_bucket Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=money] run function luigis_mansion:room/hidden/butlers_room/bucket
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] 717 102 -40 run function luigis_mansion:blocks/dust
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #butlers_room_bucket Searched 1
data merge block 717 102 -40 {LootTable:"luigis_mansion:search"}
setblock 717 102 -40 minecraft:hopper[enabled=false]
tag @e[x=717.5,y=102,z=-39.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=717.5,y=102,z=-39.5,distance=..0.7,tag=ghost_marker] add spawn