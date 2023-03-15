function get_sets()
	send_command('bind f9 gs c toggle melee set') -- F9 = Cycle through
	send_command('bind f10 gs c toggle Run set') -- F10 = Cycle through
	send_command('bind f7 gs c toggle weapon set') -- F10 = Cycle through
	send_command('bind f12 gs c toggle TH set') -- F12 = Cycle through
	send_command('bind numpad1 gs c toggle Buff set') -- F12 = Cycle through
	Melee_Index = 1
	Weapon_Index = 1
	Run_Index = 1
	TH_Index = 1
	Buff_Index = 1
	
	Melee_Set_Names = {'melee', 'DT', 'mage'}
	sets.melee = {} 					-- Leave this empty.
	sets.melee.melee = {
    ammo="Homiliary",
    head="Arbatel Bonnet +2",
    body="Arbatel Gown +2",
    hands="Jhakri Cuffs +2",
	--legs="Arbatel Pants +2",
	legs="Jhakri Slops +2",
    feet="Jhakri Pigaches +2",
    neck="Lissome Necklace",
    waist="Cornelia's Belt",
    left_ear="Cessance Earring",
    right_ear="Brutal Earring",
    left_ring="Chirich Ring",
    right_ring="Chirich Ring +1",
    back={ name="Aurist's Cape +1", augments={'Path: A',}},
	}
	sets.melee.DT = {
    ammo="Homiliary",
    head="Arbatel Bonnet +2",
    body="Arbatel Gown +2",
    hands="Jhakri Cuffs +2",
	--legs="Arbatel Pants +2",
	legs="Jhakri Slops +2",
    feet="Battlecast Gaiters",
    neck="Warder's Charm",
    waist="Carrier's Sash",
    left_ear="Infused Earring",
    right_ear="Malignance Earring",
    left_ring="Defending Ring",
    right_ring={ name="Dark Ring", augments={'Phys. dmg. taken -6%','Magic dmg. taken -3%',}},
    back="Moonbeam Cape",
	}
	sets.melee.mage = {
    ammo="Homiliary",
    head="Arbatel Bonnet +2",
    body="Arbatel Gown +2",
    hands="Jhakri Cuffs +2",
	--legs="Arbatel Pants +2",
	legs="Jhakri Slops +2",
    feet="Jhakri Pigaches +2",
    neck="Sibyl Scarf",
	waist="Embla Sash",
    left_ear="Infused Earring",
    right_ear="Malignance Earring",
    left_ring="Defending Ring",
    right_ring={ name="Dark Ring", augments={'Phys. dmg. taken -6%','Magic dmg. taken -3%',}},
    back="Moonbeam Cape",
	}

	Run_Set_Names = {'Refresh'}
	sets.Run = {}
	sets.Run.Refresh =  {
    ammo="Homiliary",
    head="Arbatel Bonnet +2",
    body="Arbatel Gown +2",
    hands="Jhakri Cuffs +2",
	--legs="Arbatel Pants +2",
	legs="Jhakri Slops +2",
    feet="Herald's Gaiters",
    neck="Warder's Charm",
	waist="Embla Sash",
    left_ear="Infused Earring",
    right_ear="Malignance Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back="Moonbeam Cape",
	}
	
	TH_Set_Names = {'TH3'}
	sets.TH = {}
	sets.TH.TH3 = {
	ammo="Perfect Lucky Egg",
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
    back="Lugh's Cape",
	}
	
	Weapon_Set_Names = {'Daybreak', 'Malignance','Akademos'}
	sets.weapon = {}
	sets.weapon.Daybreak = {
    main="Daybreak",
    sub="Culminus",
	}
	sets.weapon.Malignance = {
    main="Malignance Pole",
    sub="Enki Strap",
	}
	sets.weapon.Akademos = {
	main="Akademos",
	sub="Enki Strap",
	}
	
	sets.ws = {} 					-- Leave this empty.
	sets.ws['Black Halo']	= {
    ammo="Homiliary",
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
	ammo="Ginsen",
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
    right_ring="Petrov Ring",
    back="Argocham. Mantle",
	}
	sets.ws['Flash Nova']	= {
	ammo="Ginsen",
    head="Jhakri Coronal +2",
    body="Jhakri Robe +2",
    hands="Jhakri Cuffs +2",
    legs="Jhakri Slops +2",
    feet="Jhakri Pigaches +2",
    neck="Sibyl Scarf",
    waist="Eschan Stone",
    left_ear="Regal Earring",
    right_ear="Malignance Earring",
    left_ring="Strendu Ring",
    right_ring="Jhakri Ring",
    back="Argocham. Mantle",
	}
	
	
	sets.ja = {} 					-- Leave this empty.
	sets.ja['Sublimation'] = {
	waist="Embla Sash",
	}
	sets.ja['Klimaform'] = {
	ammo="Impatiens",
	head={ name="Telchine Cap", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    body={ name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},
    hands={ name="Telchine Gloves", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}},
    legs={ name="Telchine Braconi", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
	feet="Arbatel Loafers +1",
	waist="Embla Sash",
    neck="Sibyl Scarf",
    left_ear="Malignance Earring",
    right_ear="Arbatel Earring +1",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back="Lugh's Cape",

	}
	sets.ja['Ebullience'] = {
    head="Arbatel Bonnet +2",
	}
	sets.ja['Rapture'] = {
    head="Arbatel Bonnet +2",
	}	
	sets.ja['Perpetuance'] = {
	hands="Arbatel Bracers +1",
    body={ name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},	
    legs={ name="Telchine Braconi", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +10',}},
	}
	sets.ja['Penury'] = {
	legs="Arbatel Pants +1",
	}
	sets.ja['Parsimony'] = {
	legs="Arbatel Pants +1",
	}
	
	sets.idle = {} 					-- Leave this empty.
	sets.idle.normal = {
    main="Malignance Pole",
    sub="Enki Strap",
    ammo="Homiliary",
    head="Arbatel Bonnet +2",
    body="Arbatel Gown +2",
    hands="Jhakri Cuffs +2",
	--legs="Arbatel Pants +2",
	legs="Jhakri Slops +2",
    feet="Herald's Gaiters",
    neck="Warder's Charm",
	waist="Embla Sash",
    left_ear="Infused Earring",
    right_ear="Malignance Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back="Moonbeam Cape",
	}
	
	sets.precast = {}               -- leave this empty
	sets.precast.fastcast = {
    ammo="Impatiens",
    head="Arbatel Bonnet +2",
    body="Arbatel Gown +2",
    hands="Arbatel Bracers +1",
	--legs="Arbatel Pants +2",
	legs="Gyve Trousers",
    feet="Arbatel Loafers +1",
    waist="Witful Belt",
    neck="Voltsurge Torque",
    left_ear="Malignance Earring",
    right_ear="Loquacious Earring",
    left_ring="Kishar Ring",
    right_ring="Weatherspoon Ring",
    back="Ogapepo Cape",
	}
	sets.precast['Dispelga'] = set_combine(sets.precast.fastcast,{ main = "Daybreak" })
	
    sets.midcast = {}               -- leave this empty  
	sets.midcast.enfeebling = {
    main="Daybreak",
    sub="Culminus",
	ammo="Impatiens",
    head="Arbatel Bonnet +2",
    body="Arbatel Gown +2",
    hands="Jhakri Cuffs +2",
    legs={ name="Chironic Hose", augments={'Mag. Acc.+21 "Mag.Atk.Bns."+21','INT+10','Mag. Acc.+11','"Mag.Atk.Bns."+5',}},
    feet="Jhakri Pigaches +2",
    neck="Erra Pendant",
    waist="Eschan Stone",
    left_ear="Malignance Earring",
    right_ear="Arbatel Earring +1",
    left_ring="Kishar Ring",
    right_ring="Stikini Ring +1",
    back={ name="Aurist's Cape +1", augments={'Path: A',}},
	}
	sets.midcast.MACC = {
    main="Daybreak",
    sub="Culminus",
    ammo="Impatiens",
    head="Arbatel Bonnet +2",
    body="Arbatel Gown +2",
    hands="Jhakri Cuffs +2",
    legs={ name="Chironic Hose", augments={'Mag. Acc.+21 "Mag.Atk.Bns."+21','INT+10','Mag. Acc.+11','"Mag.Atk.Bns."+5',}},
    feet="Jhakri Pigaches +2",
    neck="Erra Pendant",
    waist="Eschan Stone",
    left_ear="Malignance Earring",
    right_ear={ name="Arbatel Earring +1", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+13','Enmity-3',}},
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring="Stikini Ring +1",
    back={ name="Aurist's Cape +1", augments={'Path: A',}},
	}
	
	sets.midcast.Drain = {	
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head="Arbatel Bonnet +2",
    body="Arbatel Gown +2",
    hands="Jhakri Cuffs +2",
    legs={ name="Chironic Hose", augments={'Mag. Acc.+21 "Mag.Atk.Bns."+21','INT+10','Mag. Acc.+11','"Mag.Atk.Bns."+5',}},
    feet="Jhakri Pigaches +2",
    neck="Erra Pendant",
    waist="Orpheus's Sash",
    left_ear="Malignance Earring",
    right_ear={ name="Arbatel Earring +1", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+13','Enmity-3',}},
    left_ring="Evanescence Ring",
    right_ring="Archon Ring",
    back={ name="Aurist's Cape +1", augments={'Path: A',}},
	}
	
	sets.midcast.elemental = {
    main="Daybreak",
    sub="Culminus",
    ammo="Sroda Tathlum",
    head="Arbatel Bonnet +2",
    body="Arbatel Gown +2",
    hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
	--legs="Arbatel Pants +2",
	legs="Jhakri Slops +2",
    feet="Jhakri Pigaches +2",
    neck="Mizu. Kubikazari",
    waist="Orpheus's Sash",
    left_ear="Malignance Earring",
    right_ear="Arbatel Earring +1",
    left_ring="Mujin Band",
    right_ring="Freke Ring",
    back="Seshaw Cape",
	}
		
	
	sets.midcast.enhancingduration = {
	ammo="Impatiens",
	head={ name="Telchine Cap", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    body={ name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},
    hands={ name="Telchine Gloves", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}},
     legs={ name="Telchine Braconi", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +10',}},
	waist="Embla Sash",
    neck="Sibyl Scarf",
    left_ear="Malignance Earring",
    right_ear="Arbatel Earring +1",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back="Lugh's Cape",
	}
	sets.midcast.enhancingskill = {
    ammo="Impatiens",
    head="Arbatel Bonnet +2",
    body="Arbatel Gown +2",
    hands="Chironic Gloves",
    legs={ name="Telchine Braconi", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +10',}},
    neck="Melic Torque",
    waist="Embla Sash",
    left_ear="Mimir Earring",
    right_ear="Augment. Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back={ name="Aurist's Cape +1", augments={'Path: A',}},
	}	
 	sets.midcast.regen = {
	main="Bolelabunga",
	sub="Culminus",
	ammo="Impatiens",
    head="Arbatel Bonnet +2",
    body={ name="Telchine Chas.", augments={'"Regen" potency+3',}},
    hands={ name="Telchine Gloves", augments={'"Regen" potency+3',}},
     legs={ name="Telchine Braconi", augments={'"Regen" potency+3',}},
    feet={ name="Telchine Pigaches", augments={'"Regen" potency+3',}},
    neck="Willpower Torque",
    waist="Resolute Belt",
    left_ear="Magnetic Earring",
    right_ear="Halasz Earring",
    left_ring="Stikini Ring +1",
    right_ring="Evanescence Ring",
    back={ name="Bookworm's Cape", augments={'INT+3','MND+2','Helix eff. dur. +20','"Regen" potency+9',}},
	}	
	
	sets.midcast.refresh = {
    ammo="Impatiens",
	head="Amalric Coif",
    body={ name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},
    hands={ name="Telchine Gloves", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}},
     legs={ name="Telchine Braconi", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +10',}},
    neck="Sibyl Scarf",
	waist="Gishdubar Sash",
    left_ear="Magnetic Earring",
    right_ear="Halasz Earring",
    left_ring="Stikini Ring +1",
    right_ring="Evanescence Ring",
    back="Lugh's Cape",
	}
	
	sets.midcast.cure = {
    ammo="Impatiens",
    head={ name="Telchine Cap", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    body={ name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},
    hands={ name="Telchine Gloves", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}},
    legs={ name="Telchine Braconi", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    feet={ name="Vanya Clogs", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
    neck="Phalaina Locket",
    waist="Gishdubar Sash",
    left_ear="Magnetic Earring",
    right_ear="Halasz Earring",
    left_ring="Kunaji Ring",
    right_ring="Menelaus's Ring",
    back={ name="Aurist's Cape +1", augments={'Path: A',}},
	}

	sets.midcast.dark = {
    main="Daybreak",
    sub="Culminus",
    ammo="Sroda Tathlum",
    head="Pixie Hairpin +1",
    body="Arbatel Gown +2",
    hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
	--legs="Arbatel Pants +2",
	legs="Jhakri Slops +2",
    feet="Jhakri Pigaches +2",
    neck="Mizu. Kubikazari",
    waist="Eschan Stone",
    left_ear="Malignance Earring",
    right_ear="Arbatel Earring +1",
    left_ring="Mujin Band",
    right_ring="Archon Ring",
    back="Seshaw Cape",
	}
	sets.midcast.light = {
    main="Daybreak",
    sub="Culminus",
    ammo="Sroda Tathlum",
    head="Arbatel Bonnet +2",
    body="Arbatel Gown +2",
    hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
	--legs="Arbatel Pants +2",
	legs="Jhakri Slops +2",
    feet="Jhakri Pigaches +2",
    neck="Mizu. Kubikazari",
    waist="Eschan Stone",
    left_ear="Malignance Earring",
    right_ear="Arbatel Earring +1",
    left_ring="Mujin Band",
    right_ring="Weatherspoon Ring",
    back="Seshaw Cape",
	}
    sets.aftercast = {}             -- leave this empty
	
	ElementalGear = {}
	ElementalGear.Obi = "Hachirin-no-Obi"
	ElementalGear.Cape = "Twilight Cape"
	sets.midcast.CureWithLightWeather = {back=ElementalGear.Cape,waist=ElementalGear.Obi}
	sets.midcast.NukeWithMatchingWeather = {back=ElementalGear.Cape,waist=ElementalGear.Obi}
	
	
	Buff_Set_Names = {'Holywater'}
	sets.buff = {} 					-- Leave this empty.
	sets.buff.reive = {
	neck="Ygnas\'s Resolve +1",
	}
	sets.buff.Holywater = {
    neck="Nicander's Necklace",
    left_ring="Blenmot's Ring",
    right_ring="Purity Ring",
	}
	sets.buff.CursnaOthers = {
    neck="Malison Medallion",
    waist="Gishdubar Sash",
    feet={ name="Vanya Clogs", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
    left_ring="Ephedra Ring",
    right_ring="Menelaus's Ring",
	}
	sets.buff.CursnaSelf = {
    neck="Nicander's Necklace",
    waist="Gishdubar Sash",
    feet={ name="Vanya Clogs", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
    left_ring="Ephedra Ring",
    right_ring="Menelaus's Ring",
	}

end

function precast(spell)
    if  spell.action_type == 'Magic' then
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
    if spell.skill == 'Healing Magic' then
        equip(sets.midcast.cure)
	end
	if spell.name:match('Refresh') then
		equip(sets.midcast.refresh)
	end
	if spell.name:match('Regen') then
		equip(sets.midcast.regen) else
			if spell.name:match('Refresh') or spell.name:match('Aquaveil') then
				equip(sets.midcast.refresh) else
					if spell.skill == 'Enhancing Magic'  then
						equip(sets.midcast.enhancingduration)
					end
				end
			end
	if spell.name:match("Phalanx") or spell.name:match("Bar") then
		equip(sets.midcast.enhancingskill)
	end
	if spell.name:match('Klimaform') then
		equip(sets.ja['Klimaform'])
	end
	if spell.name:match("Sleep") or spell.name:match("Break") or spell.name:match("Dispel") or spell.name:match("Silence") then 
		equip (sets.midcast.MACC) else
			if spell.name:match('Aspir') or spell.name:match('Drain') then
				equip (sets.midcast.Drain) else
			if spell.skill == 'Enfeebling Magic' then
				equip(sets.midcast.enfeebling)
			end
		end
	end
        if spell.skill == 'Elemental Magic' then
			equip(sets.midcast.elemental)
            if world.weather_element == spell.element or world.day_element == spell.element then
                equip(sets.midcast.NukeWithMatchingWeather)
				end
			end
		if spell.name:match('Nocto') then 
			equip(sets.midcast.dark)
		end
		if spell.name:match('Lumino') then
			equip(sets.midcast.light)
		end		

		
		if spell.skill == 'Healing Magic' then
			equip(sets.midcast.cure)
		            if world.weather_element == spell.element or world.day_element == spell.element then
						equip(sets.midcast.NukeWithMatchingWeather)
				if spell.name:match('Cursna') and spell.target.type == 'SELF' then
					equip(sets.buff.CursnaSelf)	else
				if spell.name:match('Cursna') and spell.target.type == 'PLAYER' then
					equip(sets.buff.CursnaOthers)
				end
			end
		end
	end
end

		

function aftercast(spell)
	idle()
end
 
function buff_change(buff,gain)
    if buff == 'Perpetuance' then
        if gain then
            equip(	sets.ja['Perpetuance'])
            disable("hands","Legs","Feet")
        else
            enable("hands","Legs","Feet")
            equip(sets.Idle)
        end
    end
end
 
function status_change(new,old)
	idle()
end


function idle()
    if player.status=='Engaged' then
        equip(sets.melee[Melee_Set_Names[Melee_Index]]) 
	end
	if player.status =='Idle' then
		equip(sets.idle.normal)
	end
end

function self_command(command)
	if command == 'toggle melee set' then
        Melee_Index = Melee_Index +1
    if Melee_Index > #Melee_Set_Names then Melee_Index = 1 end
        windower.add_to_chat('Armor is now: '..Melee_Set_Names[Melee_Index])
        equip(sets.melee[Melee_Set_Names[Melee_Index]])
    end
	if command == 'toggle Run set' then
        Run_Index = Run_Index +1
        if Run_Index > #Run_Set_Names then Run_Index = 1 end
        windower.add_to_chat('Movement mode is now: '..Run_Set_Names[Run_Index])
		equip(sets.Run[Run_Set_Names[Run_Index]])
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
	if command == 'toggle Buff set' then
        Buff_Index = Buff_Index +1
    if Buff_Index > #Buff_Set_Names then Buff_Index = 1 end
        windower.add_to_chat('Buff mode is now: '..Buff_Set_Names[Buff_Index])
        equip(sets.buff[Buff_Set_Names[Buff_Index]])
    end
end

function file_unload()
send_command('unbind f9')
send_command('unbind !f9')
send_command('unbind f10')
send_command('unbind !f10')
send_command('unbind f12')
send_command('unbind !f12')
send_command('unbind f7')
send_command('unbind !f7')
send_command('unbind numpad1')
end