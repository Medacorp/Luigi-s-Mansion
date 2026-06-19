scoreboard players remove @s[scores={DeathTime=1..}] DeathTime 1
execute at @s[scores={DeathTime=11..50}] run teleport @s ^0.0125 ^0.0125 ^
scoreboard players add @s[scores={DeathTime=11..50}] AnimationRotationZ 20
scoreboard players remove @s[scores={DeathTime=11..50}] AnimationRotationX 5
scoreboard players set @s[scores={DeathTime=59}] AnimationRotationX 200
scoreboard players set @s[scores={DeathTime=59}] AnimationRotationZ -800