execute if entity @s[tag=dying,scores={HurtTime=1}] run playsound luigis_mansion:entity.henry.vacuumed hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=dead] run function luigis_mansion:entities/henry/at_death
execute if entity @s[tag=vanish] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.henry_and_orville.henry_health int 1 run scoreboard players operation @s LastHealth = @s Health

tag @s[tag=remove_hide_and_seek] add dead

execute if entity @s[scores={HurtTime=1},tag=hurt] run playsound luigis_mansion:entity.henry.hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={HurtTime=1},tag=hurt] Sound 40
execute if entity @s[scores={Sound=0},tag=fleeing] run playsound luigis_mansion:entity.henry.flee hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0},tag=fleeing] Sound 40

execute if entity @s[tag=!dead] unless entity @s[tag=!dialog,tag=!hide_and_seek] facing entity @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!fleeing,tag=!hurt,tag=!vanish,scores={StunTime=0},tag=!dialog,tag=!hide_and_seek] run function luigis_mansion:entities/henry/drive
execute if entity @s[tag=hide_and_seek] run function #luigis_mansion:entities/henry/hide_and_seek
execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/2_tall