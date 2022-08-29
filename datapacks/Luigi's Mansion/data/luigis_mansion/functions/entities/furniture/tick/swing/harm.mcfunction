execute as @e[dx=0,dy=0,dz=0,tag=gameboy_horror_location] run function luigis_mansion:entities/gameboy_horror_location/bring_player_back
effect give @a[dx=0,dy=0,dz=0,scores={Invulnerable=0},tag=!spectator] minecraft:instant_damage
scoreboard players set @a[dx=0,dy=0,dz=0,scores={Invulnerable=0},tag=!spectator] ForcedDamage -1
execute as @a[dx=0,dy=0,dz=0,scores={Invulnerable=0},tag=!spectator] positioned ~0.5 ~ ~0.5 positioned ^ ^5.4 ^ run function luigis_mansion:entities/player/knockback/large
tag @s add me
execute as @e[dx=0,dy=0,dz=0,type=!minecraft:player] at @s run function luigis_mansion:entities/furniture/tick/swing/hit_non_player
tag @s remove me