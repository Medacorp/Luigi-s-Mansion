scoreboard players add @s Time 1
execute if entity @s[scores={Time=1..8}] run scoreboard players remove @s AnimationRotationX 10
execute if entity @s[scores={Time=9..24}] run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={Time=25..32}] run scoreboard players remove @s AnimationRotationX 10
scoreboard players set @s[scores={Time=32..}] AnimationRotationX 0
scoreboard players set @s[scores={Time=32..}] Time 0