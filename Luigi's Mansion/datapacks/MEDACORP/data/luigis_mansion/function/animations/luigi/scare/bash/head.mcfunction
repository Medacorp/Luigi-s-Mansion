execute unless score #mirrored Selected matches 1 if entity @s[tag=!flipped_gravity,tag=!shrunk] run function luigis_mansion:animations/luigi/scare/bash/normal/head
execute unless score #mirrored Selected matches 1 if entity @s[tag=!flipped_gravity,tag=shrunk] run function luigis_mansion:animations/luigi/scare/bash/normal_shrunk/head
execute unless score #mirrored Selected matches 1 if entity @s[tag=flipped_gravity,tag=!shrunk] run function luigis_mansion:animations/luigi/scare/bash/normal_flipped/head
execute unless score #mirrored Selected matches 1 if entity @s[tag=flipped_gravity,tag=shrunk] run function luigis_mansion:animations/luigi/scare/bash/normal_flipped_shrunk/head
execute if score #mirrored Selected matches 1 if entity @s[tag=!flipped_gravity,tag=!shrunk] run function luigis_mansion:animations/luigi/scare/bash/mirrored/head
execute if score #mirrored Selected matches 1 if entity @s[tag=!flipped_gravity,tag=shrunk] run function luigis_mansion:animations/luigi/scare/bash/mirrored_shrunk/head
execute if score #mirrored Selected matches 1 if entity @s[tag=flipped_gravity,tag=!shrunk] run function luigis_mansion:animations/luigi/scare/bash/mirrored_flipped/head
execute if score #mirrored Selected matches 1 if entity @s[tag=flipped_gravity,tag=shrunk] run function luigis_mansion:animations/luigi/scare/bash/mirrored_flipped_shrunk/head