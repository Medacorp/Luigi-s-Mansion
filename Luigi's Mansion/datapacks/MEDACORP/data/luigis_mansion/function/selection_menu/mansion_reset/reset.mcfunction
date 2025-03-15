execute if score #all_players Totals matches 1 run tellraw @s {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.mansion",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.reset_mansion.confirm.yes.1"}]}
execute if score #all_players Totals matches 2.. run tellraw @s {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.mansion",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.reset_mansion.confirm.yes.1.more"}]}
gamemode spectator
function luigis_mansion:entities/player/selection_menu/close
tag @s remove mansion_reset_menu
tag @s remove camera

function luigis_mansion:data/load
