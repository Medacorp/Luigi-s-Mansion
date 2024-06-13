execute as @e[distance=..2,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"rocking_horse"},amount:10,animation:{namespace:"luigis_mansion",id:"knockback/large"},no_delete:1b}
data modify storage luigis_mansion:data damage.attacker set from entity @s ArmorItems[3].components."minecraft:custom_data".owner
execute as @a[distance=..2,tag=!spectator] run function luigis_mansion:entities/player/damage
data remove storage luigis_mansion:data damage
execute if data entity @s ArmorItems[3].components."minecraft:custom_data".owner run function luigis_mansion:entities/ghost/owner_laugh with entity @s ArmorItems[3].components."minecraft:custom_data"
tag @s add dead