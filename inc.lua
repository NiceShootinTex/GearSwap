--------------------------------------------------------------------------------------------------
-- FILE: inc.lua
-- DESC: General utility functions that can be used by any job files.
--------------------------------------------------------------------------------------------------
-- Offense/Defense --
local off = 'atk'
local def = 'none'
local am = 'atk'
local sub = 'sub'
local swap = true

-- Special Spell Groups --
local spell_groups =
{
    -- Cure --
    ['Cure']       = 'Cure',
    ['Cure II']    = 'Cure',
    ['Cure III']   = 'Cure',
    ['Cure IV']    = 'Cure',
    ['Cure V']     = 'Cure',
    ['Cure VI']    = 'Cure',
    ['Cura']       = 'Cure',
    ['Cura II']    = 'Cure',
    ['Cura III']   = 'Cure',
    ['Curaga']     = 'Curaga',
    ['Curaga II']  = 'Curaga',
    ['Curaga III'] = 'Curaga',
    ['Curaga IV']  = 'Curaga',
    ['Curaga V']   = 'Curaga',

    
    -- Status Removal --
    ['Poisona']  = 'StatusRemoval',
    ['Paralyna'] = 'StatusRemoval',
    ['Silena']   = 'StatusRemoval',
    ['Blindna']  = 'StatusRemoval',
    ['Cursna']   = 'StatusRemoval',
    ['Stona']    = 'StatusRemoval',
    ['Viruna']   = 'StatusRemoval',
    ['Erase']    = 'StatusRemoval',

    -- Barspell --
    ['Barfire']     = 'BarElement',
    ['Barstone']    = 'BarElement',
    ['Barwater']    = 'BarElement',
    ['Baraero']     = 'BarElement',
    ['Barblizzard'] = 'BarElement',
    ['Barthunder']  = 'BarElement',
    ['Barfira']     = 'BarElement',
    ['Barstonra']   = 'BarElement',
    ['Barwatera']   = 'BarElement',
    ['Baraera']     = 'BarElement',
    ['Barblizzara'] = 'BarElement',
    ['Barthundra']  = 'BarElement',

    -- Raise --
    ['Raise']       = 'Raise',
    ['Raise II']    = 'Raise',
    ['Raise III']   = 'Raise',
    ['Arise']       = 'Raise',
    ['Reraise']     = 'Raise',
    ['Reraise II']  = 'Raise',
    ['Reraise III'] = 'Raise',

    -- Protect --
    ['Protect']       = 'Protect',
    ['Protect II']    = 'Protect',
    ['Protect III']   = 'Protect',
    ['Protect IV']    = 'Protect',
    ['Protect V']     = 'Protect',
    ['Protectra']     = 'Protect',
    ['Protectra II']  = 'Protect',
    ['Protectra III'] = 'Protect',
    ['Protectra IV']  = 'Protect',
    ['Protectra V']   = 'Protect',

    -- Shell --
    ['Shell']       = 'Shell',
    ['Shell II']    = 'Shell',
    ['Shell III']   = 'Shell',
    ['Shell IV']    = 'Shell',
    ['Shell V']     = 'Shell',
    ['Shellra']     = 'Shell',
    ['Shellra II']  = 'Shell',
    ['Shellra III'] = 'Shell',
    ['Shellra IV']  = 'Shell',
    ['Shellra V']   = 'Shell',

    -- Regen --
    ['Regen']     = 'Regen',
    ['Regen II']  = 'Regen',
    ['Regen III'] = 'Regen',
    ['Regen IV']  = 'Regen',
    ['Regen V']   = 'Regen',

    -- Refresh --
    ['Refresh']    = 'Refresh',
    ['Refresh II'] = 'Refresh',

    -- Teleports --
    ['Teleport-Holla'] = 'Teleport',
    ['Teleport-Dem']   = 'Teleport',
    ['Teleport-Mea']   = 'Teleport',
    ['Teleport-Altep'] = 'Teleport',
    ['Teleport-Yhoat'] = 'Teleport',
    ['Teleport-Vahzl'] = 'Teleport',
    ['Recall-Pashh']   = 'Teleport',
    ['Recall-Meriph']  = 'Teleport',
    ['Recall-Jugner']  = 'Teleport',

    -- Bard Songs --
    ['Valor Minuet']       = 'Minuet',
    ['Valor Minuet II']    = 'Minuet',
    ['Valor Minuet III']   = 'Minuet',
    ['Valor Minuet IV']    = 'Minuet',
    ['Valor Minuet V']     = 'Minuet',
    ["Knight's Minne"]     = 'Minne',
    ["Knight's Minne II"]  = 'Minne',
    ["Knight's Minne III"] = 'Minne',
    ["Knight's Minne IV"]  = 'Minne',
    ["Knight's Minne V"]   = 'Minne',
    ['Advancing March']    = 'March',
    ['Victory March']      = 'March',
    ['Sword Madrigal']     = 'Madrigal',
    ['Blade Madrigal']     = 'Madrigal',
    ["Hunter's Prelude"]   = 'Prelude',
    ["Archer's Prelude"]   = 'Prelude',
    ['Sheepfoe Mambo']     = 'Mambo',
    ['Dragonfoe Mambo']    = 'Mambo',
    ['Raptor Mazurka']     = 'Mazurka',
    ['Chocobo Mazurka']    = 'Mazurka',
    ["Mage's Ballad"]      = 'Ballad',
    ["Mage's Ballad II"]   = 'Ballad',
    ["Mage's Ballad III"]  = 'Ballad',
    ["Army's Paeon"]       = 'Paeon',
    ["Army's Paeon II"]    = 'Paeon',
    ["Army's Paeon III"]   = 'Paeon',
    ["Army's Paeon IV"]    = 'Paeon',
    ["Army's Paeon V"]     = 'Paeon',
    ["Army's Paeon VI"]    = 'Paeon',
    ['Fire Carol']         = 'Carol',
    ['Ice Carol']          = 'Carol',
    ['Wind Carol']         = 'Carol',
    ['Earth Carol']        = 'Carol',
    ['Lightning Carol']    = 'Carol',
    ['Water Carol']        = 'Carol',
    ['Light Carol']        = 'Carol',
    ['Dark Carol']         = 'Carol',
    ['Fire Carol II']      = 'Carol',
    ['Ice Carol II']       = 'Carol',
    ['Wind Carol II']      = 'Carol',
    ['Earth Carol II']     = 'Carol',
    ['Lightning Carol II'] = 'Carol',
    ['Water Carol II']     = 'Carol',
    ['Light Carol II']     = 'Carol',
    ['Dark Carol II']      = 'Carol',
    ['Foe Lullaby']        = 'Lullaby',
    ['Foe Lullaby II']     = 'Lullaby',
    ['Horde Lullaby']      = 'Lullaby',
    ['Horde Lullaby II']   = 'Lullaby',
    ['Fire Threnody']      = 'Threnody',
    ['Ice Threnody']       = 'Threnody',
    ['Wind Threnody']      = 'Threnody',
    ['Earth Threnody']     = 'Threnody',
    ['Lightning Threnody'] = 'Threnody',
    ['Water Threnody']     = 'Threnody',
    ['Light Threnody']     = 'Threnody',
    ['Dark Threnody']      = 'Threnody',
    ['Battlefield Elegy']  = 'Elegy',
    ['Carnage Elegy']      = 'Elegy',
    ['Foe Requiem']        = 'Requiem',
    ['Foe Requiem II']     = 'Requiem',
    ['Foe Requiem III']    = 'Requiem',
    ['Foe Requiem IV']     = 'Requiem',
    ['Foe Requiem V']      = 'Requiem',
    ['Foe Requiem VI']     = 'Requiem',
    ['Foe Requiem VII']    = 'Requiem',
    
    ['Sinewy Etude']     = 'Etude',
    ['Dextrous Etude']   = 'Etude',
    ['Vivacious Etude']  = 'Etude',
    ['Quick Etude']      = 'Etude',
    ['Learned Etude']    = 'Etude',
    ['Spirited Etude']   = 'Etude',
    ['Enchanting Etude'] = 'Etude',
    ['Herculean Etude']  = 'Etude',
    ['Uncanny Etude']    = 'Etude',
    ['Vital Etude']      = 'Etude',
    ['Swift Etude']      = 'Etude',
    ['Sage Etude']       = 'Etude',
    ['Logical Etude']    = 'Etude',
    ['Bewitching Etude'] = 'Etude',

    ['Utsusemi: Ichi'] = 'Utsusemi',
    ['Utsusemi: Ni']   = 'Utsusemi',

    ['Banish']      = 'Banish',
    ['Banish II']   = 'Banish',
    ['Banish III']  = 'Banish',
    ['Banishga']    = 'Banish',
    ['Banishga II'] = 'Banish',

    ['Slow']        = 'Enfeeble-MND',
    ['Slow II']     = 'Enfeeble-MND',
    ['Paralyze']    = 'Enfeeble-MND',
    ['Paralyze II'] = 'Enfeeble-MND',

    ['Holy']    = 'Holy',
    ['Holy II'] = 'Holy',

    ['Drain']    = 'Drain',
    ['Drain II'] = 'Drain',
    ['Aspir']    = 'Aspir',
    ['Aspir II'] = 'Aspir',
    
    ['Absorb-Str']   = 'Absorb',
    ['Absorb-Dex']   = 'Absorb',
    ['Absorb-Vit']   = 'Absorb',
    ['Absorb-Agi']   = 'Absorb',
    ['Absorb-Int']   = 'Absorb',
    ['Absorb-Mnd']   = 'Absorb',
    ['Absorb-Chr']   = 'Absorb',
    ['Absorb-Acc']   = 'Absorb',
    ['Absorb-TP']    = 'Absorb',
    ['Absorb-Attri'] = 'Absorb',

    ['Burn']  = 'Enfeeble-Ele',
    ['Frost'] = 'Enfeeble-Ele',
    ['Choke'] = 'Enfeeble-Ele',
    ['Rasp']  = 'Enfeeble-Ele',
    ['Shock'] = 'Enfeeble-Ele',
    ['Drown'] = 'Enfeeble-Ele',

    ['Pyrohelix']   = 'Helix',
    ['Cryohelix']   = 'Helix',
    ['Anemohelix']  = 'Helix',
    ['Geohelix']    = 'Helix',
    ['Ionohelix']   = 'Helix',
    ['Hydrohelix']  = 'Helix',
    ['Luminohelix'] = 'Helix',
    ['Noctohelix']  = 'Helix',

    ['Firestorm']    = 'Storm',
    ['Hailstorm']    = 'Storm',
    ['Windstorm']    = 'Storm',
    ['Sandstorm']    = 'Storm',
    ['Thunderstorm'] = 'Storm',
    ['Rainstorm']    = 'Storm',
    ['Aurorastorm']  = 'Storm',
    ['Voidstorm']    = 'Storm',

    ['Fire Maneuver']    = 'Maneuver',
    ['Ice Maneuver']     = 'Maneuver',
    ['Wind Maneuver']    = 'Maneuver',
    ['Earth Maneuver']   = 'Maneuver',
    ['Thunder Maneuver'] = 'Maneuver',
    ['Water Maneuver']   = 'Maneuver',
    ['Light Maneuver']   = 'Maneuver',
    ['Dark Maneuver']    = 'Maneuver',
    
    ['Haste']            = 'EnhancingD',
    ['Haste II']         = 'EnhancingD',
    ['Flurry']		 = 'EnhancingD',
    ['Flurry II']        = 'EnhancingD',
    ['Refresh']		 = 'EnhancingD',
    ['Refresh II']       = 'EnhancingD',
    ['Firestorm']    = 'EnhancingD',
    ['Hailstorm']    = 'EnhancingD',
    ['Windstorm']    = 'EnhancingD',
    ['Sandstorm']    = 'EnhancingD',
    ['Thunderstorm'] = 'EnhancingD',
    ['Rainstorm']    = 'EnhancingD',
    ['Aurorastorm']  = 'EnhancingD',
    ['Voidstorm']    = 'EnhancingD',
    
    ['Blizzard']     = 'Blizz',
    ['Blizzard II']     = 'Blizz',
    ['Blizzard III']     = 'Blizz',
    ['Blizzard IV']     = 'Blizz',
    ['Blizzard V']     = 'Blizz',
    ['Freeze']       = 'Blizz',
    
    
        --Dnc Groups--
        

    
    ['Drain Samba'] = 'Samba',
    ['Drain Samba II'] = 'Samba',
    ['Aspir Samba'] = 'Samba',
    ['Aspir Samba II'] = 'Samba',
    ['Haste Samba'] = 'Samba',
    
    ['Quickstep'] = 'Step',
    ['Box Step'] = 'Step',
    ['Stutter Step'] = 'Step',
    
    ['Violent Flourish'] = 'Flourish',
    ['Animated Flourish'] = 'Flourish',
    ['Desperate Flourish'] = 'Flourish',
    
    ['Spectral Jig'] = 'Jig',
    ['Chocobo Jig'] = 'Jig',
    ['Chocobo Jig II'] = 'Jig',
    
    
        --Blu Groups--
    
        --STR--
    ['Vertical cleave'] = 'BluSTR',
    ['Death Scissors'] = 'BluSTR',
    ['Empty thrash'] = 'BluSTR',
    ['Dimensional Death'] = 'BluSTR',
    ['Quadrastrike'] = 'BluSTR',
    ['Bloodrake'] = 'BluSTR',
    ['Heavy strike'] = 'BluSTR',
    
    	--STRDEX--
    ['Disseverment']= 'BluSTRDEX',
    ['Hysteric Barrage']= 'BluSTRDEX',
    ['Frenetic Rip']= 'BluSTRDEX',
    ['Seedspray']= 'BluSTRDEX',
    ['Vanity Dive']= 'BluSTRDEX',
    ['Goblin rush']= 'BluSTRDEX',
    ['Paralyzing Triad']= 'BluSTRDEX',
    ['Thrashing Assault']= 'BluSTRDEX',
    ['Sinkerdrill']= 'BluSTRDEX',
    
    
    	--STRVIT--
    ['Quad. Continuum']= 'BluSTRVIT',
    ['Delta Thrust']= 'BluSTRVIT',
    ['Cannonball']= 'BluSTRVIT',
    ['Glutinous Dart']= 'BluSTRVIT',
    
    	--STRMND--
    ['Whirl of Rage']= 'BluSTRMND',
    
    	--AGI--
    ['Benthic Typhoon']= 'BluAGI',
    ['Final Sting']= 'BluAGI',
    ['Spiral Spin']= 'BluAGI',
    
    	--INT--
    ['Gates of Hades']= 'BluINT',
    ['Leafstorm']= 'BluINT',
    ['Firespit']= 'BluINT',
    ['Acrid stream']= 'BluINT',
    ['Regurgitation']= 'BluINT',
    ['Corrosive Ooze']= 'BluINT',
    ['Thermal Pulse']= 'BluINT',
    ['Magic Hammer']= 'BluINT',
    ['Everyone. Grudge']= 'BluINT',
    ['Water Bomb']= 'BluINT',
    ['Dark Orb']= 'BluINT',
    ['Thunderbolt']= 'BluINT',
    ['Tem. Upheaval']= 'BluINT',
    ['Embalming Earth']= 'BluINT',
    ['Foul Waters']= 'BluINT',
    ['Rending Deluge']= 'BluINT',
    ['Droning Whirlwind']= 'BluINT',
    ['Subduction']= 'BluINT',
    ['Railcannon']='BluINT',
    ['PolarRoar']='BluINT',
    
    	--Bluecures
    ['Magic Fruit']= 'BluCure',
    ['Plenilune Embrace']= 'BluCure',
    ['Wild Carrot']= 'BluCure',
    ['Pollen']= 'BluCure',
    ['Restoral']= 'BluCure',
    
        --BlueAcc
    ['Sheep Song']= 'BluAcc',
    ['Mortal Ray']= 'BluAcc',
    ['Chaotic Eye']= 'BluAcc',
    ['Sound Blast']= 'BluAcc',
    ['Lowing']= 'BluAcc',
    ['Infrasonics']= 'BluAcc',
    ['Feather Tickle']= 'BluAcc',
    ['Voracious Trunk']= 'BluAcc',
    ['Auroral Drape']= 'BluAcc',
    ['Filamented Hold']= 'BluAcc',
    ['Cimicine Discharge']= 'BluAcc',
    ['Awful Eye']= 'BluAcc',
    ['Demoralizing Roar']= 'BluAcc',
    ['Blank Gaze']= 'BluAcc',
    ['Light of Penance']= 'BluAcc',
    ['Actinic Burst']= 'BluAcc',
    ['Blood Drain']= 'BluAcc',
    ['Soporific']= 'BluAcc',
    ['Digest']= 'BluAcc',
    ['MP Drainkiss']= 'BluAcc',
    ['Geist Wall']= 'BluAcc',
    ['Jettatura']= 'BluAcc',
    ['Sandspray']= 'BluAcc',
    ['Enervation']= 'BluAcc',
    ['Dream Flower']= 'BluAcc',
    
    
}

