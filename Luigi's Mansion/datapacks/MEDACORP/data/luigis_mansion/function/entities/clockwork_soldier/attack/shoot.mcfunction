scoreboard players set @s TargetTask 0
scoreboard players set @s SpawnTime 0
scoreboard players add @s ActionTime 1
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"shoot"}
execute if entity @s[scores={ActionTime=20}] run playsound luigis_mansion:entity.clockwork_soldier.attack hostile @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={ActionTime=20}] positioned ^ ^-1 ^0.7 as @e[distance=..1,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
execute at @s[scores={ActionTime=20}] positioned ^ ^0.8 ^0.7 run particle minecraft:dust{color:8715008,scale:1.4f} ~ ~0.2 ~ 0 0 0 0 1
execute at @s[scores={ActionTime=20}] positioned ^ ^0.8 ^1.4 run particle minecraft:dust{color:8715008,scale:1.4f} ~ ~0.2 ~ 0 0 0 0 1
execute at @s[scores={ActionTime=20}] positioned ^ ^-1 ^0.7 if entity @a[distance=..1,scores={Invulnerable=0},tag=!spectator] run scoreboard players set @s WaitTime 40
execute at @s[scores={ActionTime=20}] run data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"shot"},amount:0,animation:{namespace:"luigis_mansion",id:"knockback/large"},no_delete:1b}
execute at @s[scores={ActionTime=20}] run data modify storage luigis_mansion:data damage.amount set from entity @s data.damage.attack
execute at @s[scores={ActionTime=20}] run data modify storage luigis_mansion:data damage.attacker set from entity @s UUID
execute at @s[scores={ActionTime=20}] positioned ^ ^-1 ^0.7 as @a[distance=..1,tag=!spectator] run function luigis_mansion:entities/player/damage
execute at @s[scores={ActionTime=20}] run data remove storage luigis_mansion:data damage
tag @s[scores={ActionTime=40}] remove attack
data remove entity @s[scores={ActionTime=40}] data.animation
scoreboard players set @s[scores={ActionTime=40}] ActionTime 0