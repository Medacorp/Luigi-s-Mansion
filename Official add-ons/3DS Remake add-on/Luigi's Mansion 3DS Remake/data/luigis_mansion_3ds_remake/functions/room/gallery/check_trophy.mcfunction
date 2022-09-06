tellraw @p[gamemode=!spectator] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion_3ds_remake:message.gallery.trophy"}]}
function #luigis_mansion_3ds_remake:room/gallery/check_trophy
scoreboard players set @p[gamemode=!spectator] SelectedFrame -1