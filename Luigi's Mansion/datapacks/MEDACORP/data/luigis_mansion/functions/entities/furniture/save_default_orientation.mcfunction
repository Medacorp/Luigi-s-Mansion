execute unless data entity @s ArmorItems[3].Count run item replace entity @s armor.head with minecraft:stone_button
data modify entity @s ArmorItems[3].tag.luigis_mansion.default_orientation set from entity @s Pose
tag @s add saved_default_orientation