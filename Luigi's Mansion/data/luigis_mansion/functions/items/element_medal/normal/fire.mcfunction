data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {has_fire_element_medal:1b}
scoreboard players set @a GBHCall 6
execute as @a unless entity @s[scores={MusicType=2..5}] unless entity @s[scores={MusicType=22}] unless entity @s[scores={MusicType=24}] unless entity @s[scores={MusicType=38}] unless entity @s[scores={MusicType=19}] unless entity @s[scores={MusicType=27}] run function luigis_mansion:other/music/set/gameboy_horror_calling
function luigis_mansion:items/element_medal/sound