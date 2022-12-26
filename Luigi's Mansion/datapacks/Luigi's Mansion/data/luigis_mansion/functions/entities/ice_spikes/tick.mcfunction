scoreboard players add @s ActionTime 1
teleport @s[scores={ActionTime=1..13}] ~ ~0.2 ~
teleport @s[scores={ActionTime=14..26}] ~ ~-0.2 ~
execute positioned ~-1 ~ ~-1 as @e[dx=1,dy=1,dz=1,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
data modify storage luigis_mansion:data damage set value {method:"luigis_mansion:freeze",amount:10,knockback:"large",no_delete:1b}
execute store result storage luigis_mansion:data damage.attacker int 1 run scoreboard players get @s Owner
execute ~-1 ~ ~-1 as @a[dx=1,dy=1,dz=1,gamemode=!spectator] run function luigis_mansion:entities/player/take_damage
data remove storage luigis_mansion:data damage
tag @s[scores={ActionTime=27}] add dead