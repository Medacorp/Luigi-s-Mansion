execute as @e[distance=..1,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
effect give @a[distance=..1,scores={Invulnerable=0},tag=!spectator] minecraft:instant_damage 1 0 true
scoreboard players set @a[distance=..1,scores={Invulnerable=0},tag=!spectator] ForcedDamage 4
advancement grant @a[tag=!spectator,scores={Invulnerable=0},distance=..1] only luigis_mansion:challenges/waluigi_pinball elemental_ghost
execute if entity @s[tag=fire] as @a[distance=..1,scores={Invulnerable=0},tag=!spectator] run function luigis_mansion:entities/player/knockback/burn
execute if entity @s[tag=water] as @a[distance=..1,scores={Invulnerable=0},tag=!spectator] run function luigis_mansion:entities/player/knockback/soak
execute if entity @s[tag=ice] as @a[distance=..1,scores={Invulnerable=0},tag=!spectator] run function luigis_mansion:entities/player/knockback/freeze
execute if entity @a[distance=..1,scores={Invulnerable=0},tag=!spectator] run tag @s add dead