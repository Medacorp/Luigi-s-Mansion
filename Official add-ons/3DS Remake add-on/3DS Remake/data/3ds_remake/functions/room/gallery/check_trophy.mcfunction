tellraw @p[gamemode=!spectator] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"3ds_remake:message.gallery.trophy"}]}
function #3ds_remake:room/gallery/check_trophy
scoreboard players set @p[gamemode=!spectator] SelectedFrame -1