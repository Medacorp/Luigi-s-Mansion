execute unless data storage luigis_mansion:data {data_version:5} run function luigis_mansion:other/upgrade_path/root/v3.0.1
data modify storage luigis_mansion:data {} merge value {data_version:6,saved_state:{ghosts_caught:{boos:{}},portrait_ghosts_defeated_in:{luigis_mansion:{neville:[],lydia:[],chauncey:[],floating_whirlindas:[],shivers:[],melody_pianissima:[],mr_luggs:[],spooky:[],bogmire:[],biff_atlas:[],miss_petunia:[],nana:[],slim_bankshot:[],henry_and_orville:[],madame_clairvoya:[],boolossus:[],uncle_grimmly:[],clockwork_soldiers:[],sue_pea:[],jarvis:[],sir_weston:[],vincent_van_gore:[],king_boo:[]}}},current_state:{ghosts_caught:{boos:{}},portrait_ghosts_defeated_in:{luigis_mansion:{neville:[],lydia:[],chauncey:[],floating_whirlindas:[],shivers:[],melody_pianissima:[],mr_luggs:[],spooky:[],bogmire:[],biff_atlas:[],miss_petunia:[],nana:[],slim_bankshot:[],henry_and_orville:[],madame_clairvoya:[],boolossus:[],uncle_grimmly:[],clockwork_soldiers:[],sue_pea:[],jarvis:[],sir_weston:[],vincent_van_gore:[],king_boo:[]}}}}
data modify storage luigis_mansion:data memory[].poltergust_latch_on_order set value []
data remove storage luigis_mansion:data elemental_source_nr
scoreboard objectives remove Turn
scoreboard objectives remove Talk
scoreboard players set @e[tag=ghost,scores={VulnerableTime=0..}] PullAngle 120
scoreboard players set @e[tag=ghost,scores={VulnerableTime=0..}] PullStrength 0
scoreboard players reset #temp
scoreboard players reset #guest_room_plant_flipped