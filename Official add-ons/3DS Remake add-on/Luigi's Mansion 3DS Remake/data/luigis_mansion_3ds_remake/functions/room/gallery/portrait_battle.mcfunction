tag @a[scores={Room=-5..-4}] add in_gallery
execute if entity @a[tag=!in_gallery,gamemode=!spectator] run tellraw @s {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion_3ds_remake:message.gallery.portrait_battle.be_in_gallery"}]}
execute unless entity @a[tag=!in_gallery,gamemode=!spectator] run function #luigis_mansion_3ds_remake:room/gallery/portrait_battle/battle
tag @s remove in_gallery
scoreboard players set @s PortraitBattle -1