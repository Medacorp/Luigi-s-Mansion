scoreboard players add @s Time 1
scoreboard players add @s[scores={Time=1..8}] AnimationRotationX 10
scoreboard players remove @s[scores={Time=9..24}] AnimationRotationX 10
scoreboard players add @s[scores={Time=25..32}] AnimationRotationX 10
scoreboard players set @s[scores={Time=32..}] AnimationRotationX 0
scoreboard players set @s[scores={Time=32..}] Time 0