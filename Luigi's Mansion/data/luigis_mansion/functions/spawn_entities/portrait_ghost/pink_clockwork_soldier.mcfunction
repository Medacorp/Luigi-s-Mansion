summon minecraft:wither_skeleton ~ ~ ~ {CustomName:'{"translate":"luigis_mansion:entity.clockwork_soldiers"}',NoAI:1b,NoGravity:1b,CustomNameVisible:1b,Invulnerable:1b,ArmorItems:[{},{id:"minecraft:leather_leggings",Count:1b,tag:{AttributeModifiers:[],Unbreakable:1b,display:{color:16751615}}},{id:"minecraft:golden_chestplate",Count:1b,tag:{AttributeModifiers:[],Unbreakable:1b}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Properties:{textures:[{Signature:"QqnQ854/lVvXXHgcaYkYiO5SrCkMaTn6oYo1lyqdIGijK66zraXJWiz+PKA+pJZoOGwTPx9+VG1MFTVP6/GfIDgp9sfgZrblHwF3KavGTJDV6sZM5Vym3DCBBMOsqw8ySX9LEG17ldN2EIOFnUpIFx4ddiTeZI+7eycc8ekgU1r4StzaU9iP8UC8HfJfnCzvgzdHtM7d5xgRf3gqHp08kacIANeWX/RKUyQImJd869k1qTMymOUTPkTJO4djPuQC2SLHvRbs6JtQA2E5/kezde8ueTDkSwY1UAzI6P+WhhNodMbxS9DZCMvrnrwa8sA5ta1bQDCCz+Y54bgaxu6UakGvgy7YQl/cqLms+VHvqOaKK6XeaTy6CS0BRMzEzdXfaHxmJqrgU/Djw4mAOruhBvtmkV8NkXPKsLgC+g/TqhWOAj0ivYIB0y/FPP0uqZ8owyIAxhdQX6NcY1vNXTag58GXvFFeEGN8IAtxBL4QfczadseIxVInJAAIicIMKf2OnCsyKNsC3o5v3KpQWbUwUMALABy/2DzWEoWJGz0vT3ZBfnptW9sLeJ6RCq0fD0S6Vmt4JxrQ7n0ygfIMeZNGyr1N5LA+8ST76hDo36HLj9fU5fTXlFClgidB4Eq+RDDG5vfAsEnO5pSHcHFqaXn+0Y94NKHa4kLVCQlOhD+wokE=",Value:"eyJ0aW1lc3RhbXAiOjE0NDc5NDgzMDI0ODMsInByb2ZpbGVJZCI6Ijc5YmY5OWUxNjIxYzRlOTFiZDgxYTc3YTA4YjM4NmJhIiwicHJvZmlsZU5hbWUiOiJGVmJpY28iLCJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTQxZDM3NGFjYjgwNGU5MTZiODUyNGI3MmJlZWE1NDg5ZThlMTQ3NmVhOWZmNDNlZTg0NTg1YTFmMzRhN2QifX19"}]},Name:"Pink Clockwork Soldier"}}}],Silent:1b,AbsorptionAmount:100.0f,HandItems:[{id:"minecraft:diamond_shovel",Count:1b},{}],HandDropChances:[0.0f,1.0f],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],PersistenceRequired:1b,LeftHanded:0b,Tags:["pink_clockwork_soldier","clockwork_soldier","portrait_ghost","ghost","this_entity"]}
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
execute as @e[tag=this_entity,limit=1] store result score @s GhostNr run data get storage luigis_mansion:data ghost_nr
execute as @e[tag=this_entity,limit=1] store result storage luigis_mansion:data ghost_nr int 1 run scoreboard players add @s GhostNr 1
execute as @e[tag=this_entity,limit=1] store result score @s HomeX run data get entity @s Pos[0] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeY run data get entity @s Pos[1] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeZ run data get entity @s Pos[2] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeRot run data get entity @s Rotation[0]
execute as @e[tag=this_entity,limit=1] store result score @s LastHealth run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.clockwork_soldiers.pink_health
execute as @e[tag=this_entity,limit=1] run scoreboard players set @s MaxHealth 10000
scoreboard players operation @e[tag=this_entity,limit=1] MaxHealth *= #multiply_health Selected
scoreboard players operation @e[tag=this_entity,limit=1] MaxHealth /= #100 Constants
scoreboard players operation @e[tag=this_entity,limit=1] MaxHealth += #extra_health Selected
execute as @e[tag=this_entity,limit=1] if score @s LastHealth matches -1 store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.clockwork_soldiers.pink_health int 1 run scoreboard players operation @s LastHealth = @s MaxHealth
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