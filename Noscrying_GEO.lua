function get_sets()
	send_command('bind f9 gs c toggle Engaged set') -- F9 = Cycle through
	send_command('bind f7 gs c toggle weapon set') -- F10 = Cycle through
	send_command('bind f10 gs c toggle Run set') -- F10 = Cycle through
	send_command('bind f12 gs c toggle TH set') -- F12 = Cycle through
	send_command('bind ^f12 gs c toggle Nuke set')
	send_command('bind !numpad1 gs c toggle Holy Water')
	send_command('bind !numpad3 gs c toggle Echo Drops')	
	Engaged_Index = 1
	Weapon_Index = 1
	Run_Index = 1
	TH_Index = 1
	Nuke_Index = 1
	
	Engaged_Set_Names = {"Luopan Regen/Refresh",'Melee'}--,'Refresh/DT'
	sets.Engaged = {} 					-- Leave this empty.
	sets.Engaged.Melee = {
    ammo="Staunch Tathlum +1",
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Nyame Mail",
    hands="Azimuth Gloves +2",
    legs="Nyame Flanchard",
    feet="Azimuth Gaiters +2",
    neck="Lissome Necklace",
    waist="Cornelia's Belt",
    left_ear="Cessance Earring",
    right_ear="Brutal Earring",
    left_ring="Chirich Ring +1",
    right_ring="Lehko's Ring",
    back={ name="Nantosuelta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+5','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}

	sets.Engaged["Refresh/DT"] = {
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Azimuth Gloves +2",
    legs="Nyame Flanchard",
    feet="Azimuth Gaiters +2",
    neck="Sibyl Scarf",
    waist="Carrier's Sash",
    left_ear="Friomisi Earring",
    right_ear="Malignance Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back={ name="Nantosuelta's Cape", augments={'INT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+5','Pet: "Regen"+10','Phys. dmg. taken-10%',}},
	}
	sets.Engaged["Luopan Regen/Refresh"] =  {
    range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
    head="Azimuth Hood +2",
    body="Azimuth Coat +2",
    hands="Azimuth Gloves +2",
    legs={ name="Telchine Braconi", augments={'Mag. Evasion+23','Pet: "Regen"+3','Pet: Damage taken -4%',}},
    feet="Azimuth Gaiters +2",
    neck="Bagua Charm +1",
    waist="Carrier's Sash",
    left_ear="Infused Earring",
    right_ear="Regal Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back={ name="Nantosuelta's Cape", augments={'INT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+5','Pet: "Regen"+10','Phys. dmg. taken-10%',}},
	}
	sets["DW"] = {
    waist="Shetal Stone",
    left_ear="Suppanomimi",
	right_ear="Eabani Earring",	
	}
	
	Run_Set_Names = {"Luopan Regen","DT/MovSpeed"}
	sets.run = {}
	sets.run["DT/MovSpeed"] =  {
    ammo="Staunch Tathlum +1",
    head="Azimuth Hood +2",
    body="Azimuth Coat +2",
    hands="Azimuth Gloves +2",
    legs="Assid. Pants +1",
    feet="Geo. Sandals +1",
    neck="Elite Royal Collar",
    waist="Carrier's Sash",
    left_ear="Odnowa Earring +1",
    right_ear="Infused Earring",
    left_ring="Defending Ring",
    right_ring="Stikini Ring +1",
    back={ name="Nantosuelta's Cape", augments={'INT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+5','Pet: "Regen"+10','Phys. dmg. taken-10%',}},
	}
	sets.run["Luopan Regen"] =  {
    ammo="Staunch Tathlum +1",
    head="Azimuth Hood +2",
    body={ name="Telchine Chas.", augments={'Pet: Mag. Evasion+18','Pet: "Regen"+3','Pet: Damage taken -3%',}},
    hands="Azimuth Gloves +2",
    legs={ name="Telchine Braconi", augments={'Mag. Evasion+23','Pet: "Regen"+3','Pet: Damage taken -4%',}},
    feet={ name="Bagua Sandals +1", augments={'Enhances "Radial Arcana" effect',}},
    neck={ name="Bagua Charm +1", augments={'Path: A',}},
    waist="Carrier's Sash",
    left_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
    right_ear={ name="Azimuth Earring +1", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+13','Damage taken-4%',}},
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back={ name="Nantosuelta's Cape", augments={'INT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+5','Pet: "Regen"+10','Phys. dmg. taken-10%',}},
	}	
	TH_Set_Names = {'TH3'}
	sets.TH = {}
	sets.TH.TH3 = {

	head="White Rarab Cap +1",
    waist={ name="Tarutaru Sash", augments={'"Treasure Hunter"+1','MND+2',}},
    body="Nyame Mail",
    hands="Azimuth Gloves +2",
    legs="Nyame Flanchard",
    feet="Azimuth Gaiters +2",
    neck="Elite Royal Collar",
    left_ring="Defending Ring",
    right_ring={ name="Dark Ring", augments={'Phys. dmg. taken -6%','Magic dmg. taken -3%',}},
    back={ name="Nantosuelta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
	}
	
	Weapon_Set_Names = {"Idris/Ammurapi","Idris/Daybreak","Maxentius/Magesmasher","Mpaca"}--'Bunzi','Daybreak',
	sets.weapon = {}
	sets.weapon.Daybreak = {
    main="Daybreak",
    sub="Ammurapi Shield",
	}
	sets.weapon["Idris/Ammurapi"] = {
    main="Idris",
    sub="Ammurapi Shield",
	}
	sets.weapon.Mpaca = {
    main="Mpaca's Staff",
    sub="Khonsu",
	}
	sets.weapon["Idris/Daybreak"] = {
    main="Idris",
    sub="Daybreak",
	}	
	sets.weapon["Maxentius/Magesmasher"] = {
    main="Maxentius",
	sub="Magesmasher +1",
	}	
	sets.ws = {} 					-- Leave this empty.
	sets.ws['Black Halo']	= {
    ammo="Crepuscular Pebble",
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Jhakri Robe +2",
    hands="Jhakri Cuffs +2",
    legs="Jhakri Slops +2",
    feet="Jhakri Pigaches +2",
    neck="Rep. Plat. Medal",
    waist="Cornelia's Belt",
    left_ear="Cessance Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epaminondas's Ring",
    right_ring="Ifrit Ring +1",
    back={ name="Nantosuelta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+5','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.ws['Judgment']	= {
    ammo="Crepuscular Pebble",
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Jhakri Robe +2",
    hands="Jhakri Cuffs +2",
    legs="Jhakri Slops +2",
    feet="Jhakri Pigaches +2",
    neck="Rep. Plat. Medal",
    waist="Cornelia's Belt",
    left_ear="Cessance Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epaminondas's Ring",
    right_ring="Ifrit Ring +1",
    back={ name="Nantosuelta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+5','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.ws['Cataclysm']	= {
    ammo="Ghastly Tathlum +1",
    head="Azimuth Hood +2",
    body="Azimuth Coat +2",
    hands="Jhakri Cuffs +2",
    legs="Azimuth Tights +2",
    feet="Azimuth Gaiters +2",
    neck="Sanctity Necklace",
    waist="Orpheus's Sash",
    left_ear="Malignance Earring",
    right_ear={ name="Azimuth Earring +1", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+13','Damage taken-4%',}},
    left_ring="Archon Ring",
    right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    back={ name="Nantosuelta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
	}
	sets.ws['Realmrazer']	= {
    ammo="Crepuscular Pebble",
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Jhakri Robe +2",
    hands="Jhakri Cuffs +2",
    legs="Jhakri Slops +2",
    feet="Jhakri Pigaches +2",
    neck="Rep. Plat. Medal",
    waist="Cornelia's Belt",
    left_ear="Cessance Earring",
    right_ear="Brutal Earring",
    left_ring="Epaminondas's Ring",
    right_ring="Ifrit Ring +1",
    back={ name="Nantosuelta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+5','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.ws['Flash Nova']	= {
    ammo="Ghastly Tathlum +1",
    head="Azimuth Hood +2",
    body="Azimuth Coat +2",
    hands="Jhakri Cuffs +2",
    legs="Azimuth Tights +2",
    feet="Azimuth Gaiters +2",
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
    left_ear="Regal Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Freke Ring",
    right_ring="Weatherspoon Ring +1",
	back={ name="Nantosuelta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
	}
	sets.ws['Hexa Strike']	= {
    ammo="Crepuscular Pebble",
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Jhakri Robe +2",
    hands="Jhakri Cuffs +2",
    legs="Jhakri Slops +2",
    feet="Jhakri Pigaches +2",
    neck="Rep. Plat. Medal",
    waist="Cornelia's Belt",
    left_ear="Cessance Earring",
    right_ear="Brutal Earring",
    left_ring="Ifrit Ring +1",
    right_ring="Lehko's Ring",
    back={ name="Nantosuelta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+5','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}	
	
	sets.ja = {} 					-- Leave this empty.		
	sets.ja["Life Cycle"] = {
	body="Geomancy Tunic +1",
    back={ name="Nantosuelta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
    neck="Unmoving Collar +1",
    waist="Platinum Moogle Belt",
    left_ear="Odnowa Earring +1",
    right_ear="Tuisto Earring",
	right_ring="Gelatinous Ring +1",
	}
	sets.ja["Bolster"] = {
	body="Bagua Tunic +1",
	}	
	sets.ja["Concentric Pulse"] = {
    head={ name="Bagua Galero +2", augments={'Enhances "Primeval Zeal" effect',}},
	}
	sets.ja["Radial Arcana"] = {
	body="Bagua Sandals +1",
	}
	sets.ja["Full Circle"] = {
	head="Azimuth Hood +2",
	}	
	sets.idle = {} 					-- Leave this empty.

	sets.precast = {}               -- leave this empty
	sets.precast.fastcast = {
    range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
    head={ name="Amalric Coif +1", augments={'INT+12','Mag. Acc.+25','Enmity-6',}},
    body="Agwu's Robe",
    hands="Agwu's Gages",
    legs="Geomancy Pants +1",
    feet={ name="Amalric Nails +1", augments={'Mag. Acc.+20','"Mag.Atk.Bns."+20','"Conserve MP"+7',}},
    neck="Voltsurge Torque",
    waist="Witful Belt",
    left_ear="Malignance Earring",
    right_ear="Loquac. Earring",
    left_ring="Kishar Ring",
    right_ring="Weather. Ring +1",
	back={ name="Lifestream Cape", augments={'Geomancy Skill +9','Indi. eff. dur. +20','Pet: Damage taken -5%',}},
	}
	sets.precast["Geomancy"] = set_combine(sets.precast.fastcast,{ main = "Idris" })
	sets.precast['Dispelga'] = set_combine(sets.precast.fastcast,{ main = "Daybreak" })
	
    sets.midcast = {}               -- leave this empty  
	sets.midcast.DT = {
    range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
    head={ name="Vanya Hood", augments={'MND+10','Spell interruption rate down +15%','"Conserve MP"+6',}},
    body="Nyame Mail",
    hands="Azimuth Gloves +2",
    legs={ name="Vanya Slops", augments={'MND+10','Spell interruption rate down +15%','"Conserve MP"+6',}},
    feet="Azimuth Gaiters +2",
    neck="Voltsurge Torque",
    waist={ name="Shinjutsu-no-Obi +1", augments={'Path: A',}},
    left_ear="Malignance Earring",
    right_ear={ name="Azimuth Earring +1", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+13','Damage taken-4%',}},
    left_ring="Defending Ring",
    right_ring={ name="Mephitas's Ring +1", augments={'Path: A',}},
    back={ name="Nantosuelta's Cape", augments={'INT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+5','Pet: "Regen"+10','Phys. dmg. taken-10%',}},
	}
	
	sets.midcast.geo = {
	main="Idris",
    range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
    head={ name="Vanya Hood", augments={'MND+10','Spell interruption rate down +15%','"Conserve MP"+6',}},
    body="Nyame Mail",
    hands="Azimuth Gloves +2",
    legs={ name="Vanya Slops", augments={'MND+10','Spell interruption rate down +15%','"Conserve MP"+6',}},
    feet="Nyame Sollerets",
    neck={ name="Bagua Charm +1", augments={'Path: A',}},
    waist={ name="Shinjutsu-no-Obi +1", augments={'Path: A',}},
    left_ear="Magnetic Earring",
    right_ear={ name="Azimuth Earring +1", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+13','Damage taken-4%',}},
    left_ring="Freke Ring",
    right_ring={ name="Mephitas's Ring +1", augments={'Path: A',}},
    back={ name="Nantosuelta's Cape", augments={'INT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+5','Pet: "Regen"+10','Phys. dmg. taken-10%',}},
	}	
	sets.midcast.indi = {
	main="Idris",
    range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
    head={ name="Vanya Hood", augments={'MND+10','Spell interruption rate down +15%','"Conserve MP"+6',}},
    body="Nyame Mail",
    hands="Azimuth Gloves +2",
    legs="Bagua Pants +1",
    feet="Azimuth Gaiters +2",
    neck="Elite Royal Collar",
    waist={ name="Shinjutsu-no-Obi +1", augments={'Path: A',}},
    left_ear="Magnetic Earring",
    right_ear={ name="Azimuth Earring +1", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+13','Damage taken-4%',}},
    left_ring="Freke Ring",
    right_ring={ name="Mephitas's Ring +1", augments={'Path: A',}},
    back={ name="Lifestream Cape", augments={'Geomancy Skill +9','Indi. eff. dur. +20','Pet: Damage taken -5%',}},
	}			
	
	sets.midcast.enhancingduration = {
    sub="Ammurapi Shield",
    range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
    head={ name="Telchine Cap", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    body={ name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},
    hands={ name="Telchine Gloves", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}},
    legs={ name="Telchine Braconi", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +10',}},
    neck="Incanter's Torque",
    waist="Embla Sash",
    left_ear="Mimir Earring",
    right_ear={ name="Azimuth Earring +1", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+13','Damage taken-4%',}},
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back={ name="Nantosuelta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
	}		
	
	sets.midcast.cure = {
    range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
    head={ name="Vanya Hood", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
    body="Nyame Mail",
    hands={ name="Telchine Gloves", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}},
    legs={ name="Telchine Braconi", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    feet={ name="Vanya Clogs", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
    neck="Elite Royal Collar",
    waist={ name="Shinjutsu-no-Obi +1", augments={'Path: A',}},
    left_ear="Magnetic Earring",
    right_ear={ name="Azimuth Earring +1", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+13','Damage taken-4%',}},
    left_ring="Defending Ring",
    right_ring={ name="Mephitas's Ring +1", augments={'Path: A',}},
    back="Tempered Cape +1",
	}

	sets.midcast.pixie = {
    ammo="Ghastly Tathlum +1",
    head="Pixie Hairpin +1",
    body="Jhakri Robe +2",
    hands="Jhakri Cuffs +2",
    legs="Azimuth Tights +2",
    feet="Azimuth Gaiters +2",
    neck="Erra Pendant",
    waist="Eschan Stone",
    left_ear="Malignance Earring",
    right_ear={ name="Azimuth Earring +1", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+13','Damage taken-4%',}},
    left_ring="Evanescence Ring",
    right_ring="Archon Ring",
    back={ name="Nantosuelta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
	}


	sets.midcast.MACC = {
    ammo={ name="Ghastly Tathlum +1", augments={'Path: A',}},
    head="Azimuth Hood +2",
    body="Azimuth Coat +2",
    hands="Azimuth Gloves +2",
    legs="Azimuth Tights +2",
    feet="Azimuth Gaiters +2",
    neck="Bagua Charm +1",
    waist={ name="Acuity Belt +1", augments={'Path: A',}},
    left_ear="Malignance Earring",
        right_ear={ name="Azimuth Earring +1", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+13','Damage taken-4%',}},
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring="Weatherspoon Ring +1",
    back={ name="Aurist's Cape +1", augments={'Path: A',}},
	}
	sets.midcast.enfeebling = {
    range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
    head={ name="Amalric Coif +1", augments={'INT+12','Mag. Acc.+25','Enmity-6',}},
    body="Azimuth Coat +2",
    hands="Azimuth Gloves +2",
    legs="Azimuth Tights +2",
    feet="Azimuth Gaiters +2",
    neck="Bagua Charm +1",
    waist={ name="Acuity Belt +1", augments={'Path: A',}},
    left_ear="Malignance Earring",
    right_ear={ name="Azimuth Earring +1", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+13','Damage taken-4%',}},
    left_ring="Kishar Ring",
    right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    back={ name="Aurist's Cape +1", augments={'Path: A',}},
	}
	
 	sets.midcast.regen = {
	ammo="Impatiens",
    head="Azimuth Hood +2",
    body={ name="Telchine Chas.", augments={'"Regen" potency+3',}},
    hands={ name="Telchine Gloves", augments={'"Regen" potency+3',}},
    legs={ name="Telchine Braconi", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +10',}},
    neck="Willpower Torque",
    waist="Embla Sash",
    left_ear="Magnetic Earring",
    right_ear="Halasz Earring",
    left_ring="Stikini Ring +1",
    right_ring="Evanescence Ring",
    back={ name="Nantosuelta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
	}	
	sets.midcast.Aquaveil = {
    ammo="Impatiens",
	head="Amalric Coif +1",
    body={ name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},
    hands={ name="Telchine Gloves", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}},
     legs={ name="Telchine Braconi", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +10',}},
    neck="Incanter's Torque",
	waist="Emphatikos Rope",
    left_ear="Magnetic Earring",
    right_ear="Halasz Earring",
    left_ring="Stikini Ring +1",
    right_ring="Evanescence Ring",
    back={ name="Nantosuelta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
	}
	sets.midcast.Refresh = set_combine(sets.midcast.Aquaveil, { 
	sub="Ammurapi Shield",
	waist="Embla Sash",
	})
	sets.midcast.Drain = {	
    ammo={ name="Ghastly Tathlum +1", augments={'Path: A',}},
    head={ name="Bagua Galero +2", augments={'Enhances "Primeval Zeal" effect',}},
    body="Azimuth Coat +2",
    hands="Azimuth Gloves +2",
    legs="Azimuth Tights +2",
    feet="Agwu's Pigaches",
    neck="Erra Pendant",
    waist="Fucho-no-Obi",
    left_ear="Malignance Earring",
    right_ear={ name="Azimuth Earring +1", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+13','Damage taken-4%',}},
    left_ring="Evanescence Ring",
    right_ring="Archon Ring",
    back={ name="Nantosuelta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
	}
	sets.midcast.DrainTP = {	
    range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
    head={ name="Amalric Coif +1", augments={'INT+12','Mag. Acc.+25','Enmity-6',}},
    body="Agwu's Robe",
    hands="Agwu's Gages",
    legs="Geomancy Pants +1",
    feet="Agwu's Pigaches",
    neck="Erra Pendant",
    waist="Acuity Belt +1",
    left_ear="Malignance Earring",
    right_ear="Regal Earring",
    left_ring="Lehko's Ring",
    right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
	back="Aurist's Cape +1",
	}

	Nuke_Set_Names = {'Nukes','MB'}
	sets.Nuke = {}
	sets.Nuke.Nukes = {
    ammo="Ghastly Tathlum +1",
    head="Azimuth Hood +2",
    body="Azimuth Coat +2",
    hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    legs="Azimuth Tights +2",
    feet={ name="Amalric Nails +1", augments={'Mag. Acc.+20','"Mag.Atk.Bns."+20','"Conserve MP"+7',}},
    neck="Mizu. Kubikazari",
    waist="Orpheus's Sash",
    left_ear="Malignance Earring",
    right_ear="Regal Earring",
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring="Freke Ring",
    back={ name="Nantosuelta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
	}
	
	sets.Nuke.MB = {
    ammo="Sroda Tathlum",
    head="Ea Hat +1",
    --body="Ea Houppelande",
	body="Azimuth Coat +2",
    hands="Ea Cuffs +1",
    legs="Azimuth Tights +2",
    feet="Jhakri Pigaches +2",
    neck="Mizu. Kubikazari",
    waist="Orpheus's Sash",
    left_ear="Malignance Earring",
    right_ear="Regal Earring",
    left_ring="Freke Ring",
    right_ring="Mujin Band",
    back={ name="Nantosuelta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
	}
	sets.Nuke.Stone = set_combine(sets.Nuke.MB, {
	neck="Quanpur Necklace",
	feet="Agwu's Pigaches",
	})
	sets.Nuke.Ra = set_combine(sets.Nuke.Nukes, {
	legs="Perdition Slops",
	})
    sets.aftercast = {}             -- leave this empty
	
	ElementalGear = {}
	ElementalGear.Obi = "Hachirin-no-Obi"
	ElementalGear.Cape = "Twilight Cape"
	sets.midcast.CureWithLightWeather = {back=ElementalGear.Cape,waist=ElementalGear.Obi}
	sets.midcast.NukeWithMatchingWeather = {back=ElementalGear.Cape,waist=ElementalGear.Obi}
	
	
	sets.buff = {} 					-- Leave this empty.
	sets.buff.Holywater = {
    neck="Nicander's Necklace",
    left_ring="Blenmot's Ring +1",
    right_ring="Purity Ring",
    waist="Gishdubar Sash",	
    feet={ name="Vanya Clogs", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
	}
	sets.buff.CursnaOthers = { 	--, +107 Healing Skill, +55 Cursna, 
    neck="Debilis Medallion", 	--, +15
    waist="Gishdubar Sash",		--, +10 Self
	feet={ name="Vanya Clogs", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}}, --, +5
    left_ring="Haoma's Ring", 	--, 15
    right_ring="Menelaus's Ring", --, +20
    back="Oretania's Cape +1", 	--, +5
	}
	sets.buff.CursnaSelf = { 	--, +107 Healing Skill, +40 Cursna, +30 Self Cursna
    neck="Nicander's Necklace", --, +20 Self
    waist="Gishdubar Sash", 	--, +10 Self
    feet={ name="Vanya Clogs", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}}, --, +5
    left_ring="Haoma's Ring", 	--,+15 
    right_ring="Menelaus's Ring", --, +20
	}
end

function precast(spell)
    if  spell.type ~= 'JobAbility' then
        equip(sets.precast.fastcast)
	end
	if spell.name == "Dispelga" then
	equip(sets.precast['Dispelga'])
	end
	if spell.skill == "Geomancy" then
	equip(sets.precast['Geomancy'])
	end
    if sets.ja[spell.name] then
        equip(sets.ja[spell.name])
	end
    if sets.ws[spell.name] then
        equip(sets.ws[spell.name])        
    end  
	
end

function midcast(spell)
    if  spell.action_type == 'Magic' then
		equip(sets.midcast.DT)
	end
	if T{"Aquaveil"}:contains(spell.name) then
		equip(sets.midcast.Aquaveil) else
			if T{"Refresh"}:contains(spell.name) then
				equip(sets.midcast.Refresh) else
			if spell.skill == 'Enhancing Magic'  then
				equip(sets.midcast.enhancingduration)
			end
		end
	end
	--		
	if T{"Aspir","Aspir II","Aspir III","Drain"}:contains(spell.name) then
		equip (sets.midcast.Drain)
	end
	--

	--
	if spell.skill == 'Enfeebling Magic' then
		equip(sets.midcast.enfeebling) else
	if T{"Sleep","Sleep II","Sleepga","Sleepga II","Break","Bio","Bind","Blind","Frazzle","Dispel","Silence"}:contains(spell.name) then
		equip (sets.midcast.MACC)
	end
end
	--
	if spell.skill == 'Elemental Magic' then
		equip(sets.Nuke[Nuke_Set_Names[Nuke_Index]])
	if spell.name:match("Ston") and not spell.name:match("Stona") then
		equip(sets.Nuke.Stone) else
	if T{"Fira II","Fira III","Blizzara II","Blizzara III","Stonera II","Stonera III","Aera II","Aera III","Thundara II","Thundara III","Watera II","Watera III"}:contains(spell.name) then
		equip(sets.Nuke.Ra)
			if world.weather_element == spell.element or world.day_element == spell.element then
				equip(sets.midcast.NukeWithMatchingWeather)	
			end
		end
	end
end		
	--
    if spell.action_type == 'Magic' then
		if spell.skill == 'Healing Magic' then
			equip(sets.midcast.cure)
				if T{"Paralyna","Silena","Stona","Viruna","Poisona"}:contains(spell.name) then
				equip(sets.midcast.DT)
			end
		end
	if 	spell.name:match('Cursna') and spell.target.type == 'SELF' then
			equip(set_combine(sets.midcast.cure, sets.buff.CursnaSelf))
elseif 	spell.name:match('Cursna') and spell.target.type == 'PLAYER' then
			equip(set_combine(sets.midcast.cure, sets.buff.CursnaOthers))
	end
end
	--
	if spell.skill == 'Geomancy' and spell.name:match("Geo-")then
		equip(sets.midcast.geo)	else
	if spell.skill == 'Geomancy' and spell.name:match("Indi-")then
		equip(sets.midcast.indi)
	end
end
end

function aftercast(spell)
	idle()
		equip(sets.weapon[Weapon_Set_Names[Weapon_Index]])
	status_change(player.status)
end
 
function buff_change(buff,gain)
    if buff == "doom" then --, Auto equips doom set, cause I'm lazy from killing Shinryu
        if gain then
            equip(sets.buff.Holywater)
             disable('ring1','ring2','waist','neck','feet')
        else
            enable('ring1','ring2','waist','neck','feet')
            status_change(player.status)
        end
    end
	if buff == "entrust" then
		if gain then
		send_command("@input /ma 'Indi-Haste' <Qultada>")
	end
end
end
 
function status_change(new,old)
	idle()
end


function idle()
	if player.status=='Engaged' and player.sub_job ~='NIN' or player.sub_job ~= 'DNC'then --, "~=" means "Is Not", So if sub is not NIN or DNC, then uses this set
        equip(sets.Engaged[Engaged_Set_Names[Engaged_Index]]) 
	end
	if player.status=='Engaged' and player.sub_job =='NIN' or player.sub_job == 'DNC' then --, "==" means "Is", So if sub is NIN or DNC then uses this set
		equip(set_combine(sets.Engaged[Engaged_Set_Names[Engaged_Index]], sets["DW"]))
	end
	if player.status =='Idle' then --, When holstering weapon
		equip(sets.run[Run_Set_Names[Run_Index]])
	end
end

function self_command(command)
	if command == 'toggle Engaged set' then
        Engaged_Index = Engaged_Index +1
    if Engaged_Index > #Engaged_Set_Names then Engaged_Index = 1 end
        windower.add_to_chat('TP mode is now: '..Engaged_Set_Names[Engaged_Index])
        equip(sets.Engaged[Engaged_Set_Names[Engaged_Index]])
    end
	if command == 'toggle weapon set' then
        Weapon_Index = Weapon_Index +1
    if Weapon_Index > #Weapon_Set_Names then Weapon_Index = 1 end
        windower.add_to_chat('Weapon is now: '..Weapon_Set_Names[Weapon_Index])
        equip(sets.weapon[Weapon_Set_Names[Weapon_Index]])
    end
	if command == 'toggle TH set' then
        TH_Index = TH_Index +1
    if TH_Index > #TH_Set_Names then TH_Index = 1 end
        windower.add_to_chat('TH mode is now: '..TH_Set_Names[TH_Index])
        equip(sets.TH[TH_Set_Names[TH_Index]])
    end
	if command == 'toggle Run set' then
        Run_Index = Run_Index +1
        if Run_Index > #Run_Set_Names then Run_Index = 1 end
        windower.add_to_chat('Movement mode is now: '..Run_Set_Names[Run_Index])
		equip(sets.run[Run_Set_Names[Run_Index]])
	end
	if command == 'toggle Nuke set' then
        Nuke_Index = Nuke_Index +1
    if Nuke_Index > #Nuke_Set_Names then Nuke_Index = 1 end
        windower.add_to_chat('Nuke mode is now: '..Nuke_Set_Names[Nuke_Index])
    end
	if command == 'toggle Holy Water' then
        windower.add_to_chat("Using Holy Water")
		send_command ("input /item 'Holy Water' <me>")
	end
	if command == 'toggle Echo Drops' then
        windower.add_to_chat("Using Echo Drops")
		send_command ("input /item 'Echo Drops' <me>")
    end
end
