summon minecraft:wither_skeleton ~ ~ ~ {CustomName:'{"translate":"luigis_mansion:entity.clockwork_soldiers"}',NoAI:1b,NoGravity:1b,CustomNameVisible:1b,Invulnerable:1b,ArmorItems:[{},{id:"minecraft:leather_leggings",Count:1b,tag:{AttributeModifiers:[],Unbreakable:1b,display:{color:255155255}}},{id:"minecraft:golden_chestplate",Count:1b,tag:{AttributeModifiers:[],Unbreakable:1b}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Properties:{textures:[{Signature:"teWhmYpbgwe7O00hXfZYbWcDKDPPu6eIwpSqdiQqolLncaJS04qKqZXu+aMXkd94hFAXJ1sxz6OKRHKlNp1LVQKCsoF6NF8KCd4r5rqOg1pBHqsho55z+Ng5RMG8Gm8urqmpM4DTCGIvm8qZ6JKuRmHMHvNRjuoMHODCG0NPk1zHj8qGqQKAWYJffy0xmegvZRYC75B7qIyFmbPd0K7o/FzxHrcR2miHLUCMv1Z7Kc5fDvmz7rl0aqRr818YXhMVKhCMic197rdiEfe1gG2DvNxM4EhEY0mSWGM9Me53c/FNbME4C7NOjHElKXRPVULWAj7rHOQ2yELYki20K5H4Z0b/L0ns7cRw2RrUgn0ib7GyVErSKVwNyTgxGTWg+yyjV6YuYQFGvQNMTbSLuDdhlBx+Qi1hWJt6/HPGkCsni/a2NV6PJm4q6qh/zSgGsl1tEalrdxPGjBJCNWpxKVUMSMTf8hya7dFKy/IdD7LGUKI1/vwF6eclt3oyiatHQ9pg3wH35vKeQdlo1yMlNkKzJarC/aSU6+FoBCJEVhczKdEYt4/VhZqKlMnKD65vwF1nPTytxc3zbziOPbvTue+puRNUohDwJOxtHQltb69kBFz4n8OXXw9UNjuyZwqju/B7vdF6IisFYQBUZr0KWzNzLMZxnmSi83rfr9baXFHKDpo=",Value:"eyJ0aW1lc3RhbXAiOjE0NDc5NDgxNzM2NjksInByb2ZpbGVJZCI6Ijc5YmY5OWUxNjIxYzRlOTFiZDgxYTc3YTA4YjM4NmJhIiwicHJvZmlsZU5hbWUiOiJGVmJpY28iLCJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTA0ZGZjMTJhMjE0YzJiMDMzZDcxZTM3NmFlMWVkZDBkMDE0NjBlYzZmYzc1NzExYzJjMzIxNDdjNjI0OWVkNyJ9fX0="}]},Name:"Green Clockwork Soldier"}}}],Silent:1b,AbsorptionAmount:100.0f,HandItems:[{id:"minecraft:diamond_shovel",Count:1b},{}],HandDropChances:[0.0f,1.0f],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],PersistenceRequired:1b,LeftHanded:0b,Tags:["green_clockwork_soldier","clockwork_soldier","portrait_ghost","ghost","this_entity"]}
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
execute as @e[tag=this_entity,limit=1] store result score @s GhostNr run data get storage luigis_mansion:data ghost_nr
execute as @e[tag=this_entity,limit=1] store result storage luigis_mansion:data ghost_nr int 1 run scoreboard players add @s GhostNr 1
execute as @e[tag=this_entity,limit=1] store result score @s HomeX run data get entity @s Pos[0] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeY run data get entity @s Pos[1] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeZ run data get entity @s Pos[2] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeRot run data get entity @s Rotation[0]
execute as @e[tag=this_entity,limit=1] store result score @s LastHealth run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.clockwork_soldiers.green_health
execute as @e[tag=this_entity,limit=1] run scoreboard players set @s MaxHealth 10000
scoreboard players operation @e[tag=this_entity,limit=1] MaxHealth *= #multiply_health Selected
scoreboard players operation @e[tag=this_entity,limit=1] MaxHealth /= #100 Constants
scoreboard players operation @e[tag=this_entity,limit=1] MaxHealth += #extra_health Selected
execute as @e[tag=this_entity,limit=1] if score @s LastHealth matches -1 store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.clockwork_soldiers.green_health int 1 run scoreboard players operation @s LastHealth = @s MaxHealth
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