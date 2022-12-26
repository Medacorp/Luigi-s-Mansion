scoreboard players add @s ActionTime 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProg 0
function luigis_mansion:animations/clockwork_soldier/attack
execute if entity @s[scores={ActionTime=20}] run playsound luigis_mansion:entity.clockwork_soldier.attack hostile @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={ActionTime=20}] positioned ^ ^-1 ^0.7 as @e[distance=..1,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
execute at @s[scores={ActionTime=20}] positioned ^ ^0.8 ^0.7 run particle minecraft:dust 0.5 0.5 0.5 1.4 ~ ~0.2 ~ 0 0 0 0 1
execute at @s[scores={ActionTime=20}] positioned ^ ^0.8 ^1.4 run particle minecraft:dust 0.5 0.5 0.5 1.4 ~ ~0.2 ~ 0 0 0 0 1
execute at @s[scores={ActionTime=20}] positioned ^ ^-1 ^0.7 if entity @a[distance=..1,scores={Invulnerable=0},tag=!spectator] run scoreboard players set @s WaitTime 40
execute at @s[scores={ActionTime=20}] run data modify storage luigis_mansion:data damage set value {method:"luigis_mansion:shot",amount:0,knockback:"large",attacker:-1,no_delete:1b}
execute at @s[scores={ActionTime=20}] run data modify storage luigis_mansion:data damage.amount set from entity @s ArmorItems[3].tag.damage.attack
execute at @s[scores={ActionTime=20}] store result storage luigis_mansion:data damage.attacker int 1 run scoreboard players get @s GhostNr
execute at @s[scores={ActionTime=20}] positioned ^ ^-1 ^0.7 as @a[distance=..1,gamemode=!spectator] run function luigis_mansion:entities/player/take_damage
execute at @s[scores={ActionTime=20}] run data remove storage luigis_mansion:data damage
tag @s[scores={ActionTime=40}] remove attack
scoreboard players set @s[scores={ActionTime=40}] AnimationProg 0
scoreboard players set @s[scores={ActionTime=40}] ActionTime 0