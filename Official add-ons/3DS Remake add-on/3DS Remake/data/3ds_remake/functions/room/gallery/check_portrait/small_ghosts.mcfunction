tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"3ds_remake:message.gallery.small_ghosts"}]}
function #3ds_remake:room/gallery/check_portrait/small_ghosts
scoreboard players reset @p[tag=!spectator] SelectedFrame