scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"translate":"luigis_mansion:dialog.madame_clairvoya.generic.3"}]}
execute if entity @s[scores={Dialog=32}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"translate":"luigis_mansion:dialog.madame_clairvoya.generic.4"}]}
tag @s[scores={Dialog=200}] add power
execute if entity @s[scores={Dialog=200}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"translate":"luigis_mansion:dialog.madame_clairvoya.generic.5"}]}
execute if entity @s[scores={Dialog=392}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"translate":"luigis_mansion:dialog.madame_clairvoya.generic.6"}]}
execute if entity @s[scores={Dialog=424}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"translate":"luigis_mansion:dialog.madame_clairvoya.generic.7"}]}
tag @s[scores={Dialog=512}] remove power
execute if entity @s[scores={Dialog=512}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"translate":"luigis_mansion:dialog.madame_clairvoya.item_2.1"}]}
execute if entity @s[scores={Dialog=512}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"translate":"luigis_mansion:dialog.madame_clairvoya.item_2.1.more"}]}
execute if entity @s[scores={Dialog=624}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"translate":"luigis_mansion:dialog.madame_clairvoya.item_2.2"}]}
execute if entity @s[scores={Dialog=624}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"translate":"luigis_mansion:dialog.madame_clairvoya.item_2.2.more"}]}
tag @s[scores={Dialog=944}] add nod
execute if entity @s[scores={Dialog=944}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"translate":"luigis_mansion:dialog.madame_clairvoya.item_2.3"}]}
execute if entity @s[scores={Dialog=944}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"translate":"luigis_mansion:dialog.madame_clairvoya.item_2.3.more"}]}
tag @s[scores={Dialog=1136}] remove nod
tag @s[scores={Dialog=1136}] remove talk