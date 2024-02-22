scoreboard players add @s TargetTask 0
scoreboard players add @s SpawnTime 0
scoreboard players add @s ActionTime 1
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"punch"}
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.ghost.punch hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.chauncey.attack hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=1..10}] if score #mirrored Selected matches 0 run teleport @s ~ ~ ~ ~-36 ~
execute if entity @s[scores={ActionTime=1..10}] if score #mirrored Selected matches 1 run teleport @s ~ ~ ~ ~36 ~
tag @s[scores={ActionTime=20}] remove fake_attack
data remove entity @s[scores={Dialog=20}] data.animation
scoreboard players set @s[scores={ActionTime=20}] ActionTime 0