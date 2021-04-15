summon minecraft:wither_skeleton ~ ~ ~ {CustomName:'{"translate":"luigis_mansion:entity.clockwork_soldiers"}',NoAI:1b,NoGravity:1b,CustomNameVisible:1b,Invulnerable:1b,ArmorItems:[{},{id:"minecraft:leather_leggings",Count:1b,tag:{AttributeModifiers:[],Unbreakable:1b,display:{color:6052351}}},{id:"minecraft:golden_chestplate",Count:1b,tag:{AttributeModifiers:[],Unbreakable:1b}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Properties:{textures:[{Signature:"i0wsorEPFePSGG5z4JbyoHK6/3JAbUjPETwM8OkeHfuM/QES2YuW7FHeiNkH9nyiFGNCa+phdJ/lKSSl5HRehRW49Zz+YjhOBfb3vaUxTUdyext3+RIfxgtzM56h2kMkMYIjRo42wo3osippvvx87Nqs88qOMs2t0pGWFlbEen2gDMKmDv4L2bmg5TO5u4RrenGsIiMMXmR/gW0USL8p+sx50EyqxFTjKhBMOwSKzIes1TWZAdzRTVfPZt1KlR5n5s33fPOIzMNNNw3bCKA6Zz8PNF2LNE9QUipMvoGJ3ZuUxdfEJ6l3tXJHQpfXh77YdP0FUqz3yKT6uE168brtWesyjCmAg3Qvv/gIEH/xMn+F0MT2SJRGIkPquQt5qeiec828PYO6R7hhLwVup3qDi7nW3XW3f0ncB7y1EplbeCPYvGJ7PgNmf+R23cFwlGGNTDaNvTKkg1R/tVqZ+ft/S52Rgu1vZ/R/tIFMa71P2qfta4Mrw3BZhDs17/R+Zm4zH05gOIL+vP07YTTk4kOSV7nTmavSk1wPNETVWHAIfTsW4qN0KLOgILCs2xxC6sRRA70LtJss8m4TaHFLYlywwEgA4SkZYdlTHh8b5tcOwK+kJk4S5U+lEXo2QtMloJXMKwhr1aHN8Z81JiJHfanGVESqFMzGlUJNCkx8ggMe9RY=",Value:"eyJ0aW1lc3RhbXAiOjE0NDc5NDc5MDQ5NDYsInByb2ZpbGVJZCI6Ijc5YmY5OWUxNjIxYzRlOTFiZDgxYTc3YTA4YjM4NmJhIiwicHJvZmlsZU5hbWUiOiJGVmJpY28iLCJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjFjMmU0NjI0NDI1NDQ5YTk4OGJkNWZiYTZjNDE5NjA1ZGMzZmFiZjM0ZGVhMWRlNjYzMTM0NTYyYjdlYyJ9fX0="}]},Name:"Blue Clockwork Soldier"}}}],Silent:1b,AbsorptionAmount:100.0f,HandItems:[{id:"minecraft:diamond_shovel",Count:1b},{}],HandDropChances:[0.0f,1.0f],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],PersistenceRequired:1b,LeftHanded:0b,Tags:["blue_clockwork_soldier","clockwork_soldier","portrait_ghost","pearl_dropper","ghost","this_entity"]}
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
execute as @e[tag=this_entity,limit=1] store result score @s GhostNr run data get storage luigis_mansion:data ghost_nr
execute as @e[tag=this_entity,limit=1] store result storage luigis_mansion:data ghost_nr int 1 run scoreboard players add @s GhostNr 1
execute as @e[tag=this_entity,limit=1] store result score @s HomeX run data get entity @s Pos[0] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeY run data get entity @s Pos[1] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeZ run data get entity @s Pos[2] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeRot run data get entity @s Rotation[0]
execute as @e[tag=this_entity,limit=1] store result score @s LastHealth run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.clockwork_soldiers.blue_health
execute as @e[tag=this_entity,limit=1] run scoreboard players set @s MaxHealth 10000
scoreboard players operation @e[tag=this_entity,limit=1] MaxHealth *= #multiply_health Selected
scoreboard players operation @e[tag=this_entity,limit=1] MaxHealth /= #100 Constants
scoreboard players operation @e[tag=this_entity,limit=1] MaxHealth += #extra_health Selected
execute as @e[tag=this_entity,limit=1] if score @s LastHealth matches -1 store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.clockwork_soldiers.blue_health int 1 run scoreboard players operation @s LastHealth = @s MaxHealth
execute as @e[tag=this_entity,limit=1] run scoreboard players operation @s Health = @s LastHealth
execute as @e[tag=this_entity,limit=1] run scoreboard players operation @s PrevHealth = @s Health
scoreboard players set @e[tag=this_entity,limit=1] PullStrength 10
scoreboard players set @e[tag=this_entity,limit=1] WaitTime 0
scoreboard players set @e[tag=this_entity,limit=1] Distance 0
scoreboard players set @e[tag=this_entity,limit=1] Move 3
scoreboard players set @e[tag=this_entity,limit=1] Sound 0
scoreboard players set @e[tag=this_entity,limit=1] StunTime 0
scoreboard players set @e[tag=this_entity,limit=1] VulnerableTime 0
scoreboard players set @e[tag=this_entity,limit=1] VacuumTime 0
tag @e[tag=this_entity,limit=1] remove this_entity