scoreboard players add @s[scores={AnimationProgress=0..1}] AnimationProgress 1
data modify entity @s[scores={AnimationProgress=1}] Pose set from entity @s data.default_orientation
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={ActionTime=21..120}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 9
execute if entity @s[scores={ActionTime=121..126}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 6
execute if entity @s[scores={ActionTime=127..131}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 3
execute if entity @s[scores={ActionTime=132..133}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 9
execute if score #temp Time matches -5..5 run scoreboard players set @s[scores={ActionTime=133}] AnimationProgress 3
execute if score #temp Time matches 355.. run scoreboard players set @s[scores={ActionTime=133}] AnimationProgress 3
execute if score #temp Time matches ..-355 run scoreboard players set @s[scores={ActionTime=133}] AnimationProgress 3
scoreboard players reset #temp Time