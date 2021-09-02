scoreboard players add @s ActionTime 1
teleport @s[scores={ActionTime=1..13}] ~ ~0.2 ~
teleport @s[scores={ActionTime=14..26}] ~ ~-0.2 ~
execute positioned ~-1 ~ ~-1 as @e[dx=1,dy=1,dz=1,tag=gameboy_horror_location] run function luigis_mansion:entities/gameboy_horror_location/bring_player_back
execute positioned ~-1 ~ ~-1 run effect give @a[dx=1,dy=1,dz=1,gamemode=!spectator] minecraft:instant_damage 1 0 true
execute positioned ~-1 ~ ~-1 run scoreboard players set @a[dx=1,dy=1,dz=1,gamemode=!spectator] ForcedDamage 4
tag @s[scores={ActionTime=27}] add dead