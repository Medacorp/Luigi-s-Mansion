execute as @e[distance=..0.7,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
execute if entity @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] run tag @s add collision
data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"billiards_ball"},amount:0,animation:{namespace:"luigis_mansion",id:"knockback/medium"},no_delete:1b}
data modify storage luigis_mansion:data damage.amount set from entity @s ArmorItems[3].components."minecraft:custom_data".damage.collision
execute as @a[distance=..0.7,tag=!spectator] run function luigis_mansion:entities/player/damage
data remove storage luigis_mansion:data damage