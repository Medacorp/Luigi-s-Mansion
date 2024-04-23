execute as @e[dx=0,dy=1,dz=0,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"fire"},amount:10,animation:{namespace:"luigis_mansion",id:"knockback/burn"},no_delete:1b}
execute if data entity @s ArmorItems[3].components."minecraft:custom_data".damage.attack run data modify storage luigis_mansion:data damage.amount set from entity @s ArmorItems[3].components."minecraft:custom_data".damage.attack
data modify storage luigis_mansion:data damage.attacker set from entity @s ArmorItems[3].components."minecraft:custom_data".owner
execute as @a[dx=0,dy=1,dz=0,tag=!spectator] run function luigis_mansion:entities/player/damage
data remove storage luigis_mansion:data damage
tag @s add dead