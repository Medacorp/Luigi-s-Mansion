scoreboard objectives add ActionTime dummy
scoreboard objectives add Angle dummy
scoreboard objectives add AnimationProg dummy
scoreboard objectives add BannanaDropTime dummy
scoreboard objectives add Boos dummy
scoreboard objectives add BooTimer dummy
scoreboard objectives add ChangedMansion dummy
scoreboard objectives add ClairvoyaChoice trigger
scoreboard objectives add ClairvoyaSpoke dummy
scoreboard objectives add ClickEventCheck trigger
scoreboard objectives add Constants dummy
scoreboard objectives add Damage dummy
scoreboard objectives add DamagePitch dummy
scoreboard objectives add DamagePitchTimer dummy
scoreboard objectives add Dialog dummy
scoreboard objectives add Distance dummy
scoreboard objectives add ElementHurtTime dummy
scoreboard objectives add ElementalNr dummy
scoreboard objectives add EGaddCallChoice trigger
scoreboard objectives add EGaddGPRChoice trigger
scoreboard objectives add EGaddLabChoice trigger
scoreboard objectives add EGaddTrainChoice trigger
scoreboard objectives add FakeDoors dummy
scoreboard objectives add FlashlightType trigger
scoreboard objectives add FlyTime dummy
scoreboard objectives add Food food
scoreboard objectives add ForcedDamage dummy
scoreboard objectives add GBHCall dummy
scoreboard objectives add GBHChoice trigger
scoreboard objectives add GBHRadar dummy
scoreboard objectives add GBHWait dummy
scoreboard objectives add GhostCaught dummy
scoreboard objectives add GhostCount dummy
scoreboard objectives add GhostNr dummy
scoreboard objectives add GhostGuyCouple dummy
scoreboard objectives add Health dummy
scoreboard objectives add HideTime dummy
scoreboard objectives add HomeRot dummy
scoreboard objectives add HomeRotX dummy
scoreboard objectives add HomeRotY dummy
scoreboard objectives add HomeX dummy
scoreboard objectives add HomeY dummy
scoreboard objectives add HomeZ dummy
scoreboard objectives add HurtTime dummy
scoreboard objectives add ID dummy
scoreboard objectives add IncreaseAmount dummy
scoreboard objectives add Invulnerable dummy
scoreboard objectives add JarvisChoice trigger
scoreboard objectives add Jump minecraft.custom:minecraft.jump
scoreboard objectives add JumpHeight dummy
scoreboard objectives add Keys dummy
scoreboard objectives add KillerID dummy
scoreboard objectives add LastFloor dummy
scoreboard objectives add LastHealth dummy
scoreboard objectives add LastRoom dummy
scoreboard objectives add LastTotalDamage dummy
scoreboard objectives add LightStep dummy
scoreboard objectives add LightX dummy
scoreboard objectives add LightY dummy
scoreboard objectives add LightZ dummy
scoreboard objectives add Loaded dummy
scoreboard objectives add LoadedChunks dummy
scoreboard objectives add MansionChoice trigger
scoreboard objectives add MaxHealth dummy
scoreboard objectives add MaxHealthTime dummy
scoreboard objectives add MelodyChoice trigger
scoreboard objectives add MirrorX dummy
scoreboard objectives add MirrorZ dummy
scoreboard objectives add ModelTime dummy
scoreboard objectives add Money dummy
scoreboard objectives add Move dummy
scoreboard objectives add Music dummy
scoreboard objectives add MusicGroup dummy
scoreboard objectives add MusicType dummy
scoreboard objectives add Offline minecraft.custom:minecraft.leave_game
scoreboard objectives add OtherX dummy
scoreboard objectives add OtherY dummy
scoreboard objectives add OtherZ dummy
scoreboard objectives add PassiveNr dummy
scoreboard objectives add PathStep dummy
scoreboard objectives add PlayerRotation dummy
scoreboard objectives add PosX dummy
scoreboard objectives add PosY dummy
scoreboard objectives add PosZ dummy
scoreboard objectives add PrevHealth dummy
scoreboard objectives add PrevMusicType dummy
scoreboard objectives add PrevRoom dummy
scoreboard objectives add PrevTotalDamage dummy
scoreboard objectives add Pull dummy
scoreboard objectives add PullStrength dummy
scoreboard objectives add PunchingBag dummy
scoreboard objectives add Range dummy
scoreboard objectives add ReadBook minecraft.used:minecraft.written_book
scoreboard objectives add ReflectionNr dummy
scoreboard objectives add ResetChoice trigger
scoreboard objectives add ResetMansion dummy
scoreboard objectives add ReturnTimer dummy
scoreboard objectives add Room dummy
scoreboard objectives add RoomNoise dummy
scoreboard objectives add RoomSection dummy
scoreboard objectives add RotationDif dummy
scoreboard objectives add Run minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add Search dummy
scoreboard objectives add Searched dummy
scoreboard objectives add Searching dummy
scoreboard objectives add Selected dummy
scoreboard objectives add Shrunk dummy
scoreboard objectives add ShrunkNr dummy
scoreboard objectives add Sneak minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add Sneaking minecraft.custom:minecraft.sneak_time
scoreboard objectives add SneakTime dummy
scoreboard objectives add Sound dummy
scoreboard objectives add SpawnTime dummy
scoreboard objectives add Steps dummy
scoreboard objectives add StunTime dummy
scoreboard objectives add Talk minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add TargetX dummy
scoreboard objectives add TargetY dummy
scoreboard objectives add TargetZ dummy
scoreboard objectives add Ticking dummy
scoreboard objectives add Time dummy
scoreboard objectives add Toad1Choice trigger
scoreboard objectives add Toad2Choice trigger
scoreboard objectives add Toad3Choice trigger
scoreboard objectives add Toad4Choice trigger
scoreboard objectives add Toad5Choice trigger
scoreboard objectives add TopVacuumDamage dummy
scoreboard objectives add TotalDamage dummy
scoreboard objectives add Totals dummy
scoreboard objectives add TrainingOption trigger
scoreboard objectives add Turn dummy
scoreboard objectives add TwinsChoice trigger
scoreboard objectives add UseItem minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add Vacuumables dummy
scoreboard objectives add VacuumTime dummy
scoreboard objectives add Variant dummy
scoreboard objectives add VulnerableTime dummy
scoreboard objectives add WaitTime dummy
scoreboard objectives add Walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add WalkOnWater minecraft.custom:minecraft.walk_on_water_one_cm
scoreboard objectives add WalkUnderWater minecraft.custom:minecraft.walk_under_water_one_cm
scoreboard objectives add Wave dummy
scoreboard objectives add Wool dummy

