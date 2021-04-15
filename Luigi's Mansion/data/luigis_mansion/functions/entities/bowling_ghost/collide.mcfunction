effect give @a[gamemode=!spectator,distance=..0.7] minecraft:instant_damage 1 0 true
scoreboard players set @a[gamemode=!spectator,distance=..0.7] ForcedDamage 4
advancement grant @a[gamemode=!spectator,distance=..0.7] only luigis_mansion:challenges/waluigi_pinball bowling_ghost
tag @s[tag=!attack,tag=!grab_ball,tag=grabbed_ball] add collided
execute unless entity @e[tag=this_bowling_ball,limit=1] run data merge entity @s[tag=!attack,tag=!grab_ball] {Pose:{RightArm:[-90.0f,0.0f,-90.0f],LeftArm:[-90.0f,0.0f,0.0f],Head:[0.0f,0.0f,0.0f]}}
execute unless entity @e[tag=this_bowling_ball,limit=1] run scoreboard players set @s[tag=!attack,tag=!grab_ball] AnimationProg 0
execute unless entity @e[tag=this_bowling_ball,limit=1] run scoreboard players set @s[tag=!attack,tag=!grab_ball] ActionTime 0
execute unless entity @e[tag=this_bowling_ball,limit=1] run tag @s[tag=!attack] add grab_ball
execute unless entity @e[tag=this_bowling_ball,limit=1] run tag @s[tag=!attack] remove grabbed_ball