execute as @e[distance=..3,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"crushed"},amount:0,animation:{namespace:"luigis_mansion",id:"knockback/large"},attacker:-1}
data modify storage luigis_mansion:data damage.amount set from entity @s data.damage.collide
execute store result storage luigis_mansion:data damage.attacker int 1 run scoreboard players get @s GhostNr
execute as @a[distance=..3,tag=!spectator] run function luigis_mansion:entities/player/damage
data remove storage luigis_mansion:data damage