local spell_ignore_skill = 
S{
    'Teleport'
}

-- ToAU Zone List --
toau_zones = 
S{
    "Leujaoam Sanctum",
    "Mamool Ja Training Grounds",
    "Lebros Cavern","Periqia",
    "Ilrusi Atoll",
    "Nyzul Isle",
    "Bhaflau Remnants",
    "Arrapago Remnants",
    "Silver Sea Remnants",
    "Zhayolm Remnants"
}

--------------------------------------------------------------------------------------------------
-- NAME: Init.
--------------------------------------------------------------------------------------------------
function inc_init()
    -- Base Sets --
    sets.offense = {}
    sets.defense = {}
    sets.aftermath = {}
    sets.fc = {}
    sets.ja = {}
    sets.ws = {}
    sets.pet = {}
    sets.midcast = {}
    sets.sub = {}
    
    send_command('clearbinds')

    -- Configure Keybinds --
    send_command('wait 0.2; bind %numpad0 gs c numpad0')
    send_command('wait 0.2; bind %numpad1 gs c numpad1')
    send_command('wait 0.2; bind %numpad2 gs c numpad2')
    send_command('wait 0.2; bind %numpad3 gs c numpad3')
    send_command('wait 0.2; bind %numpad4 gs c numpad4')
    send_command('wait 0.2; bind %numpad5 gs c numpad5')
    send_command('wait 0.2; bind %numpad6 gs c numpad6')
    send_command('wait 0.2; bind %numpad7 gs c numpad7')
    send_command('wait 0.2; bind %numpad8 gs c numpad8')
    send_command('wait 0.2; bind %numpad9 gs c numpad9')

    send_command('wait 0.2; bind %1 gs c std1')
    send_command('wait 0.2; bind %2 gs c std2')
    send_command('wait 0.2; bind %3 gs c std3')
    send_command('wait 0.2; bind %4 gs c std4')
    send_command('wait 0.2; bind %5 gs c std5')
    send_command('wait 0.2; bind %6 gs c std6')
    send_command('wait 0.2; bind %7 gs c std7')
    send_command('wait 0.2; bind %8 gs c std8')
    send_command('wait 0.2; bind %9 gs c std9')
    send_command('wait 0.2; bind %0 gs c std0')
    send_command('wait 0.2; bind %- gs c std-')
    send_command('wait 0.2; bind %= gs c std=')

    send_command('wait 0.2; bind %^1 gs c ctl1')
    send_command('wait 0.2; bind %^2 gs c ctl2')
    send_command('wait 0.2; bind %^3 gs c ctl3')
    send_command('wait 0.2; bind %^4 gs c ctl4')
    send_command('wait 0.2; bind %^5 gs c ctl5')
    send_command('wait 0.2; bind %^6 gs c ctl6')
    send_command('wait 0.2; bind %^7 gs c ctl7')
    send_command('wait 0.2; bind %^8 gs c ctl8')
    send_command('wait 0.2; bind %^9 gs c ctl9')
    send_command('wait 0.2; bind %^0 gs c ctl0')
    send_command('wait 0.2; bind %^- gs c ctl-')
    send_command('wait 0.2; bind %^= gs c ctl=')

    send_command('wait 0.2; bind %!1 gs c alt1')
    send_command('wait 0.2; bind %!2 gs c alt2')
    send_command('wait 0.2; bind %!3 gs c alt3')
    send_command('wait 0.2; bind %!4 gs c alt4')
    send_command('wait 0.2; bind %!5 gs c alt5')
    send_command('wait 0.2; bind %!6 gs c alt6')
    send_command('wait 0.2; bind %!7 gs c alt7')
    send_command('wait 0.2; bind %!8 gs c alt8')
    send_command('wait 0.2; bind %!9 gs c alt9')
    send_command('wait 0.2; bind %!0 gs c alt0')
    send_command('wait 0.2; bind %!- gs c alt-')
    send_command('wait 0.2; bind %!= gs c alt=')

    send_command('wait 0.2; bind ` input /target <bt>')
