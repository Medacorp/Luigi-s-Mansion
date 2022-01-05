data modify storage luigis_mansion:data current_state.current_data.obtained_keys merge value {hallway_3:1b}
scoreboard players set @a[tag=same_room,tag=!looking_at_map,nbt={Inventory:[{tag:{luigis_mansion:{id:"luigis_mansion:gameboy_horror"}}}]}] OpenMapFocus 6
scoreboard players set @a GBHCall 2
execute as @a unless entity @s[scores={MusicGroup=0,MusicType=2..5}] unless entity @s[scores={MusicGroup=0,MusicType=22}] unless entity @s[scores={MusicGroup=0,MusicType=24}] unless entity @s[scores={MusicGroup=0,MusicType=38}] unless entity @s[scores={MusicGroup=0,MusicType=19}] unless entity @s[scores={MusicGroup=0,MusicType=27}] run function luigis_mansion:other/music/set/gameboy_horror_calling
function luigis_mansion:items/key/boss_sound