tag @a[scores={Room=-5..-4}] add in_gallery
execute if entity @a[tag=!in_gallery,tag=!spectator] run tellraw @s {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"3ds_remake:message.gallery.portrait_battle.be_in_gallery"}]}
execute unless entity @a[tag=!in_gallery,tag=!spectator] run function #3ds_remake:room/gallery/portrait_battle/battle
tag @s remove in_gallery
scoreboard players set @s PortraitBattle -1