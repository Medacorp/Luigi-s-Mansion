execute as @e[distance=..2,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
execute if entity @s[scores={Owner=-2147483648..}] run scoreboard players operation #temp GhostNr = @s Owner
execute if entity @s[scores={Owner=-2147483648..}] if entity @a[distance=..2,scores={Invulnerable=0},tag=!spectator,limit=1] as @e[tag=!model_piece,tag=ghost] if score @s GhostNr = #temp GhostNr run scoreboard players set @s AnimationProg 0
execute if entity @s[scores={Owner=-2147483648..}] if entity @a[distance=..2,scores={Invulnerable=0},tag=!spectator,limit=1] as @e[tag=!model_piece,tag=ghost] if score @s GhostNr = #temp GhostNr run tag @s add laugh
scoreboard players reset #temp GhostNr
tag @s add dead
data modify storage luigis_mansion:data damage set value {method:"luigis_mansion:rocking_horse",amount:10,knockback:"medium",no_delete:1b}
execute store result storage luigis_mansion:data damage.attacker int 1 run scoreboard players get @s Owner
execute as @a[distance=..0.7,gamemode=!spectator] run function luigis_mansion:entities/player/take_damage
data remove storage luigis_mansion:data damage