end

--------------------------------------------------------------------------------------------------
-- NAME: File Unload.
--------------------------------------------------------------------------------------------------
function file_unload()
    -- Clear Keybinds --
    -- send_command('clearbinds')
end

--------------------------------------------------------------------------------------------------
-- NAME: Cancel Buffs.
-- DESC: Function to cancel buffs if they'd conflict with using the spell you're attempting.
--------------------------------------------------------------------------------------------------
function cancel_buffs(spell)
    if(spell.action_type == 'Ability') then
        local abil_recasts = windower.ffxi.get_ability_recasts()
        if(abil_recasts[spell.index] and (abil_recasts[spell.index] > 0)) then
            add_to_chat(123,'Cancel '..spell.english..': Ability waiting on recast.')
            cancel_spell()
            return true
        end
    elseif(spell.action_type == 'Magic') then
        local spell_recasts = windower.ffxi.get_spell_recasts()
        if(spell_recasts[spell.index] and (spell_recasts[spell.index] > 0)) then
            add_to_chat(123,'Cancel '..spell.english..': Spell waiting on recast.')
            cancel_spell()
            return true
        end
    end
    
    -- Cancel Sneak --
    if(buffactive.sneak) then
        if(spell.english == 'Spectral Jig') then
            cast_delay(0.2)
            send_command('cancel sneak')
        elseif((spell.english == 'Sneak') and (spell.target.type == 'SELF')) then
            send_command('cancel sneak')
        elseif spell.english:startswith('Monomi') then
            send_command('cancel sneak')
        end
    end

    -- Cancel Shadows --
  --  if(spell.english == 'Utsusemi: Ichi') then
    --    send_command('cancel copy image*')
   -- end

    -- Cancel Stoneskin --
    if(spell.english == 'Stoneskin') then
        send_command('cancel stoneskin')
    end

    return false
