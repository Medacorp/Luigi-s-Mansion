execute as @e[distance=..0.7,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
$advancement grant @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] only luigis_mansion:vanilla/waluigi_pinball/$(id)
execute if entity @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] run tag @s add remove_from_existence
data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"mouse"},amount:0,animation:{namespace:"luigis_mansion",id:"knockback/small"},no_delete:1b}
data modify storage luigis_mansion:data damage.amount set from entity @s data.damage.collision
data modify storage luigis_mansion:data damage.attacker set from entity @s UUID
execute as @a[distance=..0.7,tag=!spectator] run function luigis_mansion:entities/player/damage
data remove storage luigis_mansion:data damage