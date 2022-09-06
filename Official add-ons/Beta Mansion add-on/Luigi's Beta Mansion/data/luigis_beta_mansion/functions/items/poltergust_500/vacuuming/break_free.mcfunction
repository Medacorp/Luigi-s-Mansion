tag @s add vanish
tag @s remove hurt
tag @s remove fleeing
scoreboard players set @s VulnerableTime 0
scoreboard players set @s AnimaptionProg 0
scoreboard players set @s ActionTime 0
scoreboard players set @s HurtTime 0
data modify entity @s ArmorItems[3].tag merge value {attacked_by:[]}
execute if score #debug Selected matches 1 run say [DEBUG] The ghost broke free because damage or knockback was received.
function luigis_beta_mansion:items/poltergust_500/vacuuming/break_free_step
scoreboard players reset #temp Steps
tag @s remove being_vacuumed