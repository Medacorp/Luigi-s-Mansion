tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"3ds_remake:message.gallery.boos"}]}
function #3ds_remake:room/gallery/check_portrait/boos
scoreboard players reset @p[gamemode=!spectator] SelectedFrame