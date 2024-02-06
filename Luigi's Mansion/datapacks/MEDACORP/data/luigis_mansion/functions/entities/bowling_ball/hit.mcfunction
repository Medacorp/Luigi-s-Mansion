execute as @e[distance=..1,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"bowling_ball"},amount:5,animation:{namespace:"luigis_mansion",id:"knockback/small"},no_delete:1b}
execute if data entity @s ArmorItems[3].tag.luigis_mansion.damage.attack run data modify storage luigis_mansion:data damage.amount set from entity @s ArmorItems[3].tag.luigis_mansion.damage.attack
execute store result storage luigis_mansion:data damage.attacker int 1 run scoreboard players get @s Owner
execute as @a[distance=..1,gamemode=!spectator] run function luigis_mansion:entities/player/damage
execute run data remove storage luigis_mansion:data damage
tag @s add dead
tag @s add hit
playsound luigis_mansion:entity.bowling_ball.clap hostile @a[tag=same_room] ~ ~ ~ 1