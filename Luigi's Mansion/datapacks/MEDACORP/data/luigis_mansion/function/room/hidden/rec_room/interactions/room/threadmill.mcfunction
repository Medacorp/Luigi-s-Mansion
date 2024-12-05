execute if entity @e[tag=luigi,x=643.5,y=12,z=47.5,distance=..0.7,limit=1] run scoreboard players add #rec_room_threadmill Run 1
execute as @e[tag=luigi,x=643.5,y=12,z=47.5,distance=..0.7,scores={TeleportDelayTimer=0},limit=1] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~ ~0.2"}
execute unless entity @e[tag=luigi,x=643.5,y=12,z=47.7,distance=..0.7,limit=1] run scoreboard players reset #rec_room_threadmill Run
execute if score #rec_room_threadmill Run matches 60 run function luigis_mansion:room/hidden/rec_room/search/threadmill
execute unless score #rec_room_threadmill Search matches 1 run scoreboard players reset #rec_room_threadmill Searching
scoreboard players reset #rec_room_threadmill Search
scoreboard players operation #temp Searching = #rec_room_threadmill Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #rec_room_threadmill Searching matches 1.. if score #temp Searching matches 1 positioned 643 11 47 run function luigis_mansion:blocks/search_sound/oven
scoreboard players reset #temp Searching