scoreboard players remove @s[scores={DeathTime=1..}] DeathTime 1
execute at @s[scores={DeathTime=11..50}] run teleport @s ^0.03875 ^-0.015 ^
scoreboard players remove @s[scores={DeathTime=11..50}] AnimationRotationZ 10
scoreboard players add @s[scores={DeathTime=11..50}] AnimationRotationX 7
scoreboard players set @s[scores={DeathTime=59}] AnimationRotationX -300
scoreboard players set @s[scores={DeathTime=59}] AnimationRotationZ 400
scoreboard players remove @s[scores={DeathTime=59}] AnimationRotationZ 1800