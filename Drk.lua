--------------------------------------------------------------------------------------------------
-- FILE: drk.lua
--------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------
-- NAME: Get Sets.
--------------------------------------------------------------------------------------------------
function get_sets()
    -- Global Include --
    include('inc.lua')
    inc_init()
    include('organizer-lib')
    -- Idle Set --  
    sets.idle = 
    {
        ammo  = "Bomb Core",
        head  = "Walahra Turban",
        neck  = "Justice torque",
        ear1  = "Abyssal Earring",
        ear2  = "Brutal Earring",
        body  = "Armada Hauberk +1",
        hands = "Askar Manopolas",
        ring1 = "Rajas Ring",
        ring2 = "Blitz Ring",
        back  = "Cerb. Mantle +1",
        waist = "Sonic Belt +1",
        legs  = "Blood Cuisses",
        feet  = "Aurum Sabatons"
    }
    sets.precast.fc['Blue Magic'] = 
	{
    	ammo  = "White tathlum",
    	head  = "Drachen armet",
    	neck  = "Tempered chain",
    	ear1  = "Harmonious earring",
    	ear2  = "Harmonius earring",
    	body  = "Dusk Jerkin +1",
    	hands = "Alkyoneus's Brc.",
    	ring1 = "Bloodbead ring",
    	ring2 = "Bomb Queen Ring",
    	back  = "Gigant mantle",
    	waist = "Forest sash",
    	legs  = "Homam Cosciales",
    	feet  = "Dusk ledelsens +1"

    }
		
	
    sets.midcast['Elemental Magic'] =
    {
    	ammo  = "White tathlum",
        head  = "Drachen armet",
    	neck  = "Tempered chain",
    	ear1  = "Cassie earring",
    	ear2  = "Harmonius earring",
    	body  = "Blood Scale Mail",
    	hands = "Alkyoneus's Brc.",
    	ring1 = "Bloodbead ring",
    	ring2 = "Bomb Queen Ring",
    	back  = "Gigant mantle",
    	waist = "Forest sash",
    	legs  = "Dusk trousers +1",
    	feet  = "Dusk ledelsens +1"

    }
    
    sets.midcast['Enfeebling Magic'] =
    {
    	ammo  = "Bomb Core",
    	head  = "Walahra Turban",
    	neck  = "Justice Torque",
    	ear1  = "Enfeebling earring",
    	ear2  = "Brutal earring",
    	body  = "Blood Scale Mail",
    	hands = "Dusk Gloves +1",
    	ring1 = "Rajas ring",
    	ring2 = "Insect Ring",
    	back  = "Abyss Cape",
    	waist = "Sonic Belt +1",
    	legs  = "Homam Cosciales",
    	feet  = "Abyss Sollerets"

    }
    
    sets.midcast['Enhancing Magic'] =
    {
    	ammo  = "Bomb Core",
    	head  = "Walahra Turban",
    	neck  = "Justice Torque",
    	ear1  = "Enfeebling earring",
    	ear2  = "Brutal earring",
    	body  = "Blood Scale Mail",
    	hands = "Dusk Gloves +1",
    	ring1 = "Rajas ring",
    	ring2 = "Insect Ring",
    	back  = "Abyss Cape",
    	waist = "Sonic Belt +1",
    	legs  = "Homam Cosciales",
    	feet  = "Dusk ledelsens +1"

    }
        sets.midcast['Blue Magic'] =
    {
    	ammo  = "Bomb Core",
    	head  = "Walahra Turban",
    	neck  = "Justice Torque",
    	ear1  = "Enfeebling earring",
    	ear2  = "Brutal earring",
    	body  = "Blood Scale Mail",
    	hands = "Dusk Gloves +1",
    	ring1 = "Rajas ring",
    	ring2 = "Insect Ring",
    	back  = "Abyss Cape",
    	waist = "Sonic Belt +1",
    	legs  = "Homam Cosciales",
    	feet  = "Dusk ledelsens +1"
    }
    
            sets.midcast['Dark Magic'] =
    {
    	ammo  = "Bomb Core",
    	head  = "Walahra Turban",
    	neck  = "Dark Torque",
    	ear1  = "Abyssal earring",
    	ear2  = "Dark earring",
    	body  = "Demon's Harness +1",
    	hands = "Blood Finger Gauntlets",
    	ring1 = "Rajas ring",
    	ring2 = "Insect Ring",
    	back  = "Merciful Cape",
    	waist = "Sonic Belt +1",
    	legs  = "Abyss Flanchard",
    	feet  = "Dusk ledelsens +1"

    }

    sets.ja['Jump'] =
    {
        head  = "Nocturnus Helm",
        neck  = "Love torque",
        ear1  = "Assault Earring",
        ear2  = "Brutal Earring",
        body  = "Nocturnus Mail",
        hands = "Hecatomb Mittens +1",
        ring1 = "Rajas Ring",
        ring2 = "Flame Ring",
        waist = "Warwolf Belt",
        legs  = "Hecatomb Subligar +1",
        feet  = "Rutter Sabatons",
        back  = "Cerb. mantle +1"
    }
    

    sets.ja['High Jump'] =
    {
        head  = "Nocturnus Helm",
        neck  = "Love torque",
        ear1  = "Assault Earring",
        ear2  = "Brutal Earring",
        body  = "Nocturnus Mail",
        hands = "Hecatomb Mittens +1",
        ring1 = "Rajas Ring",
        ring2 = "Flame Ring",
        waist = "Warwolf Belt",
        legs  = "Hecatomb Subligar +1",
        feet  = "Rutter Sabatons",
        back  = "Cerb. mantle +1"
    }
    
    sets.ja['Angon'] =
    {
    	ammo = "Angon"
    }
    

     
    sets.ws['Wheeling Thrust'] =
    {
        head  = "Hecatomb cap +1",
        neck  = "Light Gorget",
        ear1  = "Harmonius Earring",
        ear2  = "Brutal earring",
        body  = "Nocturnus Mail",
        hands = "Hct. mittens +1",
        ring1 = "Rajas Ring",
        ring2 = "Flame Ring",
        waist = "Warwolf belt",
        legs  = "Hct. Subligar +1",
        feet  = "Hct. Leggings +1",
        back  = "Cerb. mantle +1"
    }
    
        sets.ws['Geirskogul'] =
    {
        head  = "Hecatomb cap +1",
        neck  = "Light Gorget",
        ear1  = "Harmonius Earring",
        ear2  = "Brutal earring",
        body  = "Nocturnus Mail",
        hands = "Hct. mittens +1",
        ring1 = "Rajas Ring",
        ring2 = "Flame Ring",
        waist = "Warwolf belt",
        legs  = "Hct. Subligar +1",
        feet  = "Hct. Leggings +1",
        back  = "Cerb. mantle +1"
    }
    
        sets.ws['Impulse Drive'] =
    {
        head  = "Hecatomb cap +1",
        neck  = "Shadow Gorget",
        ear1  = "Harmonius Earring",
        ear2  = "Brutal earring",
        body  = "Nocturnus Mail",
        hands = "Hct. mittens +1",
        ring1 = "Rajas Ring",
        ring2 = "Flame Ring",
        waist = "Warwolf belt",
        legs  = "Hct. Subligar +1",
        feet  = "Hct. Leggings +1",
        back  = "Cerb. mantle +1"
    }

    sets.ws['Penta Thrust'] =
    {
        head  = "Hecatomb cap +1",
        neck  = "Love torque",
        ear1  = "Assault Earring",
        ear2  = "Brutal Earring",
        body  = "Nocturnus Mail",
        hands = "Hct. mittens +1",
        ring1 = "Rajas Ring",
        ring2 = "Toreador's Ring",
        waist = "Virtuoso Belt",
        legs  = "Hct. Subligar +1",
        feet  = "Hct. Leggings +1",
        back  = "Cerb. mantle +1"
    }
    
        sets.ws['Skewer'] =
    {
        head  = "Hecatomb cap +1",
        neck  = "Light Gorget",
        ear1  = "Harmonius Earring",
        ear2  = "Brutal earring",
        body  = "Nocturnus Mail",
        hands = "Hct. mittens +1",
        ring1 = "Rajas Ring",
        ring2 = "Flame Ring",
        waist = "Warwolf belt",
        legs  = "Hct. Subligar +1",
        feet  = "Hct. Leggings +1",
        back  = "Cerb. mantle +1"
    }
    
    
            sets.ws['Shell Crusher'] =
    {
        head  = "Hecatomb cap +1",
        neck  = "Ire torque +1",
        ear1  = "Harmonius Earring",
        ear2  = "Fowling earring",
        body  = "Zahak's mail",
        hands = "Hct. mittens +1",
        ring1 = "Rajas Ring",
        ring2 = "Harmonius Ring",
        waist = "Warwolf belt",
        legs  = "Hct. Subligar +1",
        feet  = "Hct. Subligar +1",
        back  = "Cerb. mantle +1"
    }
    
            sets.ws['Spirit Taker'] =
    {
        head  = "Maat's Cap",
        neck  = "Ire torque +1",
        ear1  = "Harmonius Earring",
        ear2  = "Fowling earring",
        body  = "Hct. Harness +1",
        hands = "Hct. mittens +1",
        ring1 = "Rajas Ring",
        ring2 = "Harmonius Ring",
        waist = "Potent belt",
        legs  = "Hct. Subligar +1",
        feet  = "Hct. Leggings +1",
        back  = "Cerb. mantle +1"
    }
    
            sets.ws['Full Swing'] =
    {
        ammo  = "Black Tathlum",
    	head  = "Hecatomb cap +1",
        neck  = "Ire torque +1",
        ear1  = "Harmonius Earring",
        ear2  = "Harmonious earring",
        body  = "Hct. Harness +1",
        hands = "Hct. mittens +1",
        ring1 = "Rajas Ring",
        ring2 = "Harmonius Ring",
        waist = "Warwolf belt",
        legs  = "Hct. Subligar +1",
        feet  = "Hct. Leggings +1",
        back  = "Cerb. mantle +1"
    }
    
    	sets.ws['Retribution'] =
    {
        ammo  = "Black Tathlum",
    	head  = "Maat's Cap",
        neck  = "Soil Gorget",
        ear1  = "Harmonius Earring",
        ear2  = "Harmonious earring",
        body  = "Hct. Harness +1",
        hands = "Hct. mittens +1",
        ring1 = "Rajas Ring",
        ring2 = "Harmonius Ring",
        waist = "Warwolf belt",
        legs  = "Hct. Subligar +1",
        feet  = "Hct. Leggings +1",
        back  = "Cerb. mantle +1"
    }

    sets.offense.atk =
    {
        ammo  = "Bomb Core",
        head  = "Walahra Turban",
        neck  = "Justice torque",
        ear1  = "Abyssal Earring",
        ear2  = "Brutal Earring",
        body  = "Armada Hauberk",
        hands = "Dusk gloves +1",
        ring1 = "Rajas Ring",
        ring2 = "Blitz Ring",
        back  = "Cerb. Mantle +1",
        waist = "Sonic Belt +1",
        legs  = "Homam Cosciales",
        feet  = "Dusk ledelsens +1"
    }
    
        sets.aftermath.atk =
    {

        head  = "Ace's Helm"

    }
	
    sets.offense.acc =
    {
        ammo  = "Fire Bomblet",
        head  = "Ace's Helm",
        neck  = "Ancient Torque",
        ear1  = "Abyssal Earring",
        ear2  = "Brutal Earring",
        body  = "Armada Hauberk",
        hands = "Dusk gloves +1",
        ring1 = "Rajas Ring",
        ring2 = "Toreador's Ring",
        back  = "Cuchulain's Mantle",
        waist = "Sonic Belt +1",
        legs  = "Homam Cosciales",
        feet  = "Aurum Sabatons"
    }

    sets.defense.mdt = 
    {
        head = "Coral Visor +1",
        neck  = "Twilight Torque",
        ear1 = "Merman's Earring",
        ear2 = "Merman's Earring",
        body = "Nocturnus Mail",
        hands = "Coral Finger Gauntlets +1",
        ring1 = "Shadow Ring",
        ring2 = "Merman's Ring",
        back  = "Resentment Cape",
        waist = "Resolute Belt",
        legs = "Coral cuisses +1",
        feet = "Askar Gambieras",
    }

    sets.defense.pdt = 
    {
        neck  = "Twilight Torque",
        body = "Hydra mail +1",
        hands = "Dst. Mittens +1",
        head = "Darksteel cap 1",
        legs = "Hydra cuisses +1",
        feet = "Hydra greaves +1",
        head = "Nocturnus Helm",
        ring1 = "Shadow Ring",
        ring2 = "Jelly Ring",
        back  = "Shadow Mantle",
        waist = "Black Belt"
    }

    sets.fc =
    {
        head  = "Haruspex Hat",
        ear1  = "Loquac. Earring",
	legs  = "Homam Cosciales"
    }

    sets.midcast['Utsusemi'] =
    {
        ammo  = "White Tathlum",
        head  = "Walahra Turban",
        neck  = "Ancient torque",
        ear1  = "Assault Earring",
        ear2  = "Brutal Earring",
        body  = "Askar korazin",
        hands = "Dusk gloves +1",
        ring1 = "Rajas Ring",
        ring2 = "Blitz Ring",
        back  = "Cerb. Mantle +1",
        waist = "Sonic Belt +1",
        legs  = "Homam Cosciales",
        feet  = "Dusk ledelsens +1"
    }
    
        organizer_items = 
    {
    	    ammo = "R. Curry Bun +1",
    	    ammo = "Marinara Pizza +1",
	    ammo = "Panacea",
    	    ammo = "Shihei",
    	    ammo = "Toolbag (Shihei)",
    	    ammo = "Echo Drops",
    	    ammo = "Holy Water",
    	    ammo = "Remedy",
    	    ammo = "Shinobi-Tabi",
    	    ammo = "Sanjaku-Tenugui",
    	    ammo = "Gungnir"
    }
    
    
