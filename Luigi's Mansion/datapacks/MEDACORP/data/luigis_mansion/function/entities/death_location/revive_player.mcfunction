scoreboard players operation #temp ID = @s ID
execute as @a[tag=spectator] if score @s ID = #temp ID run tag @s add this_player
scoreboard players reset #temp ID
execute as @a[tag=this_player,limit=1] run function luigis_mansion:entities/player/memory/get with entity @s
execute if entity @a[tag=this_player,limit=1] run data modify storage luigis_mansion:data my_memory.revived_by set from entity @s data.reviver
execute if entity @a[tag=this_player,limit=1] run data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
execute if entity @a[tag=this_player,limit=1] run data remove storage luigis_mansion:data my_memory
execute at @s run teleport @a[tag=this_player] ~ ~ ~ ~ ~
execute as @a[tag=this_player] run function luigis_mansion:other/music/set/silence
tag @a[tag=this_player] add revive_animation
gamemode adventure @a[tag=this_player]
tag @a[tag=this_player] remove this_player