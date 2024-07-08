execute as @e[distance=..0.7,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"ice_spike"},amount:20,animation:{namespace:"luigis_mansion",id:"knockback/medium"}}
execute as @a[distance=..0.7,tag=!spectator,sort=nearest,limit=1] run function luigis_mansion:entities/player/damage
tag @s add breaking