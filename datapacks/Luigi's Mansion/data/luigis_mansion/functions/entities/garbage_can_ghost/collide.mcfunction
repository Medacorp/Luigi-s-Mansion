execute as @e[distance=..0.7,tag=gameboy_horror_location] run function luigis_mansion:entities/gameboy_horror_location/bring_player_back
effect give @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] minecraft:instant_damage 1 0 true
scoreboard players set @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] ForcedDamage -1
advancement grant @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] only luigis_mansion:challenges/waluigi_pinball garbage_can_ghost
execute as @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] run function luigis_mansion:entities/player/knockback/medium
execute if entity @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] run scoreboard players set @s[tag=!appear] ActionTime 0
execute if entity @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] run tag @s[tag=!appear] add collided