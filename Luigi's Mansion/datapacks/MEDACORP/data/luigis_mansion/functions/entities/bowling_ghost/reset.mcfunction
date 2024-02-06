scoreboard players set @s ActionTime 0
data remove entity @s data.animation
tag @s remove laugh
tag @s remove complain
execute unless entity @e[tag=this_bowling_ball,limit=1] run tag @s[tag=!attack,tag=!disappear] remove grabbed_ball
tag @s[tag=disappear] remove grabbed_ball
tag @s remove attack
execute unless entity @e[tag=this_bowling_ball,limit=1] run tag @s[tag=!attack,tag=!disappear,tag=!hurt,tag=!element_hurt] add collided