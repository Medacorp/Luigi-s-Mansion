scoreboard players add @e[tag=me,limit=1] PoltergustEscapes 1
execute if entity @e[tag=me,scores={PoltergustEscapes=3},limit=1] run tellraw @a[tag=this_player,limit=1] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.mansion",color:"green"},{type:"translatable",translate:"luigis_mansion:message.warn.poltergust_range"}]}
scoreboard players add @e[tag=me,scores={PoltergustEscapes=3},limit=1] PoltergustEscapes 0
data modify storage luigis_mansion:data ghost_list set from entity @s data.attacked_by
data modify storage luigis_mansion:data new_ghost_list set value []
function luigis_mansion:items/poltergust_3000/remove_id
data modify entity @s data.attacked_by set from storage luigis_mansion:data new_ghost_list
scoreboard players reset #temp2 ID
data remove storage luigis_mansion:data ghost_list
data remove storage luigis_mansion:data new_ghost_list