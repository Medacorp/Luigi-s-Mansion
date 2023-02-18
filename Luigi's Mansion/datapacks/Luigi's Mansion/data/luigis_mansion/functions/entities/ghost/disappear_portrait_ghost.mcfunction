function #luigis_mansion:entities/ghost/disappear
tag @s remove fleeing
tag @s remove hurt
tag @s remove hurt_animation
tag @s remove vanish
tag @s remove disappear_next_tick
tag @s remove disappear
tag @s remove stunnable
tag @s remove second_flee_state
scoreboard players set @s VulnerableTime 0
scoreboard players set @s StunTime 0
scoreboard players set @s ActionTime 0
scoreboard players set @s AnimationProgress 0
scoreboard players set @s ErrorTime 0
scoreboard players reset @s SecondFleeState
scoreboard players operation @s LastHealth = @s Health
data modify entity @s ArmorItems[3].tag merge value {attacked_by:[]}