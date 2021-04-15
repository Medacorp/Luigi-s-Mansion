execute if entity @a[x=659.5,y=103,z=27.5,distance=..0.7,gamemode=!spectator,limit=1] unless score #rec_room_threadmill Search matches 1 store result score #rec_room_threadmill Search run scoreboard players add #rec_room_threadmill Searching 1
execute as @a[x=659.5,y=103,z=27.5,distance=..0.7,gamemode=!spectator,limit=1] at @s run teleport @s ~ ~ ~0.2
execute unless score #rec_room_threadmill Search matches 1.. run scoreboard players reset #rec_room_threadmill Searching
scoreboard players reset #rec_room_threadmill Search
execute if score #rec_room_threadmill Searching matches 60 run function luigis_mansion:room/hidden/rec_room/search_threadmill