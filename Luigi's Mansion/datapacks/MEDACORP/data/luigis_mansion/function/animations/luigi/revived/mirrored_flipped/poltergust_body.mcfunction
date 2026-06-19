scoreboard players remove @s[scores={DeathTime=1..}] DeathTime 1
execute at @s[scores={DeathTime=11..50}] run teleport @s ^-0.01625 ^-0.01125 ^
scoreboard players set @s[scores={DeathTime=59}] AnimationRotationZ -800
scoreboard players add @s[scores={DeathTime=11..50}] AnimationRotationZ 20
scoreboard players remove @s[scores={DeathTime=59}] AnimationRotationZ 1800