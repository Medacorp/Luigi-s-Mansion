scoreboard players operation #temp Move = @s Move
function luigis_mansion:entities/shot_needle/move_forward
scoreboard players reset #temp Move
execute as @e[distance=..0.7,tag=gameboy_horror_location] run function luigis_mansion:entities/gameboy_horror_location/bring_player_back
execute if entity @a[distance=..0.7,gamemode=!spectator] run tag @s add hit
execute if entity @s[tag=hit] run effect give @a[distance=..0.7,gamemode=!spectator] minecraft:instant_damage 1 0 true
execute if entity @s[tag=hit] run scoreboard players set @a[distance=..0.7,gamemode=!spectator] ForcedDamage 4
tag @s[tag=hit] add dead
execute if entity @s[tag=dead] run playsound luigis_mansion:entity.nana.needle_vanish hostile @a[tag=same_room] ~ ~ ~ 1