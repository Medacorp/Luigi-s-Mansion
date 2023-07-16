tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"3ds_remake:message.gallery.boos"}]}
function #3ds_remake:room/gallery/check_portrait/boos
scoreboard players reset @p[gamemode=!spectator] SelectedFrame