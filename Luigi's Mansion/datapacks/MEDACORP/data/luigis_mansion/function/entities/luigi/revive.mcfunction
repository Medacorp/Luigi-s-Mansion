function luigis_mansion:entities/luigi/get_owner_memory
data modify storage luigis_mansion:data my_memory.revived_by set from entity @s data.reviver
data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
data remove storage luigis_mansion:data my_memory

execute as @a[tag=this_player] run function luigis_mansion:entities/player/camera/reset
execute at @s run teleport @a[tag=this_player] ~ ~ ~ ~ ~
execute as @a[tag=this_player] run function luigis_mansion:other/music/set/silence
gamemode adventure @a[tag=this_player]

data remove entity @s data.reviver
tag @s add revived_animation