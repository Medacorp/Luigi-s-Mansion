scoreboard players remove @s[scores={DeathTime=1..}] DeathTime 1
execute at @s[scores={DeathTime=11..50}] run teleport @s ^-0.018 ^0.007 ^
scoreboard players remove @s[scores={DeathTime=11..50}] AnimationRotationZ 12
scoreboard players add @s[scores={DeathTime=11..50}] AnimationRotationX 10
scoreboard players set @s[scores={DeathTime=59}] AnimationRotationX -400
scoreboard players set @s[scores={DeathTime=59}] AnimationRotationZ 500