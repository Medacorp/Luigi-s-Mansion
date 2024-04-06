tag @s[tag=remove_from_existence,tag=cannot_be_removed] remove remove_from_existence

# Remove if no owner was found
scoreboard players set @s[tag=found_owner] ModelTime 0
scoreboard players set @s[tag=found_shrunk_owner] ModelTime 0
scoreboard players add @s[tag=!found_owner,tag=!no_auto_kill,tag=!found_shrunk_owner] ModelTime 1
tag @s remove found_owner
tag @s remove found_shrunk_owner
tag @s[scores={ModelTime=3}] add dead
scoreboard players reset @s[tag=dead]
kill @s[tag=dead]

tag @s[scores={MirrorX=-2147483648..},tag=!no_reflection] add mirrored
tag @s[scores={MirrorZ=-2147483648..},tag=!no_reflection] add mirrored
execute if entity @s[tag=mirrored] run function luigis_mansion:entities/reflection/add
scoreboard players reset @s[tag=!mirrored] ReflectionNr
tag @s[tag=mirrored] remove mirrored
scoreboard players reset @s LightX
scoreboard players reset @s LightY
scoreboard players reset @s LightZ
scoreboard players reset @s MirrorX
scoreboard players reset @s MirrorZ

tag @s[tag=remove_from_existence] add dead
teleport @s[tag=dead] ~ ~-100 ~
scoreboard players reset @s[tag=dead]
kill @s[tag=dead]