scoreboard players set #-1 Constants -1
scoreboard players set #2 Constants 2
scoreboard players set #5 Constants 5
scoreboard players set #10 Constants 10
scoreboard players set #20 Constants 20
scoreboard players set #30 Constants 30
scoreboard players set #50 Constants 50
scoreboard players set #60 Constants 60
scoreboard players set #100 Constants 100
scoreboard players set #200 Constants 200
scoreboard players set #256 Constants 256
scoreboard players set #500 Constants 500
scoreboard players set #800 Constants 800
scoreboard players set #1000 Constants 1000
scoreboard players set #2000 Constants 2000
scoreboard players set #10000 Constants 10000
scoreboard players set #20000 Constants 20000

scoreboard objectives setdisplay list Health

execute unless score #loaded_exterior Selected matches -2147483648.. run scoreboard players set #loaded_exterior Selected 0
execute unless score #mansion_type Selected matches -2147483648.. run scoreboard players set #mansion_type Selected 0
execute unless score #mansion_data_index Selected matches -2147483648.. run data modify storage luigis_mansion:data {} merge value {data_version:1,ghost_nr:0,passive_nr:0,elemental_source_nr:0,luigi_colors:[],luigi:{gliding:0b,swimming:0b,mainhand:{},offhand:{}},entered_mansion:0b,used_parlor_key:0b,obtained_parlor_key:0b,found_e_gadd:0b,rooms:{underground_lab:{seen:0b,cleared:0b},training_room:{seen:0b,cleared:0b},ghost_portrificationizer_room:{seen:0b,cleared:0b},gallery:{seen:0b,cleared:0b}},high_scores:[],portrait_ghost_ranks:{neville:-1b,lydia:-1b,chauncey:-1b,floating_whirlindas:-1b,shivers:-1b,melody_pianissima:-1b,mr_luggs:-1b,spooky:-1b,bogmire:-1b,biff_atlas:-1b,miss_petunia:-1b,nana:-1b,slim_bankshot:-1b,henry_and_orville:-1b,madame_clairvoya:-1b,boolossus:-1b,uncle_grimmly:-1b,clockwork_soldiers:-1b,sue_pea:-1b,jarvis:-1b,sir_weston:-1b,vincent_van_gore:-1b,king_boo:-1b},saved_state:{mansion_data:[],ghosts_caught:[],money_grabbed:[]},current_state:{mansion_data:[],ghosts_caught:[],money_grabbed:[],current_data:{data_version:1,data_index:0,in_mansion_time:0,lowest_health_moment:100,caught_ghosts:[],money_grabbed:[],boo_counter:0,dead_players:[],technical_data:{},used_keys:{},obtained_keys:{},obtained_items:{},money_spawned:{},rooms:{foyer:{seen:1b,cleared:0b},hallway_1:{seen:1b,cleared:0b},parlor:{seen:1b,cleared:0b},anteroom:{seen:0b,cleared:0b},wardrobe_room:{seen:0b,cleared:0b},balcony_1:{seen:0b,cleared:0b},hallway_2:{seen:0b,cleared:0b},study:{seen:0b,cleared:0b},master_bedroom:{seen:0b,cleared:0b},nursery:{seen:0b,cleared:0b},hallway_3:{seen:0b,cleared:0b},hallway_4:{seen:0b,cleared:0b},hallway_5:{seen:0b,cleared:0b},hallway_6:{seen:0b,cleared:0b},hallway_7:{seen:0b,cleared:0b},bathroom_1:{seen:0b,cleared:0b},ball_room:{seen:0b,cleared:0b},storage_room:{seen:0b,cleared:0b},washroom_1:{seen:0b,cleared:0b},fortune_tellers_room:{seen:0b,cleared:0b},mirror_room:{seen:0b,cleared:0b},laundry_room:{seen:0b,cleared:0b},butlers_room:{seen:0b,cleared:0b},hidden_room:{seen:0b,cleared:0b},conservatory:{seen:0b,cleared:0b},dining_room:{seen:0b,cleared:0b},kitchen:{seen:0b,cleared:0b},boneyard:{seen:0b,cleared:0b},graveyard:{seen:0b,cleared:0b},courtyard:{seen:0b,cleared:0b},bottom_of_the_well:{seen:0b,cleared:0b},rec_room:{seen:0b,cleared:0b},hallway_8:{seen:0b,cleared:0b},tea_room:{seen:0b,cleared:0b},hallway_9:{seen:0b,cleared:0b},hallway_10:{seen:0b,cleared:0b},hallway_11:{seen:0b,cleared:0b},hallway_12:{seen:0b,cleared:0b},hallway_13:{seen:0b,cleared:0b},hallway_14:{seen:0b,cleared:0b},hallway_15:{seen:0b,cleared:0b},washroom_2:{seen:0b,cleared:0b},bathroom_2:{seen:0b,cleared:0b},nanas_room:{seen:0b,cleared:0b},astral_hall:{seen:0b,cleared:0b},observatory:{seen:0b,cleared:0b},billiards_room:{seen:0b,cleared:0b},projection_room:{seen:0b,cleared:0b},twins_room:{seen:0b,cleared:0b},safari_room:{seen:0b,cleared:0b},hallway_16:{seen:0b,cleared:0b},hallway_17:{seen:0b,cleared:0b},balcony_2:{seen:0b,cleared:0b},hallway_18:{seen:0b,cleared:0b},hallway_19:{seen:0b,cleared:0b},telephone_room:{seen:0b,cleared:0b},breaker_room:{seen:0b,cleared:0b},cellar:{seen:0b,cleared:0b},hallway_20:{seen:0b,cleared:0b},hallway_21:{seen:0b,cleared:0b},hallway_22:{seen:0b,cleared:0b},clockwork_room:{seen:0b,cleared:0b},roof:{seen:0b,cleared:0b},armory:{seen:0b,cleared:0b},ceramics_studio:{seen:0b,cleared:0b},sealed_room:{seen:0b,cleared:0b},pipe_room:{seen:0b,cleared:0b},cold_storage:{seen:0b,cleared:0b},sitting_room:{seen:0b,cleared:0b},guest_room:{seen:0b,cleared:0b},artists_studio:{seen:0b,cleared:0b},secret_altar:{seen:0b,cleared:0b}},portrait_ghosts:{neville:{portrificationized:0b,top_vacuum_damage:0,health:10000,max_health:10000,rank:-1bb,loot:{}},lydia:{portrificationized:0b,top_vacuum_damage:0,health:10000,max_health:10000,rank:-1bb,loot:{}},chauncey:{portrificationized:0b,top_vacuum_damage:0,health:10000,max_health:10000,rank:-1bb,loot:{}},floating_whirlindas:{portrificationized:0b,top_vacuum_damage:0,health:10000,max_health:10000,rank:-1bb,loot:{}},shivers:{portrificationized:0b,top_vacuum_damage:0,health:10000,max_health:10000,rank:-1bb,loot:{}},melody_pianissima:{portrificationized:0b,top_vacuum_damage:0,health:10000,max_health:10000,rank:-1bb,loot:{}},mr_luggs:{portrificationized:0b,top_vacuum_damage:0,health:10000,max_health:10000,rank:-1bb,loot:{}},spooky:{portrificationized:0b,top_vacuum_damage:0,health:10000,max_health:10000,rank:-1bb,loot:{}},bogmire:{portrificationized:0b,top_vacuum_damage:0,health:10000,max_health:10000,rank:-1bb,loot:{}},biff_atlas:{portrificationized:0b,top_vacuum_damage:0,health:10000,max_health:10000,rank:-1bb,loot:{}},miss_petunia:{portrificationized:0b,top_vacuum_damage:0,health:10000,max_health:10000,rank:-1bb,loot:{}},nana:{portrificationized:0b,top_vacuum_damage:0,health:10000,max_health:10000,rank:-1bb,loot:{}},slim_bankshot:{portrificationized:0b,top_vacuum_damage:0,health:10000,max_health:10000,rank:-1bb,loot:{}},henry_and_orville:{portrificationized:0b,henry_top_vacuum_damage:0,orville_top_vacuum_damage:0,henry_health:10000,henry_max_health:10000,orville_health:10000,orville_max_health:10000,rank:-1bb,henry_loot:{},orville_loot:{}},madame_clairvoya:{portrificationized:0b,top_vacuum_damage:0,health:10000,max_health:10000,rank:-1bb,loot:{}},boolossus:{portrificationized:0b,health:15,max_health:15,rank:-1bb,loot:{}},uncle_grimmly:{portrificationized:0b,top_vacuum_damage:0,health:10000,max_health:10000,rank:-1bb,loot:{}},clockwork_soldiers:{portrificationized:0b,pink_top_vacuum_damage:0,blue_top_vacuum_damage:0,green_top_vacuum_damage:0,pink_health:10000,pink_max_health:10000,blue_health:10000,blue_max_health:10000,green_health:10000,green_max_health:10000,rank:-1bb,pink_loot:{},blue_loot:{},green_loot:{}},jarvis:{portrificationized:0b,top_vacuum_damage:0,health:10000,max_health:10000,rank:-1bb,loot:{}},sir_weston:{portrificationized:0b,top_vacuum_damage:0,health:10000,max_health:10000,rank:-1bb,loot:{}},sue_pea:{portrificationized:0b,top_vacuum_damage:0,health:10000,max_health:10000,rank:-1bb,loot:{}},vincent_van_gore:{portrificationized:0b,top_vacuum_damage:0,health:10000,max_health:10000,rank:-1bb,loot:{}},king_boo:{portrificationized:0b,health:50000,max_health:50000,rank:-1bb,loot:{red_diamond:1}}},boos:[{name:"bamboo",room:3,trap_found:0b,loot:{},speed:6,health:3000},{name:"bootha",room:4,trap_found:0b,loot:{},speed:6,health:5000},{name:"gameboo_advance",room:5,trap_found:0b,loot:{},speed:6,health:3000},{name:"taboo",room:8,trap_found:0b,loot:{},speed:6,health:5000},{name:"boolicious",room:9,trap_found:0b,loot:{},speed:6,health:3000},{name:"turboo",room:10,trap_found:0b,loot:{},speed:6,health:5000},{name:"boo_la_la",room:17,trap_found:0b,loot:{},speed:6,health:6000},{name:"gameboo",room:18,trap_found:0b,loot:{},speed:6,health:5000},{name:"kung_boo",room:21,trap_found:0b,loot:{},speed:6,health:4000},{name:"boogie",room:22,trap_found:0b,loot:{},speed:6,health:4000},{name:"peekaboo",room:23,trap_found:0b,loot:{},speed:6,health:4000},{name:"gumboo",room:24,trap_found:0b,loot:{},speed:6,health:4000},{name:"boomeo",room:25,trap_found:0b,loot:{},speed:6,health:4000},{name:"boodacious",room:26,trap_found:0b,loot:{},speed:6,health:8000},{name:"booligan",room:27,trap_found:0b,loot:{},speed:6,health:8000},{name:"booregard",room:32,trap_found:0b,loot:{},speed:6,health:10000},{name:"mr_boojangles",room:34,trap_found:0b,loot:{},speed:6,health:5000},{name:"limbooger",room:44,trap_found:0b,loot:{},speed:6,health:10000},{name:"boonswoggle",room:45,trap_found:0b,loot:{},speed:6,health:10000},{name:"boohoo",room:47,trap_found:0b,loot:{},speed:6,health:5000},{name:"shamboo",room:48,trap_found:0b,loot:{},speed:6,health:5000},{name:"booris",room:49,trap_found:0b,loot:{},speed:6,health:10000},{name:"booigi",room:20,trap_found:0b,loot:{},speed:6,health:4000},{name:"little_boo_peep",room:50,trap_found:0b,loot:{},speed:6,health:10000},{name:"boo_b_hatch",room:57,trap_found:0b,loot:{},speed:6,health:20000},{name:"booripedes",room:58,trap_found:0b,loot:{},speed:6,health:10000},{name:"boomerang",room:56,trap_found:0b,loot:{},speed:6,health:30000},{name:"booscaster",room:62,trap_found:0b,loot:{},speed:6,health:30000},{name:"underboo",room:64,trap_found:0b,loot:{},speed:6,health:15000},{name:"tamboorine",room:65,trap_found:0b,loot:{},speed:6,health:20000},{name:"booffant",room:67,trap_found:0b,loot:{},speed:6,health:30000},{name:"boolderdash",room:68,trap_found:0b,loot:{},speed:6,health:15000},{name:"boolivia",room:69,trap_found:0b,loot:{},speed:6,health:10000},{name:"boonita",room:70,trap_found:0b,loot:{},speed:6,health:10000},{name:"bootique",room:71,trap_found:0b,loot:{},speed:6,health:30000}],ghosts:{gold_ghost:{health:1000,loot:{}},temper_terror:{health:1000,loot:{}},speedy_spirit:{health:1000,loot:{}},purple_puncher:{health:2000,loot:{}},flash:{health:2000,loot:{}},blue_twirler:{health:3000,loot:{}},blue_blaze:{health:3000,loot:{}},garbage_can_ghost:{health:4000,loot:{}},ceiling_surprise:{health:1,loot:{}},purple_bomber:{health:1,loot:{}},bowling_ghost:{health:1,loot:{}},grabbing_ghost:{health:1000,loot:{}},red_grabbing_ghost:{health:2000,loot:{}},mirror_ghost:{health:2000,loot:{}},cinema_ghost:{health:2000,loot:{}},ghost_guy:{health:2000,loot:{}},dancing_ghost_guy:{health:2000,loot:{}},mr_bones:{health:3000,loot:{}},waiter:{health:1000,loot:{}},purple_bat:{loot:{}},yellow_bat:{loot:{}},blue_mouse:{loot:{}},purple_mouse:{loot:{}},gold_mouse:{loot:{}},pink_flying_fish:{loot:{}},green_flying_fish:{loot:{}},spark:{loot:{}},haunted_book:{loot:{}},haunted_teddy_bear:{loot:{}},haunted_music_sheet:{loot:{}},haunted_frying_pan:{loot:{}},haunted_plate:{loot:{}},haunted_jar:{loot:{}},haunted_clown_doll:{loot:{}},black_bogmire:{loot:{}}}}}}
execute unless score #mansion_data_index Selected matches -2147483648.. run scoreboard objectives setdisplay sidebar Element
execute unless score #mansion_data_index Selected matches -2147483648.. run scoreboard players set #mansion_data_index Selected 0
execute unless score #previous_mansion_index Selected matches -2147483648.. run scoreboard players set #previous_mansion_index Selected 0
execute unless score #mirrored Selected matches 0..1 run scoreboard players set #mirrored Selected 0
execute unless score #can_warp Selected matches 0..1 run scoreboard players set #can_warp Selected 1
execute unless score #multiply_hurt Selected matches 0.. run scoreboard players set #multiply_hurt Selected 100
execute unless score #multiply_damage Selected matches 0.. run scoreboard players set #multiply_damage Selected 100
execute unless score #changing_max_health Selected matches 0..1 run scoreboard players set #changing_max_health Selected 0
execute unless score #training_choice Selected matches 0..1 run scoreboard players set #training_choice Selected 0
execute unless score #force_gbh_screen Selected matches 0..1 run scoreboard players set #force_gbh_screen Selected 0
execute unless score #force_radar Selected matches 0..1 run scoreboard players set #force_radar Selected 0
execute unless score #radar_type Selected matches 0.. run scoreboard players set #radar_type Selected 0
execute unless score #ghost_heart_size Selected matches 0..100 run scoreboard players set #ghost_heart_size Selected 20
execute unless score #gbh_clock Selected matches 0.. run scoreboard players set #gbh_clock Selected 0
execute unless score #gbh_clock_increase Selected matches 0.. run scoreboard players set #gbh_clock_increase Selected 0
execute if score #gbh_clock_increase Selected matches 0 run scoreboard players set #gbh_clock Selected 0

gamerule doTileDrops false
gamerule maxCommandChainLength 2147483647