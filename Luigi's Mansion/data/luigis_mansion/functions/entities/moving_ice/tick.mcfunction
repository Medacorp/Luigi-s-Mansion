scoreboard players set #temp Move 4
function luigis_mansion:entities/moving_ice/move_forward
scoreboard players reset #temp Move
execute if entity @a[distance=..0.7,gamemode=!spectator] run tag @s add hit
execute if entity @s[tag=hit] run effect give @a[distance=..0.7,gamemode=!spectator] minecraft:instant_damage 1 0 true
execute if entity @s[tag=hit] run scoreboard players set @a[distance=..0.7,gamemode=!spectator] ForcedDamage 4
tag @s[tag=hit] remove hit