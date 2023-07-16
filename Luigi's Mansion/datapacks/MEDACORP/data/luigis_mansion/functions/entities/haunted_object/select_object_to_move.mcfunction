scoreboard players operation #temp Room = @s Room
execute as @e[tag=haunted_object] if score @s Room = #temp Room run tag @s add select_me
execute unless entity @e[tag=select_me,tag=moving,limit=1] at @e[tag=same_room,tag=!spectator,tag=player,sort=random,limit=1] run tag @e[tag=select_me,sort=nearest,limit=1] add add_moving
scoreboard players set @e[tag=add_moving] AnimationProgress 0
tag @e[tag=add_moving] add moving
tag @e[tag=add_moving] remove add_moving
execute unless entity @e[tag=select_me,tag=moving,limit=1] run scoreboard players set @s WaitTime 0
execute unless entity @e[tag=select_me,tag=moving,limit=1] run scoreboard players set @s AnimationProgress 0
execute unless entity @e[tag=select_me,tag=moving,limit=1] store result entity @s Pose.Head[0] float 1 run scoreboard players get @s HomeRotationY
execute unless entity @e[tag=select_me,tag=moving,limit=1] run data modify entity @s Pose.Head[1] set value 0.0f
execute unless entity @e[tag=select_me,tag=moving,limit=1] run data modify entity @s Pose.Head[2] set value 1.01f
tag @e[tag=select_me] remove select_me
tag @e[tag=from_me] remove from_me
scoreboard players reset #temp Room