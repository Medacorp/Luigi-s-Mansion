scoreboard players set @s Health 0
execute store result score @s TopVacuumDamage run data get storage luigis_mansion:data current_state.luigis_mansion.current_data.portrait_ghosts[{name:{namespace:"luigis_mansion",id:"floating_whirlindas"}}].female.top_vacuum_damage
tag @s add dead