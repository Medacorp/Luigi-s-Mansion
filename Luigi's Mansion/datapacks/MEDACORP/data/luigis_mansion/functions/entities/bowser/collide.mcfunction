execute as @e[distance=..3,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
execute if entity @s[tag=!vacuum_attack] run advancement grant @a[distance=..3,tag=!spectator,scores={Invulnerable=0}] only luigis_mansion:vanilla/waluigi_pinball/bowser
execute if entity @s[tag=vacuum_attack] run advancement grant @a[distance=..3,tag=!target,tag=!spectator,scores={Invulnerable=0}] only luigis_mansion:vanilla/waluigi_pinball/bowser
data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"walked_into"},amount:0,animation:{namespace:"luigis_mansion",id:"knockback/large"},attacker:-1}
data modify storage luigis_mansion:data damage.amount set from entity @s data.damage.collide
execute store result storage luigis_mansion:data damage.attacker int 1 run scoreboard players get @s GhostNr
tag @s add me
execute if entity @s[tag=!vacuum_attack] as @a[distance=..3,tag=!spectator] at @e[tag=me,limit=1] run function luigis_mansion:entities/player/damage
execute if entity @s[tag=vacuum_attack] as @a[tag=!target,distance=..3,tag=!spectator] at @e[tag=me,limit=1] run function luigis_mansion:entities/player/damage
tag @s remove me
data remove storage luigis_mansion:data damage