tellraw @p[gamemode=!spectator] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"3ds_remake:message.gallery.trophy"}]}
function #3ds_remake:room/gallery/check_trophy
scoreboard players set @p[gamemode=!spectator] SelectedFrame -1