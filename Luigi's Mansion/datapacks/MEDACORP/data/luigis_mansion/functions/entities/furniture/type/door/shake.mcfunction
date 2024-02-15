tag @s add was_shaking
tag @s[tag=!in_vacuum] remove was_shaking

execute unless entity @s[scores={Sound=1..}] run function luigis_mansion:entities/furniture/shake_sound with entity @s ArmorItems[3].tag.shake_sound

data modify entity @s[tag=was_shaking] ArmorItems[3].tag.luigis_mansion.animation set value {namespace:"luigis_mansion",id:"shake"}
data remove entity @s[tag=!was_shaking] ArmorItems[3].tag.luigis_mansion.animation