end

--------------------------------------------------------------------------------------------------
-- NAME: Toggle Offense
--------------------------------------------------------------------------------------------------
function toggle_offense()
    if(off == 'atk') then
        off = 'acc'
        add_to_chat(104, '-- Offense: acc --')
    elseif(off == 'acc') then
        off = 'mp'
        add_to_chat(104, '-- Offense: refresh/th --')
    else
        off = 'atk'
        add_to_chat(104, '-- Offense: atk --')
    end

    eq_default()
end

--------------------------------------------------------------------------------------------------
-- NAME: Toggle Aftermath
--------------------------------------------------------------------------------------------------
function toggle_aftermath()
    if(am == 'none') then
        am = 'atk'
        add_to_chat(104, '-- Aftermath: atk --')
    elseif(am == 'atk') then
        am = 'acc'
        add_to_chat(104, '-- Aftermath: acc --')
    else
        am = 'none'
        add_to_chat(104, '-- Aftermath: none --')
    end

    eq_default()
end




--------------------------------------------------------------------------------------------------
-- NAME: Toggle Swap
------------------------------------------------------------------------------

function toggle_swap()
    if(swap) then
        swap = false
        add_to_chat(104,'Swap: Off')
    else
        swap = true
        add_to_chat(104,'Swap: On')
    end
