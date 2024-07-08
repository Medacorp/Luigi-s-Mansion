scoreboard players set @s TargetTask 0
scoreboard players set @s TargetTime 0
data remove entity @s data.target
data remove entity @s data.target_pos
data remove entity @s data.path
data remove entity @s data.animation
tag @s remove flee
tag @s remove hurt
tag @s remove vanish
tag @s remove disappear_next_tick
tag @s remove disappear
tag @s remove stunable
tag @s remove second_flee_state
scoreboard players set @s VulnerableTime 0
scoreboard players set @s StunTime 0
scoreboard players set @s ActionTime 0
scoreboard players set @s ErrorTime 0
scoreboard players reset @s SecondFleeState
scoreboard players operation @s LastHealth = @s Health
data modify entity @s data.attacked_by set value []
$function $(namespace):entities/$(id)/reset