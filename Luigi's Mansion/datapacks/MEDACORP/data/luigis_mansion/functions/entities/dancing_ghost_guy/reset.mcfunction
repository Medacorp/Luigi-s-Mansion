scoreboard players set @s ActionTime 0
scoreboard players set @s TargetTask 0
data remove entity @s data.animation
scoreboard players set @s[tag=disappear] VacuumTime 0
tag @s[tag=disappear] remove stop_dancing
scoreboard players set @s[tag=!stop_dancing] WaitTime 0
tag @s[tag=!disappear] add stop_dancing
tag @s[tag=disappear] remove maskless
tag @s[tag=!maskless] remove stunable
tag @s[tag=!maskless] remove complain
tag @s remove attack
tag @s remove dance_other_direction
tag @s remove leader