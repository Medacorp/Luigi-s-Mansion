summon minecraft:marker ~ ~ ~ {Tags:["chance","key"],Duration:1}
tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=key] positioned 664 12 44 run function luigis_mansion:room/normal/washroom_1/toilet
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 664 11 44 run function luigis_mansion:blocks/dust
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 658 11 44 run function luigis_mansion:blocks/dust_no_sound
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #washroom_1_toilet Searched 1
data merge block 664 11 44 {LootTable:"luigis_mansion:search"}
tag @e[x=664.5,y=11,z=44.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] add spawn
tag @e[x=664.5,y=11,z=44.5,distance=..0.7,tag=ghost,tag=hidden] add spawn