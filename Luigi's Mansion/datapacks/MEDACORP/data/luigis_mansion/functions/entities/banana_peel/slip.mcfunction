execute as @e[distance=..0.7,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"banana"},durning_knockback_amount:5,animation:{namespace:"luigis_mansion",id:"knockback/slip"},no_delete:1b}
execute if data entity @s ArmorItems[3].tag.luigis_mansion.damage.attack run data modify storage luigis_mansion:data damage.during_knockback_amount set from entity @s ArmorItems[3].tag.luigis_mansion.damage.attack
data modify storage luigis_mansion:data damage.attacker set from entity @s ArmorItems[3].tag.luigis_mansion.owner
execute as @a[distance=..0.7,tag=!spectator] rotated as @s rotated ~ 0 positioned ^ ^ ^10 run function luigis_mansion:entities/player/damage
data remove storage luigis_mansion:data damage
tag @s add dead