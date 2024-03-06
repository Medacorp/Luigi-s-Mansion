scoreboard players set @s[tag=!collided] ActionTime 0
tag @s remove laugh
tag @s remove complain
execute unless entity @e[tag=this_bowling_ball,limit=1] run tag @s[tag=!attack,tag=!disappear] remove grabbed_ball
tag @s[tag=disappear] remove grabbed_ball
tag @s remove attack