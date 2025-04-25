execute unless data storage luigis_mansion:data my_memory run function luigis_mansion:entities/luigi/get_owner_memory
execute if data storage luigis_mansion:data damage.amount store result score @s Damage run data get storage luigis_mansion:data damage.amount
execute if data storage luigis_mansion:data damage.amount run scoreboard players operation @s[scores={Room=1..}] Damage *= #multiply_hurt Selected
execute if data storage luigis_mansion:data damage.amount run scoreboard players operation @s[scores={Room=1..}] Damage /= #100 Constants
execute if data storage luigis_mansion:data damage.durning_knockback_amount store result score @s KnockbackDamage run data get storage luigis_mansion:data damage.durning_knockback_amount
execute if data storage luigis_mansion:data damage.method if entity @s[scores={KnockbackDamage=1..,Invulnerable=0}] run data modify storage luigis_mansion:data my_memory.hurt_by.method set from storage luigis_mansion:data damage.method
execute if data storage luigis_mansion:data damage.method if entity @s[scores={Damage=1..,Invulnerable=0}] run data modify storage luigis_mansion:data my_memory.hurt_by.method set from storage luigis_mansion:data damage.method
execute if data storage luigis_mansion:data damage.animation{namespace:"luigis_mansion",id:"knockback/burn"} if entity @s[scores={Invulnerable=0},tag=gooigi] run data modify storage luigis_mansion:data my_memory.hurt_by.method set value {namespace:"3ds_remake",id:"melt"}
execute if data storage luigis_mansion:data damage.attacker if entity @s[scores={KnockbackDamage=1..,Invulnerable=0}] run data modify storage luigis_mansion:data new_attacker set from storage luigis_mansion:data damage.attacker
execute if data storage luigis_mansion:data damage.attacker if entity @s[scores={Damage=1..,Invulnerable=0}] run data modify storage luigis_mansion:data new_attacker set from storage luigis_mansion:data damage.attacker
execute if data storage luigis_mansion:data damage.attacker if data storage luigis_mansion:data new_attacker run function luigis_mansion:entities/player/memory/refresh_attacker with storage luigis_mansion:data
execute if data storage luigis_mansion:data damage.animation unless data storage luigis_mansion:data damage.animation.macro run function luigis_mansion:entities/luigi/damage/animation with storage luigis_mansion:data damage.animation
execute if data storage luigis_mansion:data damage.animation.macro run function luigis_mansion:entities/luigi/damage/animation_macro with storage luigis_mansion:data damage.animation
execute if entity @s[scores={Damage=1..,Invulnerable=0},tag=!creative] run function luigis_mansion:entities/luigi/damage/hurt
execute if data storage luigis_mansion:data damage.limit_health store result score @s Damage run data get storage luigis_mansion:data damage.limit_health
execute if data storage luigis_mansion:data damage.limit_health unless score #global_difficulty Selected matches 0 run scoreboard players operation @s MaxHealth < @s Damage
execute if data storage luigis_mansion:data damage.limit_health run scoreboard players reset @s Damage
data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
data remove storage luigis_mansion:data my_memory
function luigis_mansion:entities/luigi/health/sync
execute unless data storage luigis_mansion:data damage{no_delete:1b} run data remove storage luigis_mansion:data damage