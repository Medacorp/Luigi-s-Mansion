tag @s add me
execute as @e[tag=can_decapitate,tag=same_room] run function luigis_mansion:entities/ball/spike_ball/decapitate_bowser
tag @s remove me
execute as @e[distance=..3,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"explosion"},amount:10,animation:{namespace:"luigis_mansion",id:"knockback/burn"},no_delete:1b}
execute if data entity @s ArmorItems[3].tag.luigis_mansion.damage.attack run data modify storage luigis_mansion:data damage.amount set from entity @s ArmorItems[3].tag.luigis_mansion.damage.attack
execute if entity @s[scores={Owner=-2147483648..}] store result storage luigis_mansion:data damage.attacker int 1 run scoreboard players get @s Owner
execute as @a[distance=..1,gamemode=!spectator] run function luigis_mansion:entities/player/damage
data remove storage luigis_mansion:data damage

particle minecraft:explosion ~ ~ ~ 0.2 0.2 0.2 1 4 force @a[tag=same_room]
playsound luigis_mansion:entity.ghost.explosion hostile @a[tag=same_room] ~ ~ ~ 1

data modify storage luigis_mansion:data entity set value {}
execute if data entity @s ArmorItems[3].tag.luigis_mansion.damage.attack run data modify storage luigis_mansion:data entity.damage set from entity @s ArmorItems[3].tag.luigis_mansion.damage
execute if entity @s[scores={Owner=-2147483648..}] store result storage luigis_mansion:data entity.owner int 1 run scoreboard players get @s GhostNr
function luigis_mansion:spawn_entities/burning_floor
tag @s add dead