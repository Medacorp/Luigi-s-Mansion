data modify storage luigis_mansion:data current_state.current_data.obtained_items merge value {marios_star:1b}
execute if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.player.marios_star"}]}
execute if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.player.marios_star.more"}]}
function luigis_mansion:items/mario_item/sound