end
--------------------------------------------------------------------------------------------------
-- NAME: Toggle Defense
--------------------------------------------------------------------------------------------------
function toggle_defense()
    -- None/MDT/PDT Toggle --
    if(def == 'none') then
        def = 'mdt'
        add_to_chat(104, '-- Defense: MDT --')
    elseif(def == 'mdt') then
        def = 'pdt'
        add_to_chat(104, '-- Defense: PDT --')
    else
        def = 'none'
        add_to_chat(104, '-- Defense: None --')
    end

    eq_default()
end

--------------------------------------------------------------------------------------------------
-- NAME: Get Offense.
--------------------------------------------------------------------------------------------------
function get_offense()
    return off
end

--------------------------------------------------------------------------------------------------
-- NAME: Get Defense.
--------------------------------------------------------------------------------------------------
function get_defense()
    return def
end

--------------------------------------------------------------------------------------------------
-- NAME: Get Aftermath.
--------------------------------------------------------------------------------------------------
function get_aftermath()
    return am
end

--------------------------------------------------------------------------------------------------
-- NAME: Get Spell Group.
--------------------------------------------------------------------------------------------------
function get_group(spell)
    return spell_groups[spell.english]
end

--------------------------------------------------------------------------------------------------
-- NAME: Change Spell
-- DESC: Cancel the previous spell and replace it with the specified spell
--------------------------------------------------------------------------------------------------
function change_spell(spell)
    cancel_spell()
    send_command(spell)
