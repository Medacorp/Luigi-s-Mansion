scoreboard players add @s ActionTime 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProg 0
execute at @s[tag=!dancing] run function luigis_mansion:animations/ghost_guy/stab_attack
execute at @s[tag=dancing] run function luigis_mansion:animations/ghost_guy/spin_attack

execute if entity @s[scores={ActionTime=20}] run playsound luigis_mansion:entity.ghost_guy.attack hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #mirrored Selected matches 0 run teleport @s[scores={ActionTime=20..29},tag=dancing] ~ ~ ~ ~-36 ~
execute if score #mirrored Selected matches 1 run teleport @s[scores={ActionTime=20..29},tag=dancing] ~ ~ ~ ~36 ~
execute at @s[scores={ActionTime=20},tag=dancing] run effect give @a[distance=..2,gamemode=!spectator] minecraft:instant_damage 1 0 true
execute at @s[scores={ActionTime=20},tag=dancing] run scoreboard players set @a[distance=..2,gamemode=!spectator] ForcedDamage 4
execute at @s[scores={ActionTime=20},tag=dancing,tag=stop_dancing] unless entity @a[distance=..2,gamemode=!spectator] run tag @s add complain
execute at @s[scores={ActionTime=20},tag=dancing,tag=stop_dancing] if entity @a[distance=..2,gamemode=!spectator] run scoreboard players set @s WaitTime 40
execute at @s[scores={ActionTime=20},tag=!dancing] positioned ^ ^ ^0.7 run effect give @a[distance=..1,gamemode=!spectator] minecraft:instant_damage 1 0 true
execute at @s[scores={ActionTime=20},tag=!dancing] positioned ^ ^ ^0.7 run scoreboard players set @a[distance=..1,gamemode=!spectator] ForcedDamage 4
execute at @s[scores={ActionTime=20},tag=!dancing] positioned ^ ^ ^0.7 unless entity @a[distance=..1,gamemode=!spectator] run tag @s add complain
execute at @s[scores={ActionTime=20},tag=!dancing] positioned ^ ^ ^0.7 if entity @a[distance=..1,gamemode=!spectator] run scoreboard players set @s WaitTime 40
data merge entity @s[scores={ActionTime=30,WaitTime=1..}] {Pose:{RightArm:[-90.0f,90.0f,0.0f],LeftArm:[-90.0f,-90.0f,0.0f],Head:[0.0f,0.0f,0.0f]}}
tag @s[scores={ActionTime=30}] remove attack
scoreboard players set @s[scores={ActionTime=30}] AnimationProg 0
scoreboard players set @s[scores={ActionTime=30}] ActionTime 0