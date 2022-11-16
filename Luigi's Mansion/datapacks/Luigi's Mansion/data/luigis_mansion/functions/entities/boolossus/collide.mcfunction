execute as @e[distance=..0.7,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
effect give @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] minecraft:instant_damage 1 0 true
execute if entity @s[tag=!attack] run scoreboard players set @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] ForcedDamage -3
execute unless entity @s[tag=!attack] run scoreboard players set @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] ForcedDamage 4
advancement grant @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] only luigis_mansion:challenges/waluigi_pinball boo
execute if entity @s[tag=!attack] as @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] run function luigis_mansion:entities/player/knockback/medium
execute unless entity @s[tag=!attack] as @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] run function luigis_mansion:entities/player/knockback/large