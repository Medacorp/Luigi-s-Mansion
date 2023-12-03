tag @s add vanish
tag @s remove hurt
tag @s remove fleeing
scoreboard players set @s AnimaptionProg 0
scoreboard players set @s ActionTime 0
scoreboard players set @s HurtTime 0
data modify entity @s ArmorItems[3].tag.luigis_mansion.attacked_by set value []
execute if score #debug_messages Selected matches 2.. run tellraw @a {"translate":"luigis_mansion:message.debug.format","with":[{"translate":"luigis_mansion:message.debug","color":"gold"},{"translate":"luigis_mansion:message.debug.ghost_escape.damage"}]}
function e3_demo:items/poltergust_500/vacuuming/break_free_step
scoreboard players reset #temp Steps
tag @s remove being_vacuumed