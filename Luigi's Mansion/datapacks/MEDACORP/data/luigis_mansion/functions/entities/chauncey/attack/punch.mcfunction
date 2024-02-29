scoreboard players add @s TargetTask 0
scoreboard players add @s SpawnTime 0
scoreboard players add @s ActionTime 1
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"punch_wind_up"}
data modify entity @s[scores={ActionTime=11}] data.animation set value {namespace:"luigis_mansion",id:"punch"}
execute if entity @s[scores={ActionTime=11}] run playsound luigis_mansion:entity.ghost.punch hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=11}] run playsound luigis_mansion:entity.chauncey.attack hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=11..20}] unless score #mirrored Selected matches 1 run teleport @s ~ ~ ~ ~-36 ~
execute if entity @s[scores={ActionTime=11..20}] if score #mirrored Selected matches 1 run teleport @s ~ ~ ~ ~36 ~
execute at @s[scores={ActionTime=11}] positioned ^ ^ ^0.5 as @e[distance=..1,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
execute at @s[scores={ActionTime=11}] positioned ^ ^ ^0.5 if entity @a[distance=..1,scores={Invulnerable=0},tag=!spectator] run tag @s add laugh
execute at @s[scores={ActionTime=11}] run data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"punch"},amount:0,animation:{namespace:"luigis_mansion",id:"knockback/large"},attacker:-1,no_delete:1b}
execute at @s[scores={ActionTime=11}] run data modify storage luigis_mansion:data damage.amount set from entity @s data.damage.attack
execute at @s[scores={ActionTime=11}] store result storage luigis_mansion:data damage.attacker int 1 run scoreboard players get @s GhostNr
execute at @s[scores={ActionTime=11}] positioned ^ ^ ^0.5 as @a[distance=..1,gamemode=!spectator] run function luigis_mansion:entities/player/damage
execute at @s[scores={ActionTime=11}] run data remove storage luigis_mansion:data damage
tag @s[scores={ActionTime=11},tag=!laugh] add complain
tag @s[scores={ActionTime=30}] remove attack
data remove entity @s[scores={Dialog=30}] data.animation
scoreboard players set @s[scores={ActionTime=30}] ActionTime 0