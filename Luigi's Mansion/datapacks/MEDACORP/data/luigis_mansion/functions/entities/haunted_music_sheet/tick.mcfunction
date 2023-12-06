execute if entity @s[tag=dead] run function luigis_mansion:other/drop_loot
execute if entity @s[tag=dead] run function luigis_mansion:entities/haunted_music_sheet/captured

scoreboard players set @s[tag=fleeing] WaitTime 1
tag @s remove fleeing

scoreboard players add @s[scores={WaitTime=..-1}] WaitTime 1
execute if entity @e[nbt={ArmorItems:[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"melody_pianissima"}}}]},tag=!vanish,limit=1] unless entity @e[nbt={ArmorItems:[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"melody_pianissima"}}}]},scores={VulnerableTime=1..},limit=1] run scoreboard players add @s[scores={WaitTime=0..}] WaitTime 1
teleport @s[scores={WaitTime=1}] ~ ~1 ~
execute at @s[scores={WaitTime=1..59}] run function luigis_mansion:entities/haunted_music_sheet/hover
execute at @s[scores={WaitTime=60..}] run function luigis_mansion:entities/haunted_music_sheet/attack
scoreboard players set @s[scores={WaitTime=120}] WaitTime 0
tag @s[scores={WaitTime=1}] remove at_height
execute at @s[scores={WaitTime=1..}] run function luigis_mansion:old_animations/haunted_object/flap
execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/1_tall