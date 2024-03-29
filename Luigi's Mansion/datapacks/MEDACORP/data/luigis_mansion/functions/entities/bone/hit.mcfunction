execute as @e[distance=..0.7,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"bone"},amount:5,animation:{namespace:"luigis_mansion",id:"knockback/small"},no_delete:1b}
execute if data entity @s ArmorItems[3].tag.luigis_mansion.damage.attack run data modify storage luigis_mansion:data damage.amount set from entity @s ArmorItems[3].tag.luigis_mansion.damage.attack
data modify storage luigis_mansion:data damage.attacker set from entity @s ArmorItems[3].tag.luigis_mansion.owner
execute as @a[distance=..0.7,tag=!spectator] run function luigis_mansion:entities/player/damage
data remove storage luigis_mansion:data damage
execute if data entity @s ArmorItems[3].tag.luigis_mansion.owner if entity @a[distance=..0.7,tag=!spectator,limit=1] run function luigis_mansion:entities/ghost/owner_laugh with entity @s ArmorItems[3].tag.luigis_mansion
execute if data entity @s ArmorItems[3].tag.luigis_mansion.owner unless entity @a[distance=..0.7,tag=!spectator,limit=1] run function luigis_mansion:entities/ghost/owner_complain with entity @s ArmorItems[3].tag.luigis_mansion