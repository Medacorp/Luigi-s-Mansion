execute as @e[distance=..3,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"stomp"},amount:0,animation:{namespace:"luigis_mansion",id:"knockback/large"}}
data modify storage luigis_mansion:data damage.amount set from entity @s data.damage.collide
data modify storage luigis_mansion:data damage.attacker set from entity @s UUID
tag @s add me
execute as @a[distance=..3,tag=!spectator] at @e[tag=me,limit=1] run function luigis_mansion:entities/player/damage
tag @s remove me
data remove storage luigis_mansion:data damage