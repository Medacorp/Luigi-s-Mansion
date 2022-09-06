tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion_3ds_remake:message.gallery.boos"}]}
function #luigis_mansion_3ds_remake:room/gallery/check_portrait/boos
scoreboard players reset @p[gamemode=!spectator] SelectedFrame