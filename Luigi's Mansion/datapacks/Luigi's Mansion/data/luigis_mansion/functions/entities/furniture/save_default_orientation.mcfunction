item replace entity @s[nbt=!{ArmorItems:[{Count:1b}]}] armor.head with minecraft:stone_button
data modify entity @s ArmorItems[3].tag.default_orientation set from entity @s Pose
tag @s add saved_default_orientation