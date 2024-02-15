execute as @e[distance=..1,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"ball"},amount:10,animation:{namespace:"luigis_mansion",id:"knockback/large"},no_delete:1b}
execute store result storage luigis_mansion:data damage.attacker int 1 run scoreboard players get @s Owner
execute as @a[distance=..1,gamemode=!spectator,scores={Invulnerable=0}] run function luigis_mansion:entities/player/damage
data remove storage luigis_mansion:data damage
execute if entity @s[scores={Owner=-2147483648..}] run scoreboard players operation #temp GhostNr = @s Owner
execute if entity @s[scores={Owner=-2147483648..}] as @e[tag=!model_piece,tag=ghost] if score @s GhostNr = #temp GhostNr run tag @s add laugh
scoreboard players reset #temp GhostNr