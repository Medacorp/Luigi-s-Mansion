tag @e[tag=bowser,tag=can_decapitate,distance=..6] add decapitate
execute as @e[distance=..3,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
data modify storage luigis_mansion:data damage set value {method:"luigis_mansion:explosion",amount:10,knockback:"burn",no_delete:1b}
execute if data entity @s ArmorItems[3].tag.damage.attack run data modify storage luigis_mansion:data damage.amount set from entity @s ArmorItems[3].tag.damage.attack
execute store result storage luigis_mansion:data damage.attacker int 1 run scoreboard players get @s Owner
execute as @a[distance=..1,gamemode=!spectator] run function luigis_mansion:entities/player/take_damage
data remove storage luigis_mansion:data damage
particle minecraft:explosion ~ ~ ~ 0.2 0.2 0.2 1 4 force @a[tag=same_room]
playsound luigis_mansion:entity.ball.explode hostile @a[tag=same_room] ~ ~ ~ 1
function luigis_mansion:spawn_entities/burning_floor
execute if data entity @s ArmorItems[3].tag.damage.attack run data modify entity @e[distance=..0.1,tag=burning_floor,limit=1] ArmorItems[3].tag.damage set from entity @s ArmorItems[3].tag.damage
execute if entity @s[scores={Owner=-2147483648..}] as @e[distance=..0.1,tag=burning_floor] unless entity @s[scores={Owner=-2147483648..}] run scoreboard players operation @s Owner = @e[tag=spike_ball,distance=..0.1] GhostNr
tag @s add dead