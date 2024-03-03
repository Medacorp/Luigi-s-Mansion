scoreboard players add @s Time 1
execute if entity @s[scores={Time=1}] run function luigis_mansion:entities/burning_floor/move_down
execute as @e[distance=..1.5,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"burning_floor"},amount:0,animation:{namespace:"luigis_mansion",id:"knockback/burn"},no_delete:1b}
data modify storage luigis_mansion:data damage.amount set from entity @s ArmorItems[3].tag.luigis_mansion.damage.attack
execute at @a[gamemode=!spectator,distance=..1.5] run function luigis_mansion:entities/player/damage
data remove storage luigis_mansion:data damage
tag @s[tag=in_water] add dead
tag @s[scores={Time=60..}] add dead
