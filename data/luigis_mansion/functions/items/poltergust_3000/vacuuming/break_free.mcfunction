tag @s add vanish
tag @s remove hurt
tag @s remove fleeing
scoreboard players set @s VulnerableTime 0
scoreboard players set @s AnimaptionProg 0
scoreboard players set @s Time 0
scoreboard players set @s HurtTime 0
data modify entity @s ArmorItems[3].tag merge value {attacked_by:[]}
function luigis_mansion:items/poltergust_3000/vacuuming/break_free_step
scoreboard players reset #temp Steps
tag @s remove being_vacuumed