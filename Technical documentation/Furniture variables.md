Furniture spawning takes certain variables, they are classified and listed below. The variables are saved in the storage "luigis_mansion:data furniture" object.

```
furniture: {
    // Display and sound
    pose:[0.0f,0.01f,0.0f], //The pose the furniture armor stand's head gets. The jaw is ignored and the pitch is copied over to the armor stand, ignoring execution rotation pitch.  Default = 0.0f,0.01f,0.0f
    no_long_shake:1b, //When set disables the long shaking animation from manual search. Default = 0b.
    no_short_shake:1b, //When set disables the short shaking animation from manual search. Default = 0b.
    no_visual_shake:1b, //When set disables the shaking animations visually; sound will still play. Default = 0b.
    use_medium_shake:1b, //When set forces a shake animation used by room clear chests, rather than the other 2. Default = 0b.
    sound:6, //What furniture shake sound. Defaults to 0.
    
    //search details
    searchable: ["<method>"], //Sets what method can result in searching. If "interact" is absent here, but provided in shake_animation, interact will still try to shake it, and trigger the search animaton it, but it won't actually get searched. Methods: time(will search automatically), interact, vacuum, dust, fire, water, ice. Default = none.
    shake_animation: [<method>], //Sets what method can result in the furniture shaking. Methods: interact, vacuum, dust, fire, water, ice. Default = none.
    searched:1b, //When set the furniture should spawn triggering its searched animation. If set for room clear chests, also stops the spawn sound from playing. Default = 0b.
    no_search_animation:1b, //When set the furniture has no search animation at all (eg on a chest doesn't open it). If set alongside searched, the furniture spawns in in the searched state, skipping the animation. Default = 0b.
    must_face:1b, //When set requires the player to face the opposite direction compared to this furniture (with 90 degree total range) in other to manually search it. Default = 0b.
    cannot_search_when_open:1b, //When set prevents the furniture from searching again if it has been opened. If set alongside searched, makes loot drop immedietly on spawn. Default = 0b.
    
    //search result
    no_dust:1b, //When set stop dust from popping out if the furniture is empty. Default = 0b.
    loot:{ //Loot to spawn. Do note that no dust will spawn if loot is attempted to be spawned, but the spawning is aborted (so make sure to check if it can spawn before applying the data). Default = none.
        works_in_lab:1b, //When set will still spawn while in the lab. Default = 0b.
        no_roll:1b, //When set will not spawn from non-manual/time search of rolling furniture. Default = 0b.
        //See loot documentation for other variables.
    },
    dialog:"<name>", //Dialog to trigger on manual search (requires searchable to have hand option). Default = none.
    can_hide_boo:1b, //If this furniture is randomly selected by boos to hide in. Default = 0b.
    scan_message:'{"translate":"..."}', //Message as a result from GBH scan. When set to "warp" warps the scanner if they're not Gooigi, not in a dialog, and the can_warp global variable is turned on (if conditions are not met, will send the message "Huh...?" instead). Gooigi scan always results in the "......." string when set to warp. Not provided = ignored by scan. Empty string = blocks scan.
    
    //non-default setup
    <type>_elemental_source:{ //Elemental source data, can only be applied to furniture supporting that elemental type. Default = none.
        always_spawn:1b, //When set the elemental ghost spawns regardless of distance. Default = 0b.
        must_vacuum:1b, //When set the elemental ghost only pops up when vacuuming nearby. Ignored if always_spawn is set. Default = 0b.
        must_be_searched:1b, //When set the elemental ghost only pops up when the furniture has triggered it's searched animation (ignored if it has none, or it is disabled). Default = 0b.
        timer:1b //When set it turns the spawning back on after 30 seconds of being disabled. Default = 0b.
    },
    tags: [], //A list of tags to append to the furniture's default tags, used to target the furniture in functions. Default = none.
    candle_flames:[ //Variables for the flames this candlabra has, one entry per flame. Default = empty object per flame.
        {
            lit:1b, //Whether this flame is lit. Default = 0b.
            purple:1b, //Whether this flame is purple. Default = 0b.
            cannot_extinguish:1b, //Whether this flame can be turned off by vacuum, dust and ice (water will still turn it off). Default = 0b.
            always_burn:1b, //Whether this flame can be turned off by anything at all. Default = 0b.
            fire_elemental_source:{}, //See <type>_elemental_source, above. Default = none.
            tags: [] //A list of tags to append to the flame's default tags, used to target the flame in functions. Default = none.
        }
    ]
}
```

Furniture shake sounds:
```
value | sound type
0     | heavy_generic
1     | generic
2     | heavy_metal
3     | metal
4     | stone
5     | wood
6     | ceramic
7     | plant
8     | fridge
9     | oven
10    | plate
11    | concrete
12    | cello
13    | drum
14    | harp
15    | saxophone
16    | xylophone
17    | chest
```