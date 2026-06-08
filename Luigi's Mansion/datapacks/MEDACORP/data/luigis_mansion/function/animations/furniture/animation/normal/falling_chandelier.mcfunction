scoreboard players add @s[scores={AnimationProgress=0..1}] AnimationProgress 1
execute if entity @s[scores={ActionTime=21..120}] run scoreboard players remove @s AnimationRotationY 90
execute if entity @s[scores={ActionTime=121..126}] run scoreboard players remove @s AnimationRotationY 60
execute if entity @s[scores={ActionTime=127..131}] run scoreboard players remove @s AnimationRotationY 30
execute if entity @s[scores={ActionTime=132..133}] run scoreboard players add @s AnimationRotationY 90
scoreboard players remove @s[scores={AnimationRotationY=181..}] AnimationRotationY 3600
scoreboard players set @s[scores={ActionTime=133,AnimationRotationY=-50..50}] AnimationProgress 3