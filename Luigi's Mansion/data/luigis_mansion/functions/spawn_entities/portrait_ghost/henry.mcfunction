summon minecraft:zombie ~ ~ ~ {CustomName:'{"translate":"luigis_mansion:entity.henry"}',NoAI:1b,NoGravity:1b,CustomNameVisible:1b,Invulnerable:1b,ArmorItems:[{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1b,AttributeModifiers:[],display:{color:14256383}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Properties:{textures:[{Signature:"KtSVCUhd9LwxxFfFMWVyf8Giw6wDmSWP7noPNk2pRQxEcC5PmBP3BWg2rpY2qIGMTOb7QBpLLUmC1y9XiIJ0jxGa0SqGgzcLvZ99y70QwiTiGLmPQcwaLSTamn2kOXjnzSuYqlsV3sdul5+xtao2eQuzg5syL1OjpCIXrzFZnmTnPT9Jb2m52nRLsPO2YsMZU9oYwjZw/f3EPY2giaq2TswKk0AvD/7kEkvX2rhMhkHGVChcUmUkzBAStItu7+HkMZCYfcQ4kXbMM1Dg8apVKx/Y8DQUlZoxLjcK/k98vCoYLJaNyVr1oY/eEkyIobljqVOFdjkpauOp/g4ZupgNKLwStWiEnIvDUU45I4/y8vDzbu+hirGH4VCZx07OhwAhuwRsS12AbPcP26xU5LsQ/m4xswH/Pt6tTpnsyoLu/zSn1R14WuOzgD2Tb+OJ7zWYF5AB9/ZJafRX4BiBqjd65C73PX+JXYDUTOKCW5PHB+2iPq/ICdsB2dPw583U3dhqorHu8ofe43dzZdRFtBAPoepzAn3urTOE1b3FhTcn+cmAnht+rX9WMTFGGiC3xVcwjM6SV96chgRL/jhbaEoHfWnobSsowkNuYxM/cpZsj671cESWBP1pXKN+92HKtWeOjy1wLsNLLS4NFNZNCxl0MMmMEGYZcovv6zJDODqT54c=",Value:"eyJ0aW1lc3RhbXAiOjE0NDc5NDgzOTQ1NjYsInByb2ZpbGVJZCI6Ijc5YmY5OWUxNjIxYzRlOTFiZDgxYTc3YTA4YjM4NmJhIiwicHJvZmlsZU5hbWUiOiJGVmJpY28iLCJzaWduYXR1cmVSZXF1aXJlZCI6dHJ1ZSwidGV4dHVyZXMiOnsiU0tJTiI6eyJ1cmwiOiJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2U5ZDQ5NjMyOTA0ZGRkOTc4NzkwMjM0NmE5ODdiYjUwM2VhOTU0ZGVlNDJlODE0NWE5NDgyNTMxYzUyZjEzNCJ9fX0="}]},Name:"Twins"}}}],Silent:1b,AbsorptionAmount:100.0f,HandItems:[{},{}],HandDropChances:[1.0f,1.0f],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],PersistenceRequired:1b,LeftHanded:0b,Tags:["henry","portrait_ghost","ghost","this_entity"]}
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
execute as @e[tag=this_entity,limit=1] store result score @s GhostNr run data get storage luigis_mansion:data ghost_nr
execute as @e[tag=this_entity,limit=1] store result storage luigis_mansion:data ghost_nr int 1 run scoreboard players add @s GhostNr 1
execute as @e[tag=this_entity,limit=1] store result score @s HomeX run data get entity @s Pos[0] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeY run data get entity @s Pos[1] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeZ run data get entity @s Pos[2] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeRot run data get entity @s Rotation[0]
execute as @e[tag=this_entity,limit=1] store result score @s LastHealth run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.henry_and_orville.henry_health
execute as @e[tag=this_entity,limit=1] run scoreboard players set @s MaxHealth 10000
scoreboard players operation @e[tag=this_entity,limit=1] MaxHealth *= #multiply_health Selected
scoreboard players operation @e[tag=this_entity,limit=1] MaxHealth /= #100 Constants
scoreboard players operation @e[tag=this_entity,limit=1] MaxHealth += #extra_health Selected
execute as @e[tag=this_entity,limit=1] if score @s LastHealth matches -1 store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.henry_and_orville.henry_health int 1 run scoreboard players operation @s LastHealth = @s MaxHealth
execute as @e[tag=this_entity,limit=1] run scoreboard players operation @s Health = @s LastHealth
execute as @e[tag=this_entity,limit=1] run scoreboard players operation @s PrevHealth = @s Health
scoreboard players set @e[tag=this_entity,limit=1] PullStrength 10
scoreboard players set @e[tag=this_entity,limit=1] Move 2
scoreboard players set @e[tag=this_entity,limit=1] Sound 0
scoreboard players set @e[tag=this_entity,limit=1] StunTime 0
scoreboard players set @e[tag=this_entity,limit=1] VulnerableTime 0
tag @e[tag=this_entity,limit=1] remove this_entity