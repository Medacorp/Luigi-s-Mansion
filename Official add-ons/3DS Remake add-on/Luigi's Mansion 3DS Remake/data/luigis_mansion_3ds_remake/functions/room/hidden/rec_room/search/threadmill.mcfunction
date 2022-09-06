summon minecraft:marker ~ ~ ~ {Tags:["chance","key"],Duration:1}
tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=key] positioned 643 12 -33 run function luigis_mansion_3ds_remake:room/hidden/rec_room/threadmill
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 643 12 -32 run function luigis_mansion:blocks/dust
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 633 12 -32 run function luigis_mansion:blocks/dust_no_sound
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #rec_room_threadmill Searched 1