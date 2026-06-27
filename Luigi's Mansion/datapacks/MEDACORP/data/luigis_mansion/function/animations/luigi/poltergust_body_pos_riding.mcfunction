teleport @s[tag=!flipped_gravity,tag=!low_health,tag=!shrunk] ^ ^-1.55 ^0.1 ~ ~
teleport @s[tag=!flipped_gravity,tag=low_health,tag=!shrunk] ^ ^-1.3 ^0.1 ~ ~
teleport @s[tag=!flipped_gravity,tag=!low_health,tag=shrunk] ^ ^-0.77 ^0.05 ~ ~
teleport @s[tag=!flipped_gravity,tag=low_health,tag=shrunk] ^ ^-0.62 ^0.05 ~ ~
teleport @s[tag=flipped_gravity,tag=!low_health,tag=!shrunk] ^ ^1.85 ^0.1 ~ ~
teleport @s[tag=flipped_gravity,tag=low_health,tag=!shrunk] ^ ^1.60 ^0.1 ~ ~
teleport @s[tag=flipped_gravity,tag=!low_health,tag=shrunk] ^ ^-0.52 ^0.05 ~ ~
teleport @s[tag=flipped_gravity,tag=low_health,tag=shrunk] ^ ^-0.52 ^0.05 ~ ~
scoreboard players set @s AnimationRotationX -900
execute if entity @s[tag=riding_poltergust,tag=!was_riding_poltergust] run tag @e[tag=this_luigi,tag=!model_piece,limit=1] add poltergust_floor_sound