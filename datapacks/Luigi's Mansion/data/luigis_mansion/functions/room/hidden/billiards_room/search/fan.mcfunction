execute unless score #billiards_room_fan Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #billiards_room_fan Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=money] positioned 681.0 15 -62.0 run function luigis_mansion:room/hidden/billiards_room/fan
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 681.0 16 -62.0 run function luigis_mansion:blocks/dust
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 668.0 16 -62.0 run function luigis_mansion:blocks/dust_no_sound
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #billiards_room_fan Searched 1