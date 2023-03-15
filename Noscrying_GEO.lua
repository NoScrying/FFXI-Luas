function get_sets()
	send_command('bind f9 gs c toggle melee set') -- F9 = Cycle through
	send_command('bind f10 gs c toggle weapon set') -- F10 = Cycle through
	send_command('bind f12 gs c toggle TH set') -- F12 = Cycle through
	Melee_Index = 1
	Weapon_Index = 1
	TH_Index = 1
	
	Melee_Set_Names = {'melee', 'DT', 'mage'}
	sets.melee = {} 					-- Leave this empty.
	sets.melee.melee = {

    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Jhakri Robe +2",
    hands="Jhakri Cuffs +2",
    legs="Jhakri Slops +2",
    feet="Jhakri Pigaches +2",
    neck="Lissome Necklace",
    waist="Cetl Belt",
    left_ear="Cessance Earring",
    right_ear="Brutal Earring",
    left_ring="Jhakri Ring",
    right_ring="Chirich Ring",
    back={ name="Lifestream Cape", augments={'Geomancy Skill +7','Indi. eff. dur. +19','Pet: Damage taken -3%',}},
	}
	sets.melee.DT = {

    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Mallquis Saio +1",
    hands="Jhakri Cuffs +2",
    legs="Jhakri Slops +2",
    feet="Battlecast Gaiters",
    neck="Elite Royal Collar",
    waist="Cetl Belt",
    left_ear="Friomisi Earring",
    right_ear="Malignance Earring",
    left_ring="Defending Ring",
    right_ring={ name="Dark Ring", augments={'Phys. dmg. taken -6%','Magic dmg. taken -3%',}},
    back="Moonbeam Cape",
	}
	sets.melee.mage = {

    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Jhakri Robe +2",
    hands="Jhakri Cuffs +2",
    legs="Jhakri Slops +2",
    feet="Jhakri Pigaches +2",
    neck="Sibyl Scarf",
	waist="Embla Sash",
    left_ear="Friomisi Earring",
    right_ear="Malignance Earring",
    left_ring="Defending Ring",
    right_ring={ name="Dark Ring", augments={'Phys. dmg. taken -6%','Magic dmg. taken -3%',}},
    back="Moonbeam Cape",
	}
	
	TH_Set_Names = {'TH3'}
	sets.TH = {}
	sets.TH.TH3 = {

	head="White Rarab Cap +1",
    waist={ name="Tarutaru Sash", augments={'"Treasure Hunter"+1','MND+2',}},
    body="Mallquis Saio +1",
    hands="Jhakri Cuffs +2",
    legs="Jhakri Slops +2",
    feet="Battlecast Gaiters",
    neck="Elite Royal Collar",
    left_ear="Friomisi Earring",
    right_ear="Malignance Earring",
    left_ring="Defending Ring",
    right_ring={ name="Dark Ring", augments={'Phys. dmg. taken -6%','Magic dmg. taken -3%',}},
    back={ name="Lifestream Cape", augments={'Geomancy Skill +7','Indi. eff. dur. +19','Pet: Damage taken -3%',}},
	}
	
	Weapon_Set_Names = {'Daybreak', 'Malignance'}
	sets.weapon = {}
	sets.weapon.Daybreak = {
    main="Daybreak",
    sub="Culminus",
	}
	sets.weapon.Malignance = {
    main="Malignance Pole",
    sub="Mensch Strap",
	}
	
	sets.ws = {} 					-- Leave this empty.
	sets.ws['Black Halo']	= {

    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Jhakri Robe +2",
    hands="Jhakri Cuffs +2",
    legs="Jhakri Slops +2",
    feet="Jhakri Pigaches +2",
    neck="Lissome Necklace",
    waist="Cetl Belt",
    left_ear="Mache Earring",
    right_ear="Brutal Earring",
    left_ring="Jhakri Ring",
    right_ring="Petrov Ring",
    back="Argocham. Mantle",
	}
	sets.ws['Realmrazer']	= {


    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Jhakri Robe +2",
    hands="Jhakri Cuffs +2",
    legs="Jhakri Slops +2",
    feet="Jhakri Pigaches +2",
    neck="Lissome Necklace",
    waist="Cetl Belt",
    left_ear="Mache Earring",
    right_ear="Brutal Earring",
    left_ring="Jhakri Ring",
    right_ring="Petrov Ring",
    back="Argocham. Mantle",
	}
	
	
	sets.ja = {} 					-- Leave this empty.		
	
	sets.idle = {} 					-- Leave this empty.
	sets.idle.normal = {

    head="Jhakri Coronal +2",
    body="Jhakri Robe +2",
    hands="Jhakri Cuffs +2",
    legs="Jhakri Slops +2",
    feet="Jhakri Pigaches +2",
    neck="Sibyl Scarf",
	waist="Embla Sash",
    left_ear="Friomisi Earring",
    right_ear="Malignance Earring",
    left_ring="Defending Ring",
    right_ring={ name="Dark Ring", augments={'Phys. dmg. taken -6%','Magic dmg. taken -3%',}},
    back="Moonbeam Cape",
	}
	
	sets.precast = {}               -- leave this empty
	sets.precast.fastcast = {

    head="Amalric Coif",
    body="Jhakri Robe +2",
    hands="Jhakri Cuffs +2",
    legs="Jhakri Slops +2",
    feet="Jhakri Pigaches +2",
    neck="Elite Royal Collar",
    waist="Witful Belt",
    left_ear="Magnetic Earring",
    right_ear="Malignance Earring",
    left_ring="Lebeche Ring",
    right_ring="Jhakri Ring",
    back={ name="Lifestream Cape", augments={'Geomancy Skill +7','Indi. eff. dur. +19','Pet: Damage taken -3%',}},
	}
	sets.precast['Dispelga'] = set_combine(sets.precast.fastcast,{ main = "Daybreak" })
	
    sets.midcast = {}               -- leave this empty  
	sets.midcast.geo = {
    head="Jhakri Coronal +2",
    body="Jhakri Robe +2",
    hands="Jhakri Cuffs +2",
    legs="Jhakri Slops +2",
    feet="Jhakri Pigaches +2",
    neck="Deceiver's Torque",
    waist="Embla Sash",
    left_ear="Friomisi Earring",
    right_ear="Malignance Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back={ name="Lifestream Cape", augments={'Geomancy Skill +7','Indi. eff. dur. +19','Pet: Damage taken -3%',}},
	}	
	
	sets.midcast.enfeebling = {

    head="Jhakri Coronal +2",
    body="Jhakri Robe +2",
    hands="Jhakri Cuffs +2",
    legs="Jhakri Slops +2",
    feet="Jhakri Pigaches +2",
    neck="Sibyl Scarf",
    waist="Eschan Stone",
    left_ear="Aredan Earring",
    right_ear="Malignance Earring",
    left_ring="Kishar Ring",
    right_ring="Stikini Ring +1",
    back={ name="Lifestream Cape", augments={'Geomancy Skill +7','Indi. eff. dur. +19','Pet: Damage taken -3%',}},
	}
	
	sets.midcast.elemental = {

    head="Jhakri Coronal +2",
    body="Jhakri Robe +2",
    hands="Jhakri Cuffs +2",
    legs="Jhakri Slops +2",
    feet="Jhakri Pigaches +2",
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
    left_ear="Friomisi Earring",
    right_ear="Malignance Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back="Seshaw Cape",
	}
		
	
	sets.midcast.enhancingduration = {

	head={ name="Telchine Cap", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +7',}},
    body={ name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},
    hands={ name="Telchine Gloves", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +7',}},
    legs={ name="Telchine Braconi", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +7',}},
    feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +10',}},
	waist="Embla Sash",
    neck="Sibyl Scarf",
    left_ear="Aredan Earring",
    right_ear="Malignance Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back={ name="Lifestream Cape", augments={'Geomancy Skill +7','Indi. eff. dur. +19','Pet: Damage taken -3%',}},
	}
	
	sets.midcast.refresh = {
	ammo="Homiliary",
	head="Amalric Coif",
    body={ name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},
    hands={ name="Telchine Gloves", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +7',}},
    legs={ name="Telchine Braconi", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +7',}},
    feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +10',}},
    neck="Sibyl Scarf",
	waist="Gishdubar Sash",
    left_ear="Aredan Earring",
    right_ear="Malignance Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back={ name="Lifestream Cape", augments={'Geomancy Skill +7','Indi. eff. dur. +19','Pet: Damage taken -3%',}},
	}
	
	sets.midcast.cure = {

	head={ name="Telchine Cap", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +7',}},
    body={ name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},
    hands={ name="Telchine Gloves", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +7',}},
    legs={ name="Telchine Braconi", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +7',}},
    feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +10',}},
	waist="Gishdubar Sash",
    neck="Phalaina Locket",
    left_ear="Aredan Earring",
	left_ring="Lebeche Ring",
	right_ring="Kunaji Ring",
    back="Tempered Cape +1",
	}

	sets.midcast.pixie = {

    head="Pixie Hairpin +1",
    body="Jhakri Robe +2",
    hands="Jhakri Cuffs +2",
    legs="Jhakri Slops +2",
    feet="Jhakri Pigaches +2",
    neck="Sibyl Scarf",
    waist="Eschan Stone",
    left_ear="Friomisi Earring",
    right_ear="Malignance Earring",
    left_ring="Stikini Ring +1",
    right_ring="Archon Ring",
    back="Seshaw Cape",
	}
    sets.aftercast = {}             -- leave this empty
	
	ElementalGear = {}
	ElementalGear.Obi = "Hachirin-no-Obi"
	ElementalGear.Cape = "Twilight Cape"
	sets.midcast.CureWithLightWeather = {back=ElementalGear.Cape,waist=ElementalGear.Obi}
	sets.midcast.NukeWithMatchingWeather = {back=ElementalGear.Cape,waist=ElementalGear.Obi}
	
	
	sets.buff = {} 					-- Leave this empty.
	sets.buff.reive = {
	neck="Ygnas\'s Resolve +1",
	}
	sets.buff.adoulin = {
	body="Councilor\'s Garb",
	}
	sets.buff.perpetuance = {
	hands="Arbatel Bracers",
	}
end

function precast(spell)
    if  spell.type ~= 'JobAbility' then
        equip(sets.precast.fastcast)
	end
    if sets.ja[spell.name] then
        equip(sets.ja[spell.name])
	end
    if sets.ws[spell.name] then
        equip(sets.ws[spell.name])        
    end         
end

function midcast(spell)
	if spell.skill == 'Geomancy' then
		equip(sets.midcast.geo)
    elseif spell.skill == 'Healing Magic' then
        equip(sets.midcast.cure)
	elseif spell.name:match('Refresh') then
		equip(sets.midcast.refresh)
	elseif spell.skill == 'Enhancing Magic' then
		equip(sets.midcast.enhancingduration)
	elseif spell.skill == 'Enfeebling Magic' then
		equip(sets.midcast.enfeebling)
	end
        if spell.skill == 'Elemental Magic' then
			equip(sets.midcast.elemental)
            if world.weather_element == spell.element or world.day_element == spell.element then
                equip(sets.midcast.NukeWithMatchingWeather)
				end
			        elseif spell.skill == 'Healing Magic' and spell.english:startswith('Cur') and spell.english ~= 'Cursna' then
						equip(sets.midcast.cure)
						if world.weather_element == spell.element or world.day_element == spell.element then
						equip(sets.midcast.CureWithLightWeather)
				end
			end
		end
		

function aftercast(spell)
	idle()
end
 
function buff_change(buff,gain)

end
 
function status_change(new,old)
	idle()
end


function idle()
    if player.status=='Engaged' then
        equip(sets.melee[Melee_Set_Names[Melee_Index]]) 
	else
		equip(sets.idle.normal)
	end
end
function self_command(command)
	if command == 'toggle melee set' then
        Melee_Index = Melee_Index +1
    if Melee_Index > #Melee_Set_Names then Melee_Index = 1 end
        windower.add_to_chat('TP mode is now: '..Melee_Set_Names[Melee_Index])
        equip(sets.melee[Melee_Set_Names[Melee_Index]])
    end
	if command == 'toggle weapon set' then
        Weapon_Index = Weapon_Index +1
    if Weapon_Index > #Weapon_Set_Names then Weapon_Index = 1 end
        windower.add_to_chat('Weapon is now: '..Weapons_Set_Names[Weapons_Index])
        equip(sets.weapon[Weapon_Set_Names[Weapon_Index]])
    end
	if command == 'toggle TH set' then
        TH_Index = TH_Index +1
    if TH_Index > #TH_Set_Names then TH_Index = 1 end
        windower.add_to_chat('TH mode is now: '..TH_Set_Names[TH_Index])
        equip(sets.TH[TH_Set_Names[TH_Index]])
    end
end