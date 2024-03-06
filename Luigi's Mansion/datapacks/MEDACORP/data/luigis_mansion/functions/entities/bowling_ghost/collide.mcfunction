execute as @e[distance=..0.7,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
$advancement grant @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] only luigis_mansion:vanilla/waluigi_pinball/$(id)
execute if entity @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] unless entity @e[tag=this_bowling_ball,limit=1] run scoreboard players set @s[tag=!attack,tag=!disappear,tag=!hurt,tag=!element_hurt] ActionTime 0
execute if entity @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] unless entity @e[tag=this_bowling_ball,limit=1] run tag @s[tag=!attack,tag=!disappear,tag=!hurt,tag=!element_hurt] add collided
data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"walked_into"},amount:0,animation:{namespace:"luigis_mansion",id:"knockback/medium"},attacker:-1,no_delete:1b}
data modify storage luigis_mansion:data damage.amount set from entity @s data.damage.collision
execute store result storage luigis_mansion:data damage.attacker int 1 run scoreboard players get @s GhostNr
execute as @a[distance=..0.7,gamemode=!spectator] run function luigis_mansion:entities/player/damage
data remove storage luigis_mansion:data damage