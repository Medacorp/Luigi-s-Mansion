scoreboard players add @s TargetTask 0
scoreboard players add @s SpawnTime 0
scoreboard players add @s ActionTime 1
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"stab"}
$execute if entity @s[scores={ActionTime=20}] run playsound $(namespace):entity.$(id).spin_attack hostile @a[tag=same_room] ~ ~ ~ 1
tag @s[scores={ActionTime=20}] add complain
execute at @s[scores={ActionTime=20}] as @e[distance=..2,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
execute at @s[scores={ActionTime=20}] if entity @a[distance=..2,scores={Invulnerable=0},tag=!spectator] run tag @s remove complain
execute at @s[scores={ActionTime=20}] run data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"cut"},amount:0,animation:{namespace:"luigis_mansion",id:"knockback/large"},attacker:-1,no_delete:1b}
execute at @s[scores={ActionTime=20}] run data modify storage luigis_mansion:data damage.amount set from entity @s data.damage.attack
execute at @s[scores={ActionTime=20}] store result storage luigis_mansion:data damage.attacker int 1 run scoreboard players get @s GhostNr
execute at @s[scores={ActionTime=20}] as @a[distance=..2,gamemode=!spectator] run function luigis_mansion:entities/player/damage
execute at @s[scores={ActionTime=20}] run data remove storage luigis_mansion:data damage
execute unless score #mirrored Selected matches 1 run teleport @s[scores={ActionTime=20..29}] ~ ~ ~ ~-36 ~
execute if score #mirrored Selected matches 1 run teleport @s[scores={ActionTime=20..29}] ~ ~ ~ ~36 ~
tag @s[scores={ActionTime=30}] remove attack
scoreboard players set @s[scores={ActionTime=30}] ActionTime 0