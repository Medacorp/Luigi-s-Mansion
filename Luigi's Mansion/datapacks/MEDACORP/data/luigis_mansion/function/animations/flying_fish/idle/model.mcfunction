scoreboard players add @s AnimationProgress 1
execute store result score @s AnimationRotationX run data get storage luigis_mansion:data ghost.rotation[1] 10
execute if entity @s[scores={AnimationProgress=1}] run scoreboard players remove @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=2}] run scoreboard players remove @s AnimationRotationX 20
execute if entity @s[scores={AnimationProgress=3}] run scoreboard players remove @s AnimationRotationX 30
execute if entity @s[scores={AnimationProgress=4}] run scoreboard players remove @s AnimationRotationX 40
execute if entity @s[scores={AnimationProgress=5}] run scoreboard players remove @s AnimationRotationX 50
execute if entity @s[scores={AnimationProgress=6}] run scoreboard players remove @s AnimationRotationX 60
execute if entity @s[scores={AnimationProgress=7}] run scoreboard players remove @s AnimationRotationX 70
execute if entity @s[scores={AnimationProgress=8..12}] run scoreboard players remove @s AnimationRotationX 80
execute if entity @s[scores={AnimationProgress=13}] run scoreboard players remove @s AnimationRotationX 70
execute if entity @s[scores={AnimationProgress=14}] run scoreboard players remove @s AnimationRotationX 60
execute if entity @s[scores={AnimationProgress=15}] run scoreboard players remove @s AnimationRotationX 50
execute if entity @s[scores={AnimationProgress=16}] run scoreboard players remove @s AnimationRotationX 40
execute if entity @s[scores={AnimationProgress=17}] run scoreboard players remove @s AnimationRotationX 30
execute if entity @s[scores={AnimationProgress=18}] run scoreboard players remove @s AnimationRotationX 20
execute if entity @s[scores={AnimationProgress=19}] run scoreboard players remove @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=21}] run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=22}] run scoreboard players add @s AnimationRotationX 20
execute if entity @s[scores={AnimationProgress=23}] run scoreboard players add @s AnimationRotationX 30
execute if entity @s[scores={AnimationProgress=24}] run scoreboard players add @s AnimationRotationX 40
execute if entity @s[scores={AnimationProgress=25}] run scoreboard players add @s AnimationRotationX 50
execute if entity @s[scores={AnimationProgress=26}] run scoreboard players add @s AnimationRotationX 60
execute if entity @s[scores={AnimationProgress=27}] run scoreboard players add @s AnimationRotationX 70
execute if entity @s[scores={AnimationProgress=28..32}] run scoreboard players add @s AnimationRotationX 80
execute if entity @s[scores={AnimationProgress=33}] run scoreboard players add @s AnimationRotationX 70
execute if entity @s[scores={AnimationProgress=34}] run scoreboard players add @s AnimationRotationX 60
execute if entity @s[scores={AnimationProgress=35}] run scoreboard players add @s AnimationRotationX 50
execute if entity @s[scores={AnimationProgress=36}] run scoreboard players add @s AnimationRotationX 40
execute if entity @s[scores={AnimationProgress=37}] run scoreboard players add @s AnimationRotationX 30
execute if entity @s[scores={AnimationProgress=38}] run scoreboard players add @s AnimationRotationX 20
execute if entity @s[scores={AnimationProgress=39}] run scoreboard players add @s AnimationRotationX 10
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0