end

Breaths = S{'Healing Breath'}

function pet_midcast(spell)
if Breaths:contains(spell.name) then
equip(sets.midcast.hb)
end	
end

Breaths = S{'Sand Breath','Flame Breath','Frost Breath','Hydro Breath','Gust Breath','Lightning Breath'}

function pet_midcast(spell)
if Breaths:contains(spell.name) then
equip(sets.midcast.elementalbreath)
end	
end

function pet_aftercast(spell)
eq_default()
end


function precast(spell)
    eq_default_precast(spell)
end

function midcast(spell)
    eq_default_midcast(spell)
end

function aftercast(spell)
    eq_default()
end

function status_change(new, old)
    eq_default()
end

function buff_change(status, gain)
	eq_default()
end

function self_command(command)
    -- Follow --
    if(command == 'numpad0') then
        send_command('stun')
    end

    -- Offense/Defense Toggles --
    if(command == 'numpad1') then toggle_offense() end
    if(command == 'numpad2') then toggle_defense() end
    if(command == 'numpad5') then toggle_aftermath() end

    if(command == 'std1') then send_command('geirskogul')   end
    if(command == 'std2') then send_command('ja jump')        end
    if(command == 'std3') then send_command('highjump')          end
    if(command == 'std4') then send_command('spiritlink')          end
    if(command == 'std5') then send_command('superjump') end
    if(command == 'std8') then send_command('angon') end
    if(command == 'std9') then send_command('gs equip sets.midcast.hb')         end
    if(command == 'std0') then send_command('gs equip sets.offense.atk')       end
    if(command == 'std-') then send_command('gs equip sets.offense.acc')       end

    if(player.sub_job == 'SAM') then
        if(command == 'ctl1') then send_command('jump')   end
        if(command == 'ctl2') then send_command('highjump')   end
        if(command == 'ctl3') then send_command('meditate') end
        if(command == 'ctl4') then send_command('')    end
        if(command == 'ctl5') then send_command('hasso')  end
        if(command == 'ctl6') then send_command('seigan')  end
        if(command == 'ctl7') then send_command('thirdeye')  end
    elseif(player.sub_job == 'WAR') then
        if(command == 'ctl1') then send_command('Berserk')   end
        if(command == 'ctl2') then send_command('Warcry') end
        if(command == 'ctl9') then send_command('Provoke') end
        if(command == 'ctl0') then send_command('Defender') end
        
    elseif(player.sub_job == 'DRK') then
        if(command == 'ctl1') then send_command('Berserk')   end
        if(command == 'ctl2') then send_command('lastresort') end
        if(command == 'ctl9') then send_command('weaponbash') end
        if(command == 'ctl0') then send_command('Defender') end
        
        if(command == 'alt1') then send_command('poison') end
        if(command == 'alt2') then send_command('bio') end
        if(command == 'alt3') then send_command('bind') end
        if(command == 'alt0') then send_command('stun') end 
    elseif(player.sub_job == 'NIN') then
        if(command == 'ctl1') then send_command('utsusemini')   end
        if(command == 'ctl2') then send_command('utsusemiichi') end
    elseif(player.sub_job == 'RDM') then
        if(command == 'alt1') then send_command('stone') end
        if(command == 'alt2') then send_command('barfire me') end
        if(command == 'alt3') then send_command('dia') end
        if(command == 'alt0') then send_command('protect2 me') end
        
        elseif(player.sub_job == 'WHM') then
        if(command == 'alt1') then send_command('barstonra me') end
        if(command == 'alt2') then send_command('barfira me') end
        if(command == 'alt3') then send_command('dia') end
        if(command == 'alt0') then send_command('protect2 me') end
        
     elseif(player.sub_job == 'BLU') then
        if(command == 'alt1') then send_command('headbutt') end
        if(command == 'alt2') then send_command('footkick') end
        if(command == 'alt3') then send_command('cocoon me') end
        if(command == 'alt0') then send_command('protect2 me') end    
    end
end