end

--------------------------------------------------------------------------------------------------
-- Is Target PC?
--------------------------------------------------------------------------------------------------
function is_target_pc()
    if(player.target.type == 'NONE')   then return true end
    if(player.target.type == 'SELF')   then return true end
    if(player.target.type == 'PLAYER') then return true end

    return false
end

--------------------------------------------------------------------------------------------------
-- Is Target Enemy?
--------------------------------------------------------------------------------------------------
function is_target_enemy()
    return player.target.type == 'MONSTER'
end

--------------------------------------------------------------------------------------------------
-- NAME: Equip Defense Gear.
--------------------------------------------------------------------------------------------------
function eq_defense()
    -- Apply Defense --
    if(sets.defense[def]) then
        equip(sets.defense[def])
    end
end

--------------------------------------------------------------------------------------------------
-- NAME: Equip Default Gear
--------------------------------------------------------------------------------------------------
function eq_default()
    -- Save TP --
if(swap) then
    enable('Main', 'Sub', 'Range')
else
   disable('Main', 'Sub', 'Range')
end

if(player.status == 'Engaged') then
        if(sets.offense[off]) then
            equip(sets.offense[off])
        end
        if(buffactive.Aftermath and sets.aftermath[am]) then
            equip(sets.aftermath[am])
        end
    end
    
    -- Idle Set --
    if(player.status == 'Idle') then
        equip(sets.idle)
    end
    
    if(buffactive == "Sublimation: Activated" and player.status == 'Idle') then
            equip(sets.sub)
        end
    

    -- Apply Defense --
    eq_defense()
    
        if(player.status == 'Resting') then
       equip(sets.rest)
   end

