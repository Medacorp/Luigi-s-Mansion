scoreboard players add @s[scores={AnimationProgress=0..1}] AnimationProgress 1
scoreboard players add @s[scores={ActionTime=21..120}] AnimationRotationY 90
scoreboard players add @s[scores={ActionTime=121..126}] AnimationRotationY 60
scoreboard players add @s[scores={ActionTime=127..131}] AnimationRotationY 30
scoreboard players remove @s[scores={ActionTime=132..133}] AnimationRotationY 90
scoreboard players add @s[scores={AnimationRotationY=..-181}] AnimationRotationY 3600
scoreboard players set @s[scores={ActionTime=133,AnimationRotationY=-50..50}] AnimationProgress 3