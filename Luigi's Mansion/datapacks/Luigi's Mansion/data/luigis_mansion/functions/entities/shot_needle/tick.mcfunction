scoreboard players operation #temp Move = @s Move
function luigis_mansion:entities/shot_needle/move_forward
scoreboard players reset #temp Move
execute positioned ~-0.5 ~-1 ~-0.5 as @e[dx=0,dy=1,dz=0,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
execute positioned ~-0.5 ~-1 ~-0.5 if entity @a[dx=0,dy=1,dz=0,scores={Invulnerable=0},tag=!spectator] run tag @s add hit
execute if entity @s[tag=hit] positioned ~-0.5 ~-1 ~-0.5 run effect give @a[dx=0,dy=1,dz=0,scores={Invulnerable=0},tag=!spectator] minecraft:instant_damage 1 0 true
execute if entity @s[tag=hit] positioned ~-0.5 ~-1 ~-0.5 run scoreboard players set @a[dx=0,dy=1,dz=0,scores={Invulnerable=0},tag=!spectator] ForcedDamage 4
execute if entity @s[tag=hit] positioned ~-0.5 ~-1 ~-0.5 as @a[dx=0,dy=1,dz=0,scores={Invulnerable=0},tag=!spectator] positioned ~0.5 ~1 ~0.5 run function luigis_mansion:entities/player/knockback/medium
tag @s[tag=hit] add dead
execute if entity @s[tag=dead] run playsound luigis_mansion:entity.nana.needle_vanish hostile @a[tag=same_room] ~ ~ ~ 1