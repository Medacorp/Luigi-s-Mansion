scoreboard players add @s[scores={DeathTime=3..}] DeathTime 1
execute if entity @s[scores={DeathTime=2}] unless block ~ ~0.8 ~ #luigis_mansion:ghosts_ignore run scoreboard players add @s DeathTime 1
execute unless entity @s[scores={DeathTime=2..}] run scoreboard players add @s DeathTime 1
scoreboard players set @s[scores={DeathTime=1}] AnimationProg 0
function luigis_mansion:animations/bowser/dying
execute if entity @s[scores={DeathTime=2}] run teleport @s ~ ~-0.2 ~ ~ 0
execute if entity @s[scores={DeathTime=3}] run playsound luigis_mansion:entity.bowser.head_land hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={DeathTime=3..6}] run teleport @s ~ ~0.2 ~ ~ 0
execute if entity @s[scores={DeathTime=7..10}] run teleport @s ~ ~-0.2 ~ ~ 0
execute if entity @s[scores={DeathTime=11}] run playsound luigis_mansion:entity.bowser.head_land hostile @a[tag=same_room] ~ ~ ~ 3 0.8
execute if entity @s[scores={DeathTime=3..22}] store result score #temp Time run data get entity @s Pose.Head[2] 10
execute if entity @s[scores={DeathTime=3..22}] if score #mirrored Selected matches 0 store result entity @s Pose.Head[2] float 0.1 run scoreboard players add #temp Time 45
execute if entity @s[scores={DeathTime=3..22}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[2] float 0.1 run scoreboard players remove #temp Time 45
execute if entity @s[scores={DeathTime=3..22}] run scoreboard players reset #temp Time
tag @s[scores={AnimationProg=100}] add dead