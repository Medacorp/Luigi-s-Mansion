execute as @e[distance=..3,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
advancement grant @a[tag=!spectator,scores={Invulnerable=0},distance=..3] only luigis_mansion:vanilla/waluigi_pinball/boo
data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"bounced_on"},amount:0,animation:{namespace:"luigis_mansion",id:"knockback/large"},no_delete:1b}
data modify storage luigis_mansion:data damage.amount set from entity @s data.damage.attack
data modify storage luigis_mansion:data damage.attacker set from entity @s UUID
execute as @a[distance=..3,tag=!spectator] run function luigis_mansion:entities/player/damage
data remove storage luigis_mansion:data damage