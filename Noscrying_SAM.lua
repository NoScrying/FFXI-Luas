function get_sets()
	send_command('bind f9 gs c toggle TP set') 
	send_command('bind !f9 gs c toggle Tank_Mode') 
	send_command('bind f10 gs c toggle run set') -- F10 = Cycle through
	send_command('bind f12 gs c toggle TH set') -- F10 = Cycle through
	send_command('bind f7 gs c toggle Weapons set') -- F10 = Cycle through
	send_command('bind !f7 gs c toggle Sub_Weapons set') -- F10 = Cycle through
	send_command('bind !numpad1 gs c toggle Buff set') -- F12 = Cycle through
	send_command('bind !numpad0 gs c toggle Emergency MEVA')
	
	Buff_Index = 1	
	Run_Index = 1
	TH_Index = 1
	Weapons_Index = 1
	Sub_Weapons_Index = 1
	
	Weapons_Set_Names = {'Masamune','Shining_One'}
	sets.weapons = {}
	sets.weapons.Masamune = {
    main="Masamune",
	sub="Utu Grip",
	}
	sets.weapons.Shining_One = {
    main="Shining One",
	sub="Utu Grip",
	}

	Sub_Weapons_Set_Names = {'Soboro',"Zanmato"}--,Norifusa
	sets.sub_weapons = {}
	sets.sub_weapons.Norifusa = {
    main="Norifusa",
	sub="Utu Grip",
	}
	sets.sub_weapons.Soboro = {
    main="Soboro Sukehiro",
	sub="Utu Grip",
	}
	sets.sub_weapons.Zanmato = {
    main="Zanmato",
	sub="Utu Grip",
	}
	MEVA_Set_Name = {'MEVA'}
	sets.MEVA = {
    ammo="Staunch Tathlum +1",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Warder's Charm +1",
    waist="Plat. Mog. Belt",
    left_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
    right_ear="Eabani Earring",
    left_ring="Archon Ring",
    right_ring="Purity Ring",
    back="Archon Cape",
	}
	

	sets.Tank_Mode = {} 
	sets.Tank_Mode.index = {'normal', 'Hybrid', "MEVA"}--'Subtle_Blow',
	Tank_Mode_ind = 1
	
	sets.Tank_Mode.normal = {
    ammo="Aurgelmir Orb",
	head="Kasuga Kabuto +2",
    body="Kasuga Domaru +2",
    hands={ name="Tatena. Gote +1", augments={'Path: A',}},
    legs="Kasuga Haidate +2",
    feet={ name="Ryuo Sune-Ate +1", augments={'STR+12','DEX+12','Accuracy+20',}},
	neck="Moonbeam Nodowa", 
	waist="Kentarch Belt +1",
    left_ear="Crepuscular Earring",
    right_ear="Kasuga Earring +1",
	left_ring="Niqmaddu Ring",
    right_ring="Lehko's Ring",		--, +10 STP, +10% Haste, +10 Crit, +8 Acc
    back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Phys. dmg. taken-10%',}},
	}
	sets.Tank_Mode.Hybrid = {
    ammo="Aurgelmir Orb",
    head="Kasuga Kabuto +2",
    body="Kasuga Domaru +2",
    hands="Nyame Gauntlets",
    legs="Kasuga Haidate +2",
	feet={ name="Ryuo Sune-Ate +1", augments={'STR+12','DEX+12','Accuracy+20',}},
    --feet="Nyame Sollerets",
    neck="Moonbeam Nodowa",
	waist="Kentarch Belt +1",
    left_ear="Crepuscular Earring",
    right_ear="Kasuga Earring +1",
    left_ring="Niqmaddu Ring",
    right_ring="Lehko's Ring",		--, +10 STP, +10% Haste, +10 Crit, +8 Acc
    back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Phys. dmg. taken-10%',}},
	}
	sets.Tank_Mode.Subtle_Blow = {
    ammo="Aurgelmir Orb",
    head="Kasuga Kabuto +2",
    body="Mpaca's Doublet",
    hands="Ken. Tekko +1",
    legs="Mpaca's Hose",
    feet="Ken. Sune-Ate +1",
    neck="Moonbeam Nodowa",
    waist="Ioskeha Belt +1",
    left_ear="Crepuscular Earring",
    right_ear="Cessance Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Chirich Ring +1",
    back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Phys. dmg. taken-10%',}},	
	}
	sets.Tank_Mode.MEVA = {
    ammo="Staunch Tathlum +1", --, SAM/RUN vs KEI, 4 hit 251TP, Rana - Shoha - Kasha - Fudo = Frag, Light, Light
    head="Nyame Helm",
	body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Kasuga Haidate +2",
	--feet="Kendatsuba Sune-Ate +1",
    feet="Nyame Sollerets",
    neck="Moonbeam Nodowa",
    waist={ name="Kentarch Belt +1", augments={'Path: A',}},
    left_ear="Eabani Earring",
    right_ear="Kasuga Earring +1",
    --left_ring="Niqmaddu Ring",
    left_ring="Chirich Ring +1",
    right_ring="Lehko's Ring",
    back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Phys. dmg. taken-10%',}},	
	
    -- ammo="Staunch Tathlum +1",--, Normal Max MEVA
    -- head="Nyame Helm",
    -- body="Nyame Mail",
    -- hands="Nyame Gauntlets",
    -- legs="Nyame Flanchard",
    -- feet="Nyame Sollerets",
    -- neck="Moonbeam Nodowa",
    -- waist={ name="Kentarch Belt +1", augments={'Path: A',}},
    -- left_ear="Crep. Earring",
    -- right_ear="Kasuga Earring +1",
    -- left_ring="Niqmaddu Ring",
    -- right_ring="Lehko's Ring",
    -- back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Store TP"+10','Phys. dmg. taken-10%',}},
	}

	sets.DD_Mode = {} 					-- Leave this empty.
	sets.DD_Mode.index = {'Counter','DT'}--'Subtle_Blow'
	DD_Mode_ind = 1
	
	sets.DD_Mode.Subtle_Blow = {
    ammo="Aurgelmir Orb",
    head="Flam. Zucchetto +2",
    body="Mpaca's Doublet",
    hands="Ken. Tekko +1",
    legs="Mpaca's Hose",
    feet="Ken. Sune-Ate +1",
    neck="Moonbeam Nodowa",
    waist="Ioskeha Belt +1",
    left_ear="Crepuscular Earring",
    right_ear="Cessance Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Chirich Ring +1",
    back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Phys. dmg. taken-10%',}},	
	}
	sets.DD_Mode.Counter = {
    ammo="Aurgelmir Orb",
    head="Kasuga Kabuto +2",
    body="Sacro Breastplate",
    hands="Nyame Gauntlets",
    legs="Kasuga Haidate +2",
    feet={ name="Ryuo Sune-Ate +1", augments={'STR+12','DEX+12','Accuracy+20',}},
    neck={ name="Bathy Choker +1", augments={'Path: A',}},
    waist="Cornelia's Belt",
    left_ear="Cryptic Earring",	--, 3
    right_ear="Cessance Earring",
    left_ring="Hizamaru Ring",
    right_ring="Lehko's Ring",		--, +10 STP, +10% Haste, +10 Crit, +8 Acc
    back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','System: 1 ID: 640 Val: 2',}},
	}
	sets.DD_Mode.DT = {
    ammo="Aurgelmir Orb",
    head="Kasuga Kabuto +2",
    body="Kasuga Domaru +2",
    hands="Kendatsuba Tekko +1",
    legs="Kasuga Haidate +2",
    feet="Kendatsuba Sune-Ate +1",
    neck="Moonbeam Nodowa",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Crepuscular Earring",
    right_ear={ name="Lugra Earring +1", augments={'Path: A',}},
    left_ring="Niqmaddu Ring",
    right_ring="Defending Ring",
    back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Phys. dmg. taken-10%',}},
	}
	
	Run_Set_Names = {'Regen','MEVA',"Refresh"}
	sets.run = {}
	sets.run.Regen =  {
    ammo="Aurgelmir Orb",
    head={ name="Valorous Mask", augments={'AGI+14','Weapon skill damage +5%','Quadruple Attack +1','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
    body="Sacro Breastplate",
    hands="Rao Kote +1",
    legs="Kasuga Haidate +2",
    feet="Danzo Sune-Ate",
    neck={ name="Bathy Choker +1", augments={'Path: A',}},
    waist="Carrier's Sash",
    left_ear="Odnowa Earring +1",
    right_ear="Infused Earring",
    left_ring="Chirich Ring +1",
    right_ring="Defending Ring",
    back="Moonbeam Cape",
	}
	sets.run.MEVA = {
    ammo="Staunch Tathlum +1",			--, Status Resistance +10, -2DT,
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Danzo Sune-Ate",
    neck="Warder's Charm +1", 		--, +20 Element Resist, +5% Magic Absorb chance
    waist="Carrier's Sash", 
    left_ear="Odnowa Earring +1",
    right_ear="Eabani Earring",		--, +8 Meva
    left_ring="Archon Ring", 		--, +5% Negate Magic Damage chance
    right_ring="Defending Ring", 	--, -10% DT
    back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Phys. dmg. taken-10%',}},
	}
	sets.run.Refresh = {
    ammo="Staunch Tathlum +1",
    head={ name="Valorous Mask", augments={'AGI+14','Weapon skill damage +5%','Quadruple Attack +1','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
    body="Chozor. Coselete",
    hands={ name="Rao Kote +1", augments={'Accuracy+12','Attack+12','Evasion+20',}},
    legs="Kasuga Haidate +2",
    feet="Danzo Sune-Ate",
    neck="Sibyl Scarf",
    waist="Carrier's Sash",
    left_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
    right_ear="Infused Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back="Moonbeam Cape",
	}
	
	TH_Set_Names = {'TH'}
	sets.TH = {}
	sets.TH.TH = {
    head="White Rarab Cap +1",
	hands={ name="Valorous Mitts", augments={'"Mag.Atk.Bns."+1','Attack+11','"Treasure Hunter"+1','Accuracy+8 Attack+8','Mag. Acc.+3 "Mag.Atk.Bns."+3',}},
	ammo="Perfect Lucky Egg",
    waist="Chaac Belt",
	}
	
	sets.ws = {} 					-- Leave this empty.
	sets.ws["2500+ TP"] = {
	right_ear={ name="Lugra Earring +1", augments={'Path: A',}},
    head={ name="Valorous Mask", augments={'AGI+14','Weapon skill damage +5%','Quadruple Attack +1','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
	}
	
	sets.ws['Impulse Drive']	= {
	ammo="Knobkierrie",
    head="Mpaca's Cap",
    --body={ name="Valorous Mail", augments={'Weapon skill damage +4%','STR+13','Attack+5',}},
    body="Sakonji Domaru +3",
    hands="Kasuga Kote +2",
    legs="Wakido Haidate +3",
    feet="Mpaca's Boots",
    neck={ name="Sam. Nodowa +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Lehko's Ring",		--, +10 STP, +10% Haste, +10 Crit, +8 Acc
    right_ring="Epaminondas's Ring",
    back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Sonic Thrust']	= {
	ammo="Knobkierrie",
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    --body={ name="Valorous Mail", augments={'Weapon skill damage +4%','STR+13','Attack+5',}},
    body="Mpaca's Doublet",
    hands="Kasuga Kote +2",
    legs="Wakido Haidate +3",
	feet="Mpaca's Boots",
    neck={ name="Sam. Nodowa +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Lehko's Ring",		--, +10 STP, +10% Haste, +10 Crit, +8 Acc
    right_ring="Epaminondas's Ring",
    back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Vorpal Thrust']	= {
	ammo="Knobkierrie",
    head="Mpaca's Cap",
    --body={ name="Valorous Mail", augments={'Weapon skill damage +4%','STR+13','Attack+5',}},
    body="Sakonji Domaru +3",
    hands="Kasuga Kote +2",
    legs="Wakido Haidate +3",
    feet="Mpaca's Boots",
    neck={ name="Sam. Nodowa +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Lehko's Ring",		--, +10 STP, +10% Haste, +10 Crit, +8 Acc
    right_ring="Epaminondas's Ring",
    back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Double Thrust']	= {
    ammo="Aurgelmir Orb",
    head="Mpaca's Cap",
    body="Mpaca's Doublet",
    hands={ name="Ryuo Tekko +1", augments={'DEX+12','Accuracy+25','"Dbl.Atk."+4',}},
    legs="Mpaca's Hose",
    feet="Mpaca's Boots",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Lugra Earring +1", augments={'Path: A',}},
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Niqmaddu Ring",
    right_ring="Lehko's Ring",		--, +10 STP, +10% Haste, +10 Crit, +8 Acc
    back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Phys. dmg. taken-10%',}},
	}
	sets.ws['Stardiver']	= {
    ammo="Aurgelmir Orb",
    head="Mpaca's Cap",
    body="Mpaca's Doublet",
    hands={ name="Ryuo Tekko +1", augments={'DEX+12','Accuracy+25','"Dbl.Atk."+4',}},
    legs="Mpaca's Hose",
    feet="Mpaca's Boots",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Lugra Earring +1", augments={'Path: A',}},
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Niqmaddu Ring",
    right_ring="Lehko's Ring",		--, +10 STP, +10% Haste, +10 Crit, +8 Acc
    back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Phys. dmg. taken-10%',}},
	}
	sets.ws['Tachi: Gekko']	= {
	ammo="Knobkierrie",
    head="Mpaca's Cap",
    --body={ name="Valorous Mail", augments={'Weapon skill damage +4%','STR+13','Attack+5',}},
    body="Sakonji Domaru +3",
    hands="Kasuga Kote +2",
    legs="Wakido Haidate +3",
    feet={ name="Valorous Greaves", augments={'Accuracy+29','Weapon skill damage +4%','STR+13',}},
    neck={ name="Sam. Nodowa +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Niqmaddu Ring",
    right_ring="Sroda Ring",
    --right_ring="Epaminondas's Ring",
    back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Tachi: Rana']	= {
	ammo="Knobkierrie",
    head={ name="Valorous Mask", augments={'AGI+14','Weapon skill damage +5%','Quadruple Attack +1','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
    --body={ name="Valorous Mail", augments={'Weapon skill damage +4%','STR+13','Attack+5',}},
    body="Sakonji Domaru +3",
    hands="Kasuga Kote +2",
    legs={ name="Tatena. Haidate +1", augments={'Path: A',}},
    feet={ name="Valorous Greaves", augments={'Accuracy+29','Weapon skill damage +4%','STR+13',}},
    neck={ name="Sam. Nodowa +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Tachi: Fudo']	= {
	ammo="Knobkierrie",
    head="Mpaca's Cap",
    --body={ name="Valorous Mail", augments={'Weapon skill damage +4%','STR+13','Attack+5',}},
    body="Sakonji Domaru +3",
    hands="Kasuga Kote +2",
    legs="Wakido Haidate +3",
	feet="Kasuga Sune-Ate +2",
    neck={ name="Sam. Nodowa +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Niqmaddu Ring",
    right_ring="Sroda Ring",
    --right_ring="Epaminondas's Ring",
    back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Tachi: Kasha']	= {
	ammo="Knobkierrie",
    head="Mpaca's Cap",
    --body={ name="Valorous Mail", augments={'Weapon skill damage +4%','STR+13','Attack+5',}},
    body="Sakonji Domaru +3",
    hands="Kasuga Kote +2",
    legs="Wakido Haidate +3",
	feet="Kasuga Sune-Ate +2",
    neck={ name="Sam. Nodowa +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Niqmaddu Ring",
    right_ring="Sroda Ring",
    --right_ring="Epaminondas's Ring",
    back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Tachi: Jinpu']	= {
	ammo="Knobkierrie",
    head={ name="Valorous Mask", augments={'AGI+14','Weapon skill damage +5%','Quadruple Attack +1','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
    body="Sakonji Domaru +3",
	-- body="Sacro Breastplate",
    hands="Kasuga Kote +2",
    legs="Wakido Haidate +3",
    feet="Nyame Sollerets",
    neck="Fotia Gorget",
    waist="Orpheus's Sash",
    left_ear="Friomisi Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Niqmaddu Ring",
    right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Tachi: Koki']	= {
	ammo="Knobkierrie",
    head={ name="Valorous Mask", augments={'AGI+14','Weapon skill damage +5%','Quadruple Attack +1','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
    body="Sakonji Domaru +3",
    hands="Kasuga Kote +2",
    legs="Wakido Haidate +3",
    feet="Nyame Sollerets",
    neck="Fotia Gorget",
    waist="Orpheus's Sash",
    left_ear="Friomisi Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Weatherspoon Ring +1",
    right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Tachi: Kagero']	= {
	ammo="Knobkierrie",
    head={ name="Valorous Mask", augments={'AGI+14','Weapon skill damage +5%','Quadruple Attack +1','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
    body="Sakonji Domaru +3",
    hands="Kasuga Kote +2",
    legs="Wakido Haidate +3",
    feet="Nyame Sollerets",
    neck="Fotia Gorget",
    waist="Orpheus's Sash",
    left_ear="Friomisi Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Niqmaddu Ring",
    right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Tachi: Yukikaze']	= {
	ammo="Knobkierrie",
    head="Mpaca's Cap",
    --body={ name="Valorous Mail", augments={'Weapon skill damage +4%','STR+13','Attack+5',}},
    body="Sakonji Domaru +3",
    hands="Kasuga Kote +2",
    legs="Wakido Haidate +3",
    feet={ name="Valorous Greaves", augments={'Accuracy+29','Weapon skill damage +4%','STR+13',}},
    neck={ name="Sam. Nodowa +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Niqmaddu Ring",
    right_ring="Sroda Ring",
    --right_ring="Epaminondas's Ring",
    back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Tachi: Goten']	= {
	ammo="Knobkierrie",
    head={ name="Valorous Mask", augments={'AGI+14','Weapon skill damage +5%','Quadruple Attack +1','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
    body="Sakonji Domaru +3",
    hands="Kasuga Kote +2",
    legs="Wakido Haidate +3",
    feet="Nyame Sollerets",
    neck="Fotia Gorget",
    waist="Orpheus's Sash",
    left_ear="Friomisi Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Niqmaddu Ring",
    right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Tachi: Ageha']	= {
    ammo="Oshasha's Treatise",
    head="Kasuga Kabuto +2",
    body="Kasuga Domaru +2",
    hands="Kasuga Kote +2",
    legs="Kasuga Haidate +2",
	feet="Kasuga Sune-Ate +2",
    neck={ name="Sam. Nodowa +1", augments={'Path: A',}},
    waist="Eschan Stone",
    left_ear="Crep. Earring",
    right_ear="Kasuga Earring +1",
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring="Weatherspoon Ring +1",
    back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Tachi: Shoha']	= {
	ammo="Knobkierrie",
    head="Mpaca's Cap",
    --body={ name="Valorous Mail", augments={'Weapon skill damage +4%','STR+13','Attack+5',}},
    body="Sakonji Domaru +3",
    hands="Kasuga Kote +2",
    legs="Wakido Haidate +3",
	feet="Kasuga Sune-Ate +2",
    neck={ name="Sam. Nodowa +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Niqmaddu Ring",
    right_ring="Sroda Ring",
    --right_ring="Epaminondas's Ring",
    back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}

	sets.ws['Apex Arrow']	= {
    ammo="Chapuli Arrow",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Peacock Amulet",
    waist="Eschan Stone",
    left_ear="Crep. Earring",
    right_ear="Kasuga Earring +1",
    left_ring="Cacoethic Ring",
    right_ring="Longshot Ring",
    back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Phys. dmg. taken-10%',}},
	}
	sets.ws['Empyreal Arrow']	= {
    ammo="Chapuli Arrow",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Peacock Amulet",
    waist="Eschan Stone",
    left_ear="Crep. Earring",
    right_ear="Kasuga Earring +1",
    left_ring="Cacoethic Ring",
    right_ring="Longshot Ring",
    back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Phys. dmg. taken-10%',}},
	}
	sets.ws.Norifusa = {
    ammo="Aurgelmir Orb",
    head="Flam. Zucchetto +2",
    body="Sakonji Domaru +3",
    hands={ name="Tatena. Gote +1", augments={'Path: A',}},
    legs="Kasuga Haidate +2",
    feet="Flam. Gambieras +2",
    neck={ name="Sam. Nodowa +1", augments={'Path: A',}},
    waist={ name="Kentarch Belt +1", augments={'Path: A',}},
    left_ear="Crep. Earring",
    right_ear="Kasuga Earring +1",
    left_ring="Lehko's Ring",
    right_ring="Chirich Ring +1",
    back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Phys. dmg. taken-10%',}},
	}

	sets.ja = {} 					-- Leave this empty
	sets.ja['Meditate'] = set_combine ( sets.Tank_Mode.Hybrid, {
	head="Myochin Kabuto",
    back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Phys. dmg. taken-10%',}},
    hands={ name="Sakonji Kote +3", augments={'Enhances "Blade Bash" effect',}},
	})
	sets.ja['Warding Circle'] = set_combine ( sets.Tank_Mode.Hybrid, {
	head="Myochin Kabuto",
	})
	sets.ja['Sengikori'] = set_combine ( sets.Tank_Mode.Hybrid, {
	feet="Kasuga Sune-Ate +2",
	})
	sets.ja["Provoke"] = set_combine ( sets.Tank_Mode.Hybrid, {
    ammo="Sapience Orb",
    head="Halitus Helm",
    body="Emet Harness",
    hands="Nyame Gauntlets",
    legs="Kasuga Haidate +2",
    feet="Nyame Sollerets",
    neck={ name="Unmoving Collar +1", augments={'Path: A',}},
    waist="Warwolf Belt",
    left_ear="Cryptic Earring",
    right_ear="Trux Earring",
    left_ring="Supershear Ring",
    right_ring="Provocare Ring",
    back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Phys. dmg. taken-10%',}},
	})
	sets.ja['Warcry'] = set_combine ( sets.Tank_Mode.Hybrid, {
    ammo="Sapience Orb",
    head="Halitus Helm",
    body="Emet Harness",
    hands="Nyame Gauntlets",
    legs="Kasuga Haidate +2",
    feet="Nyame Sollerets",
    neck={ name="Unmoving Collar +1", augments={'Path: A',}},
    waist="Warwolf Belt",
    left_ear="Cryptic Earring",
    right_ear="Trux Earring",
    left_ring="Supershear Ring",
    right_ring="Provocare Ring",
    back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Phys. dmg. taken-10%',}},
	})	
	sets.ja['Aggressor'] = set_combine ( sets.Tank_Mode.Hybrid, {
    ammo="Sapience Orb",
    head="Halitus Helm",
    body="Emet Harness",
    hands="Nyame Gauntlets",
    legs="Kasuga Haidate +2",
    feet="Nyame Boots",
    neck={ name="Unmoving Collar +1", augments={'Path: A',}},
    waist="Warwolf Belt",
    left_ear="Cryptic Earring",
    right_ear="Trux Earring",
    left_ring="Supershear Ring",
    right_ring="Provocare Ring",
    back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Phys. dmg. taken-10%',}},
	})
	sets.ja['Swordplay'] = set_combine ( sets.Tank_Mode.Hybrid, {
    ammo="Sapience Orb",
    head="Halitus Helm",
    body="Emet Harness",
    hands="Nyame Gauntlets",
    legs="Kasuga Haidate +2",
    feet="Nyame Boots",
    neck={ name="Unmoving Collar +1", augments={'Path: A',}},
    waist="Warwolf Belt",
    left_ear="Cryptic Earring",
    right_ear="Trux Earring",
    left_ring="Supershear Ring",
    right_ring="Provocare Ring",
    back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Phys. dmg. taken-10%',}},
	})
	sets.ja['Pflug'] = set_combine ( sets.Tank_Mode.Hybrid, {
    ammo="Sapience Orb",
    head="Halitus Helm",
    body="Emet Harness",
    hands="Nyame Gauntlets",
    legs="Kasuga Haidate +2",
    feet="Nyame Boots",
    neck={ name="Unmoving Collar +1", augments={'Path: A',}},
    waist="Warwolf Belt",
    left_ear="Cryptic Earring",
    right_ear="Trux Earring",
    left_ring="Supershear Ring",
    right_ring="Provocare Ring",
    back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Phys. dmg. taken-10%',}},
	})
	sets.ja['Vallation'] = set_combine ( sets.Tank_Mode.Hybrid, {
    ammo="Sapience Orb",
    head="Halitus Helm",
    body="Emet Harness",
    hands="Nyame Gauntlets",
    legs="Kasuga Haidate +2",
    feet="Nyame Boots",
    neck={ name="Unmoving Collar +1", augments={'Path: A',}},
    waist="Warwolf Belt",
    left_ear="Cryptic Earring",
    right_ear="Trux Earring",
    left_ring="Supershear Ring",
    right_ring="Provocare Ring",
    back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Phys. dmg. taken-10%',}},
	})
	sets.ja['Valiance'] = set_combine ( sets.Tank_Mode.Hybrid, {
    ammo="Sapience Orb",
    head="Halitus Helm",
    body="Emet Harness",
    hands="Nyame Gauntlets",
    legs="Kasuga Haidate +2",
    feet="Nyame Boots",
    neck={ name="Unmoving Collar +1", augments={'Path: A',}},
    waist="Warwolf Belt",
    left_ear="Cryptic Earring",
    right_ear="Trux Earring",
    left_ring="Supershear Ring",
    right_ring="Provocare Ring",
    back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Phys. dmg. taken-10%',}},
	})
	sets.ja['Jump'] = set_combine ( sets.Tank_Mode.Hybrid, {
    ammo="Coiste Bodhar",
    head="Mpaca's Cap",
    body="Mpaca's Doublet",
    hands="Mpaca's Gloves",
    legs="Mpaca's Hose",
    feet="Mpaca's Boots",
    neck={ name="Sam. Nodowa +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Schere Earring",
    right_ear="Brutal Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Lehko's Ring",
    back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','System: 1 ID: 640 Val: 2',}},
	})	
	sets.ja['High Jump'] = set_combine ( sets.Tank_Mode.Hybrid, {
    ammo="Coiste Bodhar",
    head="Mpaca's Cap",
    body="Mpaca's Doublet",
    hands="Mpaca's Gloves",
    legs="Mpaca's Hose",
    feet="Mpaca's Boots",
    neck={ name="Sam. Nodowa +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Schere Earring",
    right_ear="Brutal Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Lehko's Ring",
    back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','System: 1 ID: 640 Val: 2',}},
	})	
	sets.ja.waltz = {		
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Dashing Subligar",
    feet="Nyame Sollerets",
    neck={ name="Unmoving Collar +1", augments={'Path: A',}},
    waist="Plat. Mog. Belt",
    left_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
    right_ear="Tuisto Earring",
    left_ring="Asklepian Ring",
    right_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},
    back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Phys. dmg. taken-10%',}},
	}
	sets.idle = {} 					-- Leave this empty
	sets.idle.regen = {
    ammo="Aurgelmir Orb",
    head={ name="Rao Kabuto", augments={'Pet: HP+100','Pet: Accuracy+15','Pet: Damage taken -3%',}},
    body="Sacro Breastplate",
    hands={ name="Rao Kote", augments={'Pet: HP+100','Pet: Accuracy+15','Pet: Damage taken -3%',}},
    legs="Kasuga Haidate +2",
    feet="Danzo Sune-Ate",
    neck={ name="Bathy Choker +1", augments={'Path: A',}},
    waist="Platinum Moogle Belt",
    left_ear="Odnowa Earring +1",
    right_ear="Infused Earring",
    left_ring="Defending Ring",
    right_ring="Chirich Ring +1",
    back="Moonbeam Cape",
	}
	sets.precast = {}               -- leave this empty
	sets.precast.fastcast = {
	ammo="Impatiens",
    head={ name="Carmine Mask", augments={'Accuracy+15','Mag. Acc.+10','"Fast Cast"+3',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
    neck="Voltsurge Torque",
    body="Sacro Breastplate",
	legs="Carmine Cuisses +1",
	feet={ name="Carmine Greaves", augments={'Accuracy+10','DEX+10','MND+15',}},
	left_ring="Lebeche Ring",
	right_ring="Weatherspoon Ring +1",
    left_ear="Malignance Earring",	
    right_ear="Loquacious Earring",
	} 		
    sets.midcast = {}               -- leave this empty  
	sets.midcast.macc = {
	ammo="Staunch Tathlum +1",
    head="Kasuga Kabuto +2",
    body="Kasuga Domaru +2",
    hands="Kasuga Kote +2",
    legs="Kasuga Haidate +2",
	feet="Kasuga Sune-Ate +2",
    neck="Warder's Charm +1",
    waist="Eschan Stone",
    left_ear="Crep. Earring",
    right_ear="Kasuga Earring +1",
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring="Stikini Ring +1",
    back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Phys. dmg. taken-10%',}},
	}

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
	sets.buff.adoulin = {
	body="Councilor\'s Garb"
	}

	sets.adoulin = {}
	sets.adoulin.movement = {body="Councilor's Garb",}   --auto swaps when in adoulin 
 

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
			if player.tp >= 2500 then
				equip(sets.ws["2500+ TP"])
			end	
		end
	if spell.skill == "Great Katana" and player.equipment.main == "Norifusa" or player.equipment.main == "Zanmato" or player.equipment.main == "Soboro Sukehiro" then
		equip(sets.ws.Norifusa)
	end
    if spell.name:match('Curing') or spell.name:match('Divine') then
        equip(sets.ja.waltz)
	end
	if spell.action_type == 'Ranged Attack' then
		equip(sets.ws["Apex Arrow"])
	end
end

function midcast(spell)
    if  spell.action_type == 'Magic' then
        equip(sets.midcast.macc)
	end
    if  spell.name == 'Flash' then
        equip(sets.ja["Provoke"])
	end
    if spell.name:match('Curing') or spell.name:match('Divine') then
        equip(sets.ja.waltz)
	end
end

function aftercast(spell)
	idle()
end

function buff_change(buff,gain)
    if buff == 'Reive Mark' then
        if gain then
            equip(sets.buff.reive)
            disable("neck")
        else
            enable("neck")
            equip(sets.Idle)
        end
	end
end


function idle()
	if player.status =="Engaged" then --, When drawing weapon
		if Tank_Mode == true then
			equip(sets.Tank_Mode[sets.Tank_Mode.index[Tank_Mode_ind]]) --, Equips the last gearset you changed to, is not static
		elseif DD_Mode == true then
			equip(sets.DD_Mode[sets.DD_Mode.index[DD_Mode_ind]])
		end
	end
	if player.status =='Idle' then
        equip(sets.run[Run_Set_Names[Run_Index]]) 
    end
end

 function status_change(new,old)
	idle()
end 

Tank_Mode = true --, If true, default set is tanking TP array.
DD_Mode = true --, TP set order, looks for Tanking TP set before 2H TP

function self_command(command)
	if command == 'toggle TP set' then --, When using the command as specified at the top of this lua, then executes these functions
		if Tank_Mode == true then --, Checks whether or not the Tank_Mode Mode is active,
			Tank_Mode_ind = Tank_Mode_ind + 1 --, Cycles through the Index, starts at 1 when switching or starting game
			if Tank_Mode_ind > #sets.Tank_Mode.index then Tank_Mode_ind = 1 end 
			windower.add_to_chat('DD Mode --> ' .. sets.Tank_Mode.index[Tank_Mode_ind] ..'') --, Sends a message ingame, not visible to others.
			--if player.status == 'Engaged' then
				equip(sets.Tank_Mode[sets.Tank_Mode.index[Tank_Mode_ind]])
			--end
		elseif Tank_Mode == false then
			if DD_Mode == true then
				DD_Mode_ind = DD_Mode_ind + 1
				if DD_Mode_ind > #sets.DD_Mode.index then DD_Mode_ind = 1 end
				windower.add_to_chat('Tank Mode --> ' .. sets.DD_Mode.index[DD_Mode_ind] ..'')
				--if player.status == 'Engaged' then
						equip(sets.DD_Mode[sets.DD_Mode.index[DD_Mode_ind]])
				end
			end		
		end
	if command == 'toggle Tank_Mode set' then
		Tank_Mode_ind = Tank_Mode_ind + 1
		if Tank_Mode_ind > #sets.Tank_Mode.index then Tank_Mode_ind = 1 end
		windower.add_to_chat('DD mode --> ' .. sets.Tank_Mode.index[Tank_Mode_ind] ..'')
		if player.status == 'Engaged' then
			equip(sets.Tank_Mode[sets.Tank_Mode.index[Tank_Mode_ind]])
		end
	elseif command == 'toggle Tank_Mode' then
		if Tank_Mode == true then
			Tank_Mode = false
			windower.add_to_chat('<----- DD Mode: [Off] ----->')
        else
			Tank_Mode = true
			windower.add_to_chat('<----- DD Mode: [On] ----->')
		end
		status_change(player.status)
	elseif command == 'toggle DD_Mode' then
		if DD_Mode == true then
			DD_Mode = false
			windower.add_to_chat('<----- Tank Mode: [Off] ----->')
        else
			DD_Mode = true
			windower.add_to_chat('<----- Tank Mode: [On] ----->')
		end
	end
	if command == 'toggle run set' then
        Run_Index = Run_Index +1
        if Run_Index > #Run_Set_Names then Run_Index = 1 end
        windower.add_to_chat('Movement is now: '..Run_Set_Names[Run_Index])
		equip(sets.run[Run_Set_Names[Run_Index]])
	end
	if command == 'toggle TH set' then
        TH_Index = TH_Index +1
    if TH_Index > #TH_Set_Names then TH_Index = 1 end
        windower.add_to_chat('TH4 equipped')
        equip(sets.TH[TH_Set_Names[TH_Index]])
    end
	if command == 'toggle Weapons set' then
        Weapons_Index = Weapons_Index +1
        if Weapons_Index > #Weapons_Set_Names then Weapons_Index = 1 end
        windower.add_to_chat('Weapon is now: '..Weapons_Set_Names[Weapons_Index])
		equip(sets.weapons[Weapons_Set_Names[Weapons_Index]])
	end
	if command == 'toggle Sub_Weapons set' then
        Sub_Weapons_Index = Sub_Weapons_Index +1
        if Sub_Weapons_Index > #Sub_Weapons_Set_Names then Sub_Weapons_Index = 1 end
        windower.add_to_chat('Sub Weapon is now: '..Sub_Weapons_Set_Names[Sub_Weapons_Index])
		equip(sets.sub_weapons[Sub_Weapons_Set_Names[Sub_Weapons_Index]])
	end
	if command == 'toggle Buff set' then
        Buff_Index = Buff_Index +1
    if Buff_Index > #Buff_Set_Names then Buff_Index = 1 end
        windower.add_to_chat('Buff mode is now: '..Buff_Set_Names[Buff_Index])
        equip(sets.buff[Buff_Set_Names[Buff_Index]])
    end
	if command == 'toggle Emergency MEVA' then
        windower.add_to_chat('Equipping Emergency MEVA/DT')
		equip(sets.MEVA)
	end
end

function file_unload() --, Unbinds defined keybinds when changing jobs, can also use "send_command('clearbinds')" to wipe any and all
send_command('unbind f9')
send_command('unbind !f9')
send_command('unbind ^f9')
send_command('unbind f10')
send_command('unbind !f10')
send_command('unbind f12')
send_command('unbind !f12')
send_command('unbind f7')
send_command('unbind !f7')
send_command('unbind !numpad1')
send_command('unbind ^numpad1')
send_command('unbind !numpad0')
send_command('unbind !numpad7')
end
