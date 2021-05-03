summon minecraft:marker ~ ~ ~ {Tags:["chance","key"],Duration:1}
tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=key] run function luigis_mansion:room/hidden/rec_room/threadmill
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 659 103 27 run function luigis_mansion:blocks/dust
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #rec_room_threadmill Searched 1