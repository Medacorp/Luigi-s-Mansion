scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"translate":"luigis_mansion:dialog.madame_clairvoya.generic.3"}]}
execute if entity @s[scores={Dialog=32}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"translate":"luigis_mansion:dialog.madame_clairvoya.generic.4"}]}
tag @s[scores={Dialog=200}] add power
execute if entity @s[scores={Dialog=200}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"translate":"luigis_mansion:dialog.madame_clairvoya.generic.5"}]}
execute if entity @s[scores={Dialog=392}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"translate":"luigis_mansion:dialog.madame_clairvoya.generic.6"}]}
execute if entity @s[scores={Dialog=424}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"translate":"luigis_mansion:dialog.madame_clairvoya.generic.7"}]}
tag @s[scores={Dialog=512}] remove power
execute if entity @s[scores={Dialog=512}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"translate":"luigis_mansion:dialog.madame_clairvoya.item_3.1"}]}
execute if entity @s[scores={Dialog=512}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"translate":"luigis_mansion:dialog.madame_clairvoya.item_3.1.more"}]}
tag @s[scores={Dialog=616}] add explain
execute if entity @s[scores={Dialog=616}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"translate":"luigis_mansion:dialog.madame_clairvoya.item_3.2"}]}
execute if entity @s[scores={Dialog=728}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"translate":"luigis_mansion:dialog.madame_clairvoya.item_3.3"}]}
execute if entity @s[scores={Dialog=728}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"translate":"luigis_mansion:dialog.madame_clairvoya.item_3.3.more"}]}
tag @s[scores={Dialog=1088}] add nod
tag @s[scores={Dialog=1088}] remove explain
execute if entity @s[scores={Dialog=1088}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"translate":"luigis_mansion:dialog.madame_clairvoya.item_3.4"}]}
tag @s[scores={Dialog=1184}] remove nod
tag @s[scores={Dialog=1184}] remove talk