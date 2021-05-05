summon minecraft:marker ~ ~ ~ {Tags:["chance","key"],Duration:1}
tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=key] run function luigis_mansion:room/hidden/washroom_1/toilet
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 664 11 -29 run function luigis_mansion:blocks/dust
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #washroom_1_toilet Searched 1
data merge block 664 11 -29 {LootTable:"luigis_mansion:search"}
tag @e[x=664.5,y=11,z=-28.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=664.5,y=11,z=-28.5,distance=..0.7,tag=ghost,tag=hidden] add spawn