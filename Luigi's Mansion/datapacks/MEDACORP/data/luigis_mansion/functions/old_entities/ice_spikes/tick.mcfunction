scoreboard players add @s ActionTime 1
teleport @s[scores={ActionTime=1..13}] ~ ~0.2 ~
teleport @s[scores={ActionTime=14..26}] ~ ~-0.2 ~
execute positioned ~-1 ~ ~-1 as @e[dx=1,dy=1,dz=1,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"freeze"},amount:10,animation:{namespace:"luigis_mansion",id:"knockback/large"},no_delete:1b}
execute store result storage luigis_mansion:data damage.attacker int 1 run scoreboard players get @s Owner
execute positioned ~-1 ~ ~-1 as @a[dx=1,dy=1,dz=1,gamemode=!spectator] run function luigis_mansion:entities/player/damage
data remove storage luigis_mansion:data damage
tag @s[scores={ActionTime=27}] add dead
execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/2_tall