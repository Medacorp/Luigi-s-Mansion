execute unless score #guest_room_plant Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #guest_room_plant Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=money] positioned 737 23 74 run function luigis_mansion:room/hidden/guest_room/plant
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 736 20 75 run function luigis_mansion:blocks/dust
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 734 20 75 run function luigis_mansion:blocks/dust_no_sound
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #guest_room_plant Searched 1