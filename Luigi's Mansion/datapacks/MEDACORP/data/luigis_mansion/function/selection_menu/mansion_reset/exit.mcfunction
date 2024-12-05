tellraw @s {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.reset_mansion.no.1"}]}
gamemode spectator
function luigis_mansion:entities/player/selection_menu/close
tag @s remove mansion_reset_menu
tag @s remove camera