end

--------------------------------------------------------------------------------------------------
-- NAME: Equip Default Precast Gear
--------------------------------------------------------------------------------------------------
function eq_default_precast(spell)
    -- Cancel Overwritten Buffs --
    cancel_buffs(spell)

    -- Magic PreCast --
    if(spell.action_type == 'Magic') then
        -- Generic Fast Cast --
        equip(sets.fc)
        
        if(player.status == 'Resting') then
        equip(sets.rest)
    end

        -- Type Fast Cast --
        if(sets.fc[spell.type]) then
            equip(sets.fc[spell.type])
        end

        -- Skill Fast Cast --
        if(sets.fc[spell.skill]) then
            equip(sets.fc[spell.skill])
        end
        


        -- Group Fast Cast --
        local group = spell_groups[spell.english]
        if(group and sets.fc[group]) then
            equip(sets.fc[group])
        end

        -- Spell Fast Cast --
        if(sets.fc[spell.english]) then
            equip(sets.fc[spell.english])
        end

        -- Apply Defense --
     --   eq_defense()
    end

    -- Ability PreCast --
    if(spell.action_type == 'Ability') then
        -- Job Ability --
        if((spell.type == 'JobAbility') and sets.ja[spell.english]) then
            equip(sets.ja[spell.english])
        end

        -- Weapon Skill -- 
        if((spell.type == 'WeaponSkill') and sets.ws[spell.english]) then
            equip(sets.ws[spell.english])
        end
       if((spell.type == 'Pet') and sets.pet[spell.english]) then
            equip(sets.pet[spell.english])
        end
        -- Apply Defense --
     --   eq_defense()
    end
end

--------------------------------------------------------------------------------------------------
-- NAME: Equip Default Midcast Gear
--------------------------------------------------------------------------------------------------
function eq_default_midcast(spell)
    local group = spell_groups[spell.english]

    -- Magic MidCast --
    if(spell.action_type == 'Magic') then
        -- Generic MidCast --
        equip(sets.midcast)

        -- Type MidCast --
        if(sets.midcast[spell.type]) then
            equip(sets.midcast[spell.type])
        end

        -- Skill MidCast --
        if(sets.midcast[spell.skill]) then
            equip(sets.midcast[spell.skill])
        end

        -- Group MidCast --
        if(group and sets.midcast[group]) then
            equip(sets.midcast[group])
        end

        -- Spell MidCast --
        if(sets.midcast[spell.english]) then
            equip(sets.midcast[spell.english])
        end
        
        -- if spell.action_type == "Magic" then
        -- if spell.element == world.weather_element then
          --  equip(sets.obi[spell.element])
    -- elseif  spell.element == world.day_element then
    	    -- equip(sets.day[spell.element])
        -- end
    end

        -- Apply Defense --
   --     eq_defense()
    -- end
end



--------------------------------------------------------------------------------------------------
-- NAME: Equip Balrahn --
--------------------------------------------------------------------------------------------------
function eq_balrahn()
    if(toau_zones:contains(zone)) then
      --  equip({ring1 = "Balrahn's Ring"})
    end
end
