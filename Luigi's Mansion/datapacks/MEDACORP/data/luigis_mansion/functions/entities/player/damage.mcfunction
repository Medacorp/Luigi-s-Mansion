execute unless data storage luigis_mansion:data my_memory run function luigis_mansion:entities/player/memory/get with entity @s
execute if data storage luigis_mansion:data damage.amount store result score @s Damage run data get storage luigis_mansion:data damage.amount
execute if data storage luigis_mansion:data damage.amount run scoreboard players operation @s[scores={Room=1..}] Damage *= #multiply_hurt Selected
execute if data storage luigis_mansion:data damage.amount run scoreboard players operation @s[scores={Room=1..}] Damage /= #100 Constants
execute if data storage luigis_mansion:data damage.durning_knockback_amount store result score @s KnockbackDamage run data get storage luigis_mansion:data damage.durning_knockback_amount
execute if data storage luigis_mansion:data damage.method if entity @s[scores={KnockbackDamage=1..,Invulnerable=0}] run data modify storage luigis_mansion:data my_memory.hurt_by.method set from storage luigis_mansion:data damage.method
execute if data storage luigis_mansion:data damage.method if entity @s[scores={Damage=1..,Invulnerable=0}] run data modify storage luigis_mansion:data my_memory.hurt_by.method set from storage luigis_mansion:data damage.method
execute if data storage luigis_mansion:data damage.attacker if entity @s[scores={KnockbackDamage=1..,Invulnerable=0}] run data modify storage luigis_mansion:data my_memory.hurt_by.attacker set from storage luigis_mansion:data damage.attacker
execute if data storage luigis_mansion:data damage.attacker if entity @s[scores={Damage=1..,Invulnerable=0}] run data modify storage luigis_mansion:data my_memory.hurt_by.attacker set from storage luigis_mansion:data damage.attacker
execute if data storage luigis_mansion:data damage.attacker run scoreboard players set @s AttackerMemory 200
execute if data storage luigis_mansion:data damage{knockback:"small"} run function luigis_mansion:entities/player/knockback/small
execute if data storage luigis_mansion:data damage{knockback:"medium"} run function luigis_mansion:entities/player/knockback/medium
execute if data storage luigis_mansion:data damage{knockback:"medium_forward"} run function luigis_mansion:entities/player/knockback/medium_forward
execute if data storage luigis_mansion:data damage{knockback:"large"} run function luigis_mansion:entities/player/knockback/large
execute if data storage luigis_mansion:data damage{knockback:"burn"} run function luigis_mansion:entities/player/knockback/burn
execute if data storage luigis_mansion:data damage{knockback:"soak"} run function luigis_mansion:entities/player/knockback/soak
execute if data storage luigis_mansion:data damage{knockback:"freeze"} run function luigis_mansion:entities/player/knockback/freeze
execute if data storage luigis_mansion:data damage{knockback:"harmless_grab"} run function luigis_mansion:entities/player/knockback/harmless_grab
execute if data storage luigis_mansion:data damage{knockback:"harmfull_grab"} run function luigis_mansion:entities/player/knockback/harmfull_grab
execute if data storage luigis_mansion:data damage{knockback:"bite"} run function luigis_mansion:entities/player/knockback/bite
execute if data storage luigis_mansion:data damage{knockback:"slip"} run function luigis_mansion:entities/player/knockback/slip
execute if data storage luigis_mansion:data damage{knockback:"fake_door"} run function luigis_mansion:entities/player/knockback/fake_door
execute if data storage luigis_mansion:data damage{knockback:"flee"} run function luigis_mansion:entities/player/knockback/flee
execute if data storage luigis_mansion:data damage{knockback:"flee_look_up"} run function luigis_mansion:entities/player/knockback/flee_look_up
execute if data storage luigis_mansion:data damage{knockback:"scare"} run function luigis_mansion:entities/player/scare/normal
execute if data storage luigis_mansion:data damage{knockback:"bash_scare"} run function luigis_mansion:entities/player/scare/bash
execute if data storage luigis_mansion:data damage{knockback:"bash_no_move_scare"} run function luigis_mansion:entities/player/scare/bash_no_move
execute if data storage luigis_mansion:data damage{knockback:"freeze_scare"} run function luigis_mansion:entities/player/scare/freeze
scoreboard players operation @s LastHealth = @s Health
execute if entity @s[scores={Damage=1..,Invulnerable=0},gamemode=!creative,gamemode=!spectator] run function luigis_mansion:entities/player/damage/hurt
execute if data storage luigis_mansion:data damage.limit_health store result score @s Damage run data get storage luigis_mansion:data damage.limit_health
execute if data storage luigis_mansion:data damage.limit_health run scoreboard players operation @s MaxHealth < @s Damage
execute if data storage luigis_mansion:data damage.limit_health run scoreboard players reset @s Damage
data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
data remove storage luigis_mansion:data my_memory
execute if entity @s[scores={Health=0,LastHealth=1..}] run function luigis_mansion:other/death_message
scoreboard players reset @s LastHealth
execute unless data storage luigis_mansion:data damage{no_delete:1b} run data remove storage luigis_mansion:data damage