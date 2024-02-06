$function #$(namespace):entities/$(id)/reset
tag @s remove flee
tag @s remove hurt
tag @s remove hurt_animation
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
data modify entity @s ArmorItems[3].tag.luigis_mansion.attacked_by set value []