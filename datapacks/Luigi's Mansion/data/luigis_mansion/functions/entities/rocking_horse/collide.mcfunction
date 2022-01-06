execute as @e[distance=..2,tag=gameboy_horror_location] run function luigis_mansion:entities/gameboy_horror_location/bring_player_back
effect give @a[tag=!spectator,distance=..2] minecraft:instant_damage 1 0 true
scoreboard players set @a[tag=!spectator,distance=..2] ForcedDamage 4
execute as @a[tag=!spectator,distance=..2] run function luigis_mansion:entities/player/knockback/large
execute if entity @s[scores={Owner=-2147483648..}] run scoreboard players operation #temp GhostNr = @s Owner
execute if entity @s[scores={Owner=-2147483648..}] if entity @a[distance=..2,tag=!spectator,limit=1] as @e[tag=!model_piece,tag=ghost] if score @s GhostNr = #temp GhostNr run scoreboard players set @s AnimationProg 0
execute if entity @s[scores={Owner=-2147483648..}] if entity @a[distance=..2,tag=!spectator,limit=1] as @e[tag=!model_piece,tag=ghost] if score @s GhostNr = #temp GhostNr run tag @s add laugh
scoreboard players reset #temp GhostNr
tag @s add dead