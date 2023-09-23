execute as @e[distance=..1,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
data modify storage luigis_mansion:data damage set value {method:"luigis_mansion:ice_spike",amount:20,knockback:"medium"}
execute as @a[distance=..1,gamemode=!spectator,sort=nearest,limit=1] run function luigis_mansion:entities/player/damage
tag @s remove moving
tag @s remove collision
tag @s add breaking