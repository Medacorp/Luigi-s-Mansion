tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion_3ds_remake:message.gallery.small_ghosts"}]}
function #luigis_mansion_3ds_remake:room/gallery/check_portrait/small_ghosts
scoreboard players reset @p[gamemode=!spectator] SelectedFrame