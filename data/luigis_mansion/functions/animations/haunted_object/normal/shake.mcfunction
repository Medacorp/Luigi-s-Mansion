scoreboard players add @s AnimationProg 1
execute unless entity @s[scores={HomeRotY=90}] if entity @s[scores={AnimationProg=1}] store result entity @s Pose.Head[0] float 1 run scoreboard players get @s HomeRotY
execute if entity @s[scores={HomeRotY=90}] store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={HomeRotY=90,AnimationProg=1}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 4
execute if entity @s[scores={HomeRotY=90,AnimationProg=2..3}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={HomeRotY=90,AnimationProg=4}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 4
execute unless entity @s[scores={HomeRotY=90}] store result score #temp Time run data get entity @s Pose.Head[2]
execute unless entity @s[scores={HomeRotY=90}] if entity @s[scores={AnimationProg=1}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 4
execute unless entity @s[scores={HomeRotY=90}] if entity @s[scores={AnimationProg=2..3}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 4
execute unless entity @s[scores={HomeRotY=90}] if entity @s[scores={AnimationProg=4}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 4
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProg=4}] AnimationProg 0