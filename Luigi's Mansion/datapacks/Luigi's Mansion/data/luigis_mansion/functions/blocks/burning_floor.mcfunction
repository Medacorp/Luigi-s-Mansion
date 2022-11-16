scoreboard players add @s Time 1
execute if entity @s[scores={Time=1}] run function luigis_mansion:blocks/burning_floor/move_down
execute as @e[distance=..1.5,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
effect give @a[gamemode=!spectator,scores={Invulnerable=0},distance=..1.5] minecraft:instant_damage 1 0 true
scoreboard players set @a[gamemode=!spectator,scores={Invulnerable=0},distance=..1.5] ForcedDamage 4
execute as @a[gamemode=!spectator,scores={Invulnerable=0},distance=..1.5] run function luigis_mansion:entities/player/knockback/burn
tag @s[scores={Time=60..}] add dead
