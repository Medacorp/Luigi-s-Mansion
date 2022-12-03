execute as @e[dx=0,dy=0,dz=0,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
effect give @a[dx=0,dy=0,dz=0,scores={Invulnerable=0},tag=!spectator] minecraft:instant_damage
scoreboard players set @a[dx=0,dy=0,dz=0,scores={Invulnerable=0},tag=!spectator] ForcedDamage -1
execute as @a[dx=0,dy=0,dz=0,scores={Invulnerable=0},tag=!spectator] positioned ~0.5 ~0.5 ~0.5 run function luigis_mansion:entities/player/knockback/large
execute as @e[dx=0,dy=0,dz=0,type=!minecraft:player] at @s run function luigis_mansion:entities/furniture/type/tick/swinging/hit_non_player
scoreboard players remove #y Steps 1
execute if score #y Steps matches 1.. positioned ^ ^ ^1 run function luigis_mansion:entities/furniture/type/tick/swinging/harm