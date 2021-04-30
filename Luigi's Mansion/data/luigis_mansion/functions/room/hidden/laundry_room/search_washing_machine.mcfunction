summon minecraft:marker ~ ~ ~ {Tags:["chance","key"],Duration:1}
tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=key] run function luigis_mansion:room/hidden/laundry_room/washing_machine
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] 701 102 -38 run function luigis_mansion:blocks/dust
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #laundry_room_washing_machine Searched 1
data merge block 700 103 -38 {LootTable:"luigis_mansion:search"}