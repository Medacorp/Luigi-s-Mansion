scoreboard players remove @s[scores={DeathTime=1..}] DeathTime 1
execute at @s[scores={DeathTime=11..50}] run teleport @s ^0.0225 ^0.0325 ^
scoreboard players add @s[scores={DeathTime=11..50}] AnimationRotationZ 22
scoreboard players add @s[scores={DeathTime=11..50}] AnimationRotationX 12
scoreboard players set @s[scores={DeathTime=59}] AnimationRotationX -500
scoreboard players set @s[scores={DeathTime=59}] AnimationRotationZ -900