execute as @e[distance=..0.7,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
advancement grant @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] only luigis_mansion:vanilla/waluigi_pinball/boo
execute if entity @s[tag=!attack] run data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"walked_into"},amount:0,animation:{namespace:"luigis_mansion",id:"knockback/medium"},no_delete:1b}
execute if entity @s[tag=attack] run data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"dashed_into"},amount:0,animation:{namespace:"luigis_mansion",id:"knockback/large"},no_delete:1b}
execute if entity @s[tag=!attack] run data modify storage luigis_mansion:data damage.amount set from entity @s ArmorItems[3].tag.luigis_mansion.damage.collision
execute if entity @s[tag=attack] run data modify storage luigis_mansion:data damage.amount set from entity @s ArmorItems[3].tag.luigis_mansion.damage.attack
data modify storage luigis_mansion:data damage.attacker set from entity @s UUID
execute as @a[distance=..0.7,tag=!spectator] run function luigis_mansion:entities/player/damage
data remove storage luigis_mansion:data damage