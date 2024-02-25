function get_sets()
	send_command('bind f9 gs c toggle TP set') 
	send_command('bind !f9 gs c toggle Tank_Mode') 
	send_command('bind f10 gs c toggle refresh set')
	send_command('bind f12 gs c toggle TH set')
	send_command('bind f7 gs c toggle Main set')
	send_command('bind !f7 gs c toggle Sub set')
	send_command('bind ^numpad1 gs c toggle Buff set')
	send_command('bind !numpad3 gs c toggle Echo Drops')
	send_command('bind !numpad1 gs c toggle Holy Water')
	
	Refresh_Index= 1
	TH_Index = 1
	Main_Index = 1
	Sub_Index = 1
	Buff_Index = 1
	
	sets.DD_Mode = {}
	sets.DD_Mode.index = {"STP/DT",'TP',}--,Hybrid:HasteII only
	DD_Mode_ind = 1
	
	sets.DD_Mode.TP = {
    ammo="Coiste Bodhar",
    head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
    neck="Mirage Stole +1",
	waist="Sailfi Belt +1",
	left_ear="Eabani Earring",
    right_ear="Suppanomimi",
    -- left_ear="Cessance Earring",
    -- right_ear="Hashishin Earring +1",
    left_ring="Lehko's Ring",
    right_ring="Epona's Ring",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.DD_Mode["STP/DT"] = {
    ammo="Coiste Bodhar",
    head="Malignance Chapeau",
    body="Malignance Tabard",
    hands="Malignance Gloves",
    legs="Malignance Tights",
    feet="Malignance Boots",
	neck="Mirage Stole +1",
	waist="Kentarch Belt +1",
	left_ear="Eabani Earring",
    right_ear="Suppanomimi",
    -- left_ear="Cessance Earring",
    -- right_ear="Hashishin Earring +1",
    left_ring="Lehko's Ring",
	right_ring="Chirich Ring +1",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}

	sets.DD_Mode["Hybrid:HasteII only"] = {
    ammo="Coiste Bodhar",
    head="Malignance Chapeau",
    body="Malignance Tabard",
    hands="Malignance Gloves",
    --legs="Malignance Tights",	
    legs="Carmine Cuisses +1",
    feet="Malignance Boots",
	neck="Mirage Stole +1",
	waist="Kentarch Belt +1",
    left_ear="Cessance Earring",
    right_ear="Hashishin Earring +1",
    left_ring="Lehko's Ring",
	right_ring="Chirich Ring +1",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}	

	sets.Tank_Mode = {}
	sets.Tank_Mode.index = {"Tank/DT","EVA/DT","MEVA/Magic"} --, 
	Tank_Mode_ind = 1	

	sets.Tank_Mode["Tank/DT"] = {
    ammo="Staunch Tathlum +1",
    head="Nyame Helm",
    body="Gleti's Cuirass",
    hands="Gleti's Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck={ name="Unmoving Collar +1", augments={'Path: A',}},
    waist="Plat. Mog. Belt",
    left_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
    right_ear="Tuisto Earring",
    left_ring="Eihwaz Ring",
    right_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.Tank_Mode["MEVA/Magic"] = {
    ammo="Staunch Tathlum +1",
    head="Nyame Helm",
    body="Gleti's Cuirass",
    hands="Gleti's Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Warder's Charm +1",
    waist="Plat. Mog. Belt",
    left_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
    right_ear="Tuisto Earring",
    left_ring="Shadow Ring",
    right_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.Tank_Mode["EVA/DT"] = {
    ammo="Amar Cluster",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Bathy Choker +1",
    waist="Sveltesse Gouriz +1",
    left_ear="Eabani Earring",
    right_ear="Infused Earring",
    left_ring="Ilabrat Ring",
    right_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	
	Refresh_Set_Names = {'Refresh',"Regain/DT","MEVA",}--, "Tank"
	sets.refresh = {}
	sets.refresh.Refresh = {
    ammo="Staunch Tathlum +1",
    head="Gleti's Mask",
    body="Hashishin Mintan +2",
    hands="Gleti's Gauntlets",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Gleti's Boots",
    neck="Sibyl Scarf",
    waist="Flume Belt",
    left_ear="Eabani Earring",
    right_ear="Regal Earring",
    left_ring={name = "Stikini Ring +1", bag = "Wardrobe 4"},
	right_ring={name = "Stikini Ring +1", bag = "Wardrobe 7"},
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.refresh["Regain/DT"] = {
    ammo="Staunch Tathlum +1",
    head="Gleti's Mask",
    body="Gleti's Cuirass",
    hands="Gleti's Gauntlets",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Gleti's Boots",
    neck="Sibyl Scarf",
    waist="Flume Belt",
    left_ear="Eabani Earring",
    right_ear="Regal Earring",
    left_ring="Defending Ring",
	right_ring={name = "Stikini Ring +1", bag = "Wardrobe 7"},
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.refresh.MEVA = {
    ammo="Staunch Tathlum +1",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Nyame Sollerets",
    neck="Warder's Charm +1",
    waist="Carrier's Sash",
    left_ear="Eabani Earring",
    right_ear="Regal Earring",
    left_ring="Purity Ring",
	right_ring={name = "Stikini Ring +1", bag = "Wardrobe 7"},
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}	
	sets.refresh.Tank = {
    ammo="Staunch Tathlum +1",
    head="Nyame Helm",
    body="Hashishin Mintan +2",
    hands="Nyame Gauntlets",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Nyame Sollerets",
    neck={ name="Unmoving Collar +1", augments={'Path: A',}},
    waist="Plat. Mog. Belt",
    left_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
    right_ear="Tuisto Earring",
    left_ring={name = "Stikini Ring +1", bag = "Wardrobe 4"},
    right_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}	
	TH_Set_Names = {'TH3'}
	sets.TH = {}
	sets.TH.TH3 = {
	ammo="Perfect Lucky Egg",
    head="White Rarab Cap +1",
    body="Hashishin Mintan +2",
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},	
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet={ name="Herculean Boots", augments={'"Dual Wield"+1','Attack+5','"Treasure Hunter"+1',}},
    neck="Mirage Stole +1",
    waist="Chaac Belt",
    left_ear="Eabani Earring",
    right_ear="Suppanomimi",
    left_ring="Ilabrat Ring",
    right_ring="Epona's Ring",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	
	Sub_Set_Names = {'TP_Bonus', 'Sakpata','Zantetsuken',"Bunzi"}
	sets.Sub = {}
	sets.Sub.Sakpata = {
	sub="Sakpata's Sword",
	}
	sets.Sub.TP_Bonus = {
	sub="Machaera +2",
	}
	sets.Sub.Zantetsuken = {
	sub="Zantetsuken",
	}
	sets.Sub.Bunzi = {
	sub="Bunzi's Rod",
	}	
	
	Main_Set_Names = {'Maxentius',"Tizona"}--, Naegling
	sets.Main = {}
	sets.Main.Naegling = {
	Main="Naegling",
	}
	sets.Main.Tizona = {
	Main="Tizona",
	}
	sets.Main.Maxentius = {
	Main="Maxentius",
	}
	
	sets.ws = {} 					-- Leave this empty.
	sets.ws['Savage Blade']	= {
    ammo="Oshasha's Treatise",
    head="Hashishin Kavuk +2",
    --body="Gleti's Cuirass",
	body="Assim. Jubbah +3",
    hands="Jhakri Cuffs +2",
    legs="Luhlaza Shalwar +3",
    feet="Gleti's Boots",
    neck={ name="Mirage Stole +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Ishvara Earring",
    left_ring="Sroda Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+1','Weapon skill damage +10%',}},
	}


	sets.ws['Expiacion']	= {
    ammo="Oshasha's Treatise",
    head="Hashishin Kavuk +2",
    --body="Gleti's Cuirass",
	body="Assim. Jubbah +3",
    hands="Jhakri Cuffs +2",
    legs="Luhlaza Shalwar +3",
    feet="Gleti's Boots",
    neck="Mirage Stole +1",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Odr Earring",
    left_ring="Ilabrat Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+1','Weapon skill damage +10%',}},
	}
	sets.ws['Flat Blade']	= {
    ammo="Oshasha's Treatise",
    head="Hashishin Kavuk +2",
    --body="Gleti's Cuirass",
	body="Assim. Jubbah +3",
    hands="Jhakri Cuffs +2",
    legs="Luhlaza Shalwar +3",
    feet="Gleti's Boots",
    neck="Mirage Stole +1",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Odr Earring",
    left_ring="Ilabrat Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+1','Weapon skill damage +10%',}},
	}	
	sets.ws.Tank	= {
    ammo="Oshasha's Treatise",
    head="Hashishin Kavuk +2",
    --body="Gleti's Cuirass",
	body="Assim. Jubbah +3",
    hands="Jhakri Cuffs +2",
    legs="Luhlaza Shalwar +3",
    feet="Gleti's Boots",
    neck="Unmoving Collar +1",
    waist="Platinum Moogle Belt",
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Tuisto Earring",
    left_ring="Ilabrat Ring",
    right_ring="Gelatinous Ring +1",
    back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+1','Weapon skill damage +10%',}},
	}	
	
	sets.ws['Circle Blade']	= {
	ammo="Oshasha's Treatise",
        head="Hashishin Kavuk +2",
	body="Assim. Jubbah +3",
    hands="Jhakri Cuffs +2",
    legs="Luhlaza Shalwar +3",
    feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +5%','Mag. Acc.+13',}},
    neck="Mirage Stole +1",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Ishvara Earring",
    left_ring="Ilabrat Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+1','Weapon skill damage +10%',}},
	}
	
	sets.ws['Chant du Cygne']	= {
    ammo="Coiste Bodhar",
    head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    body="Gleti's Cuirass",
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
    neck={ name="Mirage Stole +1", augments={'Path: A',}},
    waist="Fotia Belt",
    left_ear="Odr Earring",
    right_ear={ name="Hashi. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','"Dbl.Atk."+3',}},
    left_ring="Lehko's Ring",
    right_ring="Epona's Ring",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	
	sets.ws['Requiescat']	= {
    ammo="Coiste Bodhar",
    head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Hashishin Earring +1",
    left_ring="Sroda Ring",
    right_ring="Epona's Ring",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	
	sets.ws['Sanguine Blade']	= {
    ammo="Ghastly Tathlum +1",
    head="Pixie Hairpin +1",
    body="Hashishin Mintan +2",
	hands="Hashishin Bazubands +2",
    legs="Luhlaza Shalwar +3",
    feet="Hashishin Basmak +2",
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
    left_ear="Regal Earring",
    right_ear="Friomisi Earring",
    left_ring="Archon Ring",
    right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    back="Aurist's Cape +1",
	}
	sets.ws['Sanguine Blade Tank']	= {
    ammo={ name="Ghastly Tathlum +1", augments={'Path: A',}},
    head="Pixie Hairpin +1",
    body="Hashishin Mintan +2",
    hands="Hashi. Bazu. +2",
    legs={ name="Luhlaza Shalwar +3", augments={'Enhances "Assimilation" effect',}},
    feet="Hashi. Basmak +2",
    neck={ name="Unmoving Collar +1", augments={'Path: A',}},
    waist="Plat. Mog. Belt",
    left_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
    right_ear="Tuisto Earring",
    left_ring="Archon Ring",
    right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    back={ name="Aurist's Cape +1", augments={'Path: A',}},
	}
	sets.ws['Seraph Blade']	= {
	ammo="Oshasha's Treatise",
    head="Hashishin Kavuk +2",
    body="Hashishin Mintan +2",
    hands={ name="Herculean Gloves", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +4%','Mag. Acc.+5',}},
    legs="Luhlaza Shalwar +3",
    feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +5%','Mag. Acc.+13',}},
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
    left_ear="Regal Earring",
    right_ear="Friomisi Earring",
    left_ring="Weatherspoon Ring +1",
    right_ring="Epaminondas's Ring",
    back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+1','Weapon skill damage +10%',}},
	}
	sets.ws['Red Lotus Blade']	= {
	ammo="Oshasha's Treatise",
    head="Hashishin Kavuk +2",
    body="Hashishin Mintan +2",
    hands={ name="Herculean Gloves", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +4%','Mag. Acc.+5',}},
    legs="Luhlaza Shalwar +3",
    feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +5%','Mag. Acc.+13',}},
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
    left_ear="Regal Earring",
    right_ear="Friomisi Earring",
    left_ring="Sroda Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+1','Weapon skill damage +10%',}},
	}
	sets.ws['Realmrazer']	= {
    ammo="Coiste Bodhar",
    head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
    neck={ name="Mirage Stole +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Hashishin Earring +1",
    left_ring="Sroda Ring",
    right_ring="Epona's Ring",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.ws['Flash Nova']	= {
	ammo="Oshasha's Treatise",
    head="Hashishin Kavuk +2",
    body="Hashishin Mintan +2",
    hands={ name="Herculean Gloves", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +4%','Mag. Acc.+5',}},
    legs="Luhlaza Shalwar +3",
    feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +5%','Mag. Acc.+13',}},
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
    left_ear="Regal Earring",
    right_ear="Friomisi Earring",
    left_ring="Weatherspoon Ring +1",
    right_ring="Epaminondas's Ring",
    back="Seshaw Cape",
	}
	sets.ws['Black Halo']	= {
    ammo="Oshasha's Treatise",
    head="Hashishin Kavuk +2",
	body="Assim. Jubbah +3",
    hands="Jhakri Cuffs +2",
    legs="Luhlaza Shalwar +3",
    feet="Gleti's Boots",
    neck={ name="Mirage Stole +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Ishvara Earring",
    left_ring="Sroda Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+1','Weapon skill damage +10%',}},
	}
	sets.ws['Judgment']	= {
    ammo="Oshasha's Treatise",
    head="Hashishin Kavuk +2",
	body="Assim. Jubbah +3",
    hands="Jhakri Cuffs +2",
    legs="Luhlaza Shalwar +3",
    feet="Gleti's Boots",
    neck={ name="Mirage Stole +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Ishvara Earring",
    left_ring="Sroda Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+1','Weapon skill damage +10%',}},
	}
	
	sets.ja = {} 					-- Leave this empty.
	sets.ja['Diffusion'] = {
	feet="Luhlaza Charuqs +3",
	}
	sets.ja['Efflux'] = {
    legs="Hashishin Tayt +2",
	}	
	sets.ja['Chain Affinity'] = {
    head="Hashishin Kavuk +2",
	feet="Assim. Charuqs +2",
	}
	sets.ja['Burst Affinity'] = {	
	legs="Luhlaza Shalwar +3",
	feet="Hashishin Basmak +2",
	}
	sets.ja['Steal'] = {
    head="White Rarab Cap +1",
	ammo="Perfect Lucky Egg",
    waist="Chaac Belt",
	}
	sets.ja['Mug'] = {
    head="White Rarab Cap +1",
	}
	sets.ja.Enmity = {
    ammo="Sapience Orb",
    head="Nyame Helm",
    body="Emet Harness",
    hands="Nilas Gloves",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck={ name="Unmoving Collar +1", augments={'Path: A',}},
    waist="Plat. Mog. Belt",
    left_ear="Cryptic Earring",
    right_ear="Trux Earring",
    left_ring="Eihwaz Ring",
    right_ring="Supershear Ring",
    back="Moonbeam Cape",	
	}
	sets.ja["Provoke"] = set_combine (sets.ja.Enmity)
	sets.ja["Defender"] = set_combine (sets.ja.Enmity)
	sets.ja["Vallation"] = set_combine (sets.ja.Enmity)
	sets.ja["Valiance"] = set_combine (sets.ja.Enmity)
	sets.ja["Pflug"] = set_combine (sets.ja.Enmity)
	sets.ja["Swordplay"] = set_combine (sets.ja.Enmity)
	
	sets.ja.waltz = {		
    head="Nyame Helm",
    body="Gleti's Cuirass",
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
	Buff_Set_Names = {'Phalanx','Holywater'}	
	sets.Buff = {} 					-- Leave this empty.
	sets.Buff.reive = {
	neck="Ygnas\'s Resolve +1",
	}
	sets.Buff.Phalanx =  set_combine (sets.DD_Mode["DEF/DT"],	{
    head={ name="Taeon Chapeau", augments={'"Fast Cast"+5','Phalanx +3',}},
    body={ name="Taeon Tabard", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    hands={ name="Taeon Gloves", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    legs={ name="Taeon Tights", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    feet={ name="Taeon Boots", augments={'Spell interruption rate down -10%','Phalanx +3',}},
	})
	sets.Buff.Holywater = {
    neck="Nicander's Necklace",
    left_ring="Blenmot's Ring +1",
    right_ring="Purity Ring",
	}
	Idle_Set_Names = {'Normal'}
	sets.idle = {} 					-- Leave this empty.
	
	sets.precast = {}               -- leave this empty
	sets.precast.bluFC = { 	--, +8% QM, +75% FC
	ammo="Impatiens", 		--, +2% QM
    head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}}, --, 14%
    body="Pinga Tunic",		--, 13%
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}}, --8%
    legs="Pinga Pants", 	--, 11%
    feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}}, --, 8%
    waist="Witful Belt", 	--, 3%
    neck="Voltsurge Torque",--, 4%
    right_ear="Loquacious Earring", --, 2%
	left_ear="Enchanter's Earring +1", --, 2%
    left_ring="Kishar Ring",--, 4%
    right_ring="Weatherspoon Ring +1", --, 6%, 4% QM
    back="Ogapepo Cape", 	--, 2% QM
	}
	sets.precast.FastCast = {
	ammo="Impatiens", 
    head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
    body="Pinga Tunic",	
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}}, --8
    legs="Pinga Pants",
    feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}},
    waist="Witful Belt",
    neck="Voltsurge Torque",
    right_ear="Loquacious Earring",
	left_ear="Enchanter's Earring +1",
    left_ring="Kishar Ring",
    right_ring="Weatherspoon Ring +1",
    back="Ogapepo Cape",
	}
	sets.precast.FastCastTank = {
	ammo="Impatiens", 
    head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
    body="Pinga Tunic",	
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}}, --8
    legs="Pinga Pants",
    feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}},
    waist="Platinum Moogle Belt",
    neck="Unmoving Collar +1",
    right_ear="Odnowa Earring +1",
	left_ear="Tuisto Earring",
    left_ring="Kishar Ring",
    right_ring="Weatherspoon Ring +1",
    back="Moonbeam Cape",
	}	
    sets.midcast = {}               -- leave this empty  
	sets.midcast.elemental = {
	-- ammo="Perfect Lucky Egg", --, TH4
	-- head="White Rarab Cap +1",
    -- feet={ name="Herculean Boots", augments={'"Dual Wield"+1','Attack+5','"Treasure Hunter"+1',}},
	-- waist="Chaac Belt",
	

    head="Hashishin Kavuk +2",
    waist="Orpheus's Sash",
    feet="Hashishin Basmak +2",
	
	-- ammo="Staunch Tathlum +1", --, SIRD
    -- left_ear="Magnetic Earring",
    -- left_ring="Evanescence Ring",
	
	ammo="Ghastly Tathlum +1",
    left_ear="Friomisi Earring",
	left_ring="Jhakri Ring",
	
	neck="Sibyl Scarf",
	right_ear="Regal Earring",
	right_ring="Metamor. Ring +1",
    body="Hashishin Mintan +2",
	hands="Hashishin Bazubands +2",
    --legs="Luhlaza Shalwar +3",
	legs="Hashishin Tayt +2",
    back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}},
	}
	sets.midcast.Dark = {
	ammo="Ghastly Tathlum +1",
	head="Pixie Hairpin +1",
    body="Hashishin Mintan +2",
	hands="Hashishin Bazubands +2",
    --legs="Luhlaza Shalwar +3",
	legs="Hashishin Tayt +2",
    feet="Hashishin Basmak +2",
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
    left_ear="Friomisi Earring",
    right_ear="Regal Earring",
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring="Archon Ring",
    back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}},
	}	
	sets.midcast.Light = {
	ammo="Ghastly Tathlum +1",
	head="Hashishin Kavuk +2",
    body="Hashishin Mintan +2",
	hands="Hashishin Bazubands +2",
    --legs="Luhlaza Shalwar +3",
	legs="Hashishin Tayt +2",
    feet="Hashishin Basmak +2",
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
    left_ear="Friomisi Earring",
    right_ear="Regal Earring",
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring="Weatherspoon Ring +1",
    back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}},
	}	
	sets.midcast.Earth = {
    head="Hashishin Kavuk +2",
    waist="Orpheus's Sash",
    feet="Hashishin Basmak +2",
	ammo="Ghastly Tathlum +1",
    left_ear="Friomisi Earring",
	left_ring="Jhakri Ring",
	neck="Quanpur Necklace",
	right_ear="Regal Earring",
	right_ring="Metamor. Ring +1",
    body="Hashishin Mintan +2",
	hands="Hashishin Bazubands +2",
    --legs="Luhlaza Shalwar +3",
	legs="Hashishin Tayt +2",
    back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}},
	}
	sets.midcast.physical = {
    ammo="Aurgelmir Orb",
    head="Hashishin Kavuk +2",
    body="Luhlaza Jubbah +3",
    hands="Gleti's Gauntlets",
    legs="Hashishin Tayt +2",
    feet="Luhlaza Charuqs +3",
    neck={ name="Mirage Stole +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Njordr Earring",
    right_ear="Hashishin Earring +1",
    left_ring="Ilabrat Ring",
    right_ring="Ifrit Ring +1",
    back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+1','Weapon skill damage +10%',}},
	}
	sets.midcast.Occultation = {
    ammo="Mavi Tathlum",
    head={ name="Luh. Keffiyeh +3", augments={'Enhances "Convergence" effect',}},
    body="Assim. Jubbah +3",
    hands="Hashi. Bazu. +2",
    legs="Hashishin Tayt +2",
    feet={ name="Luhlaza Charuqs +3", augments={'Enhances "Diffusion" effect',}},
    neck={ name="Mirage Stole +1", augments={'Path: A',}},
    waist="Flume Belt",
    left_ear="Njordr Earring",
    right_ear={ name="Hashi. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','"Dbl.Atk."+3',}},
    left_ring="Defending Ring",
    right_ring="Stikini Ring +1",
    back={ name="Cornflower Cape", augments={'MP+21','DEX+1','Blue Magic skill +10',}},
	}
	sets.midcast.OccultationTank = {
    ammo="Mavi Tathlum",
    head="Nyame Helm",
    body="Assim. Jubbah +3",
    hands="Hashi. Bazu. +2",
    legs="Hashishin Tayt +2",
    feet="Nyame Sollerets",
    neck={ name="Unmoving Collar +1", augments={'Path: A',}},
    waist="Plat. Mog. Belt",
    left_ear="Njordr Earring",
    right_ear={ name="Hashi. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','"Dbl.Atk."+3',}},
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back="Moonbeam Cape",
	}	
	sets.midcast.Enmity = {	
    ammo="Sapience Orb",
    head="Nyame Helm",
    body="Emet Harness",
    hands="Nilas Gloves",
    legs="Zoar Subligar",
    feet="Nyame Sollerets",
    neck={ name="Unmoving Collar +1", augments={'Path: A',}},
    waist="Plat. Mog. Belt",
    left_ear="Cryptic Earring",
    right_ear="Trux Earring",
    left_ring="Eihwaz Ring",
    right_ring="Supershear Ring",
    back="Moonbeam Cape",	
	}	
	sets.midcast.magicacc = {
    ammo="Mavi Tathlum",
    head="Hashishin Kavuk +2",
    body="Hashishin Mintan +2",
	hands="Hashishin Bazubands +2",
    legs="Hashishin Tayt +2",
    feet="Hashishin Basmak +2",
    neck="Mirage Stole +1",
    waist={ name="Acuity Belt +1", augments={'Path: A',}},
    left_ear="Regal Earring",
    right_ear="Hashishin Earring +1",
    left_ring="Stikini Ring +1",
    right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    back={ name="Aurist's Cape +1", augments={'Path: A',}},
	}
	sets.midcast.MaccDT = {
    ammo="Staunch Tathlum +1",
    head="Nyame Helm",
    body="Hashishin Mintan +2",
	hands="Hashishin Bazubands +2",
    legs="Hashishin Tayt +2",
    feet="Hashishin Basmak +2",
    neck="Mirage Stole +1",
    waist={ name="Acuity Belt +1", augments={'Path: A',}},
    left_ear="Regal Earring",
    right_ear="Hashishin Earring +1",
    left_ring="Stikini Ring +1",
    right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    back={ name="Aurist's Cape +1", augments={'Path: A',}},
	}
	sets.midcast.Recast = {			--, 53% FC + 15% JT = 34% Recast + 16% Recast = 50% Recast
    ammo="Sapience Orb",			--, 2% FC
    head="Carmine Mask +1",			--, 14% FC
    body="Luhlaza Jubbah +3",		--, 9% FC
	hands="Hashishin Bazubands +2",	--, 16% Recast
    --legs="Hashishin Tayt +2",
	legs="Ayanmo Cosciales +2",		--, 6% FC
    feet="Hashishin Basmak +2",
    neck="Mirage Stole +1",
    waist={ name="Acuity Belt +1", augments={'Path: A',}},
    left_ear="Enchntr. Earring +1", --, 2% FC
    right_ear="Hashishin Earring +1",
	left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    --left_ring="Kishar Ring", 		--, 4% FC
    right_ring="Weather. Ring +1", 	--, 6% FC
    back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Spell interruption rate down-10%',}},
	}
	sets.midcast.MaccSIRD = {	--, Merits 10 + 84 = 104%
    ammo="Staunch Tathlum +1", 	--, 11
    head="Hashishin Kavuk +2",
    body="Hashishin Mintan +2",
	hands="Rawhide Gloves", 	--, 15
    legs="Assimilator's Shalwar +2",--,	22
    feet="Amalric Nails +1",	--, 16
    neck="Mirage Stole +1",
    --waist={ name="Acuity Belt +1", augments={'Path: A',}},
	waist="Emphatikos Rope", 	--, 12
    left_ear="Magnetic Earring",--, 8
    right_ear="Hashishin Earring +1",
    left_ring="Stikini Ring +1",
    right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Spell interruption rate down-10%',}},
	}	
	sets.midcast.cure = {
    ammo="Staunch Tathlum +1",
    head={ name="Telchine Cap", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    body="Pinga Tunic",
    hands={ name="Telchine Gloves", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}},
    legs="Pinga Pants",
    feet="Nyame Sollerets",
    neck="Phalaina Locket",
    waist="Gishdubar Sash",
    left_ear="Halasz Earring",
    right_ear="Magnetic Earring",
    left_ring="Kunaji Ring",
    right_ring="Defending Ring",
    back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Spell interruption rate down-10%',}},
	}
	sets.midcast.HP = {
    ammo="Staunch Tathlum +1",
	head={ name="Telchine Cap", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    body="Pinga Tunic",
    hands={ name="Telchine Gloves", augments={'"Cure" potency +7%',}},
    legs="Pinga Pants",
    feet="Nyame Sollerets",
    neck="Unmoving Collar +1",
    waist="Plat. Mog. Belt",
    left_ear="Odnowa Earring +1",
    right_ear="Tuisto Earring",
    left_ring="Eihwaz Ring",
    right_ring="Gelatinous Ring +1",
    back="Moonbeam Cape",
	}
	sets.midcast.WhiteWind = {
	ammo="Staunch Tathlum +1",
	head={ name="Telchine Cap", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    body="Pinga Tunic",
    hands={ name="Telchine Gloves", augments={'"Cure" potency +7%',}},
    legs="Pinga Pants",
    feet="Nyame Sollerets",
	waist="Platinum Moogle Belt",
    neck="Unmoving Collar +1",
    left_ear="Tuisto Earring",
    right_ear="Odnowa Earring +1",
	left_ring="Kunaji Ring",
    right_ring="Gelatinous Ring +1",
    back="Moonbeam Cape",
	}
	sets.midcast.refresh = {
	ammo="Staunch Tathlum +1",
    head="Amalric Coif +1",
    body={ name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},
    hands={ name="Telchine Gloves", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}},
     legs={ name="Telchine Braconi", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +10',}},
	waist="Gishdubar Sash",
    neck="Warder's Charm +1",
    left_ear="Magnetic Earring",
	right_ear="Odnowa Earring +1",
    left_ring="Defending Ring",
    right_ring="Gelatinous Ring +1",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.midcast.Aquaveil = {
	ammo="Staunch Tathlum +1",
    head="Amalric Coif +1",
    body={ name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},
    hands={ name="Telchine Gloves", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}},
     legs={ name="Telchine Braconi", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +10',}},
	waist="Emphatikos Rope",
    neck="Warder's Charm +1",
    left_ear="Magnetic Earring",
	right_ear="Odnowa Earring +1",
    left_ring="Defending Ring",
    right_ring="Gelatinous Ring +1",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.midcast.enhancingduration = {
	ammo="Staunch Tathlum +1", 
	head={ name="Telchine Cap", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    body={ name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},
    hands={ name="Telchine Gloves", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}},
     legs={ name="Telchine Braconi", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +10',}},
	waist="Gishdubar Sash",
    neck="Mirage Stole +1",
    left_ear="Andoaa Earring",
    right_ear="Mimir Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back="Merciful Cape",
	}
	sets.midcast.phalanx = {
	ammo="Staunch Tathlum +1", 
    head={ name="Taeon Chapeau", augments={'Spell interruption rate down -8%','Phalanx +3',}},
    body={ name="Taeon Tabard", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    hands={ name="Taeon Gloves", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    legs={ name="Taeon Tights", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    feet={ name="Taeon Boots", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    neck="Melic Torque",
	waist="Olympus Sash",
    left_ear="Andoaa Earring",
    right_ear="Mimir Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Spell interruption rate down-10%',}},
	}

	sets.midcast.regen = { --72 SIRD, +15 Regen
	ammo="Staunch Tathlum +1", 
    head={ name="Taeon Chapeau", augments={'Mag. Evasion+16','Spell interruption rate down -9%','"Regen" potency+3',}},
    body={ name="Taeon Tabard", augments={'Mag. Evasion+19','Spell interruption rate down -9%','"Regen" potency+3',}},
    hands={ name="Taeon Gloves", augments={'Mag. Evasion+15','Spell interruption rate down -10%','"Regen" potency+3',}},
    legs={ name="Taeon Tights", augments={'Mag. Evasion+17','Spell interruption rate down -9%','"Regen" potency+3',}},
    feet={ name="Taeon Boots", augments={'Mag. Evasion+18','Spell interruption rate down -9%','"Regen" potency+3',}},
    waist="Flume Belt",
    neck="Warder's Charm +1",
    left_ear="Magnetic Earring",
	right_ear="Odnowa Earring +1",
    left_ring="Defending Ring",
    right_ring="Gelatinous Ring +1",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.midcast.regenTank = { --, +15 Regen
	ammo="Staunch Tathlum +1", 
    head={ name="Taeon Chapeau", augments={'Mag. Evasion+16','Spell interruption rate down -9%','"Regen" potency+3',}},
    body={ name="Taeon Tabard", augments={'Mag. Evasion+19','Spell interruption rate down -9%','"Regen" potency+3',}},
    hands={ name="Taeon Gloves", augments={'Mag. Evasion+15','Spell interruption rate down -10%','"Regen" potency+3',}},
    legs={ name="Taeon Tights", augments={'Mag. Evasion+17','Spell interruption rate down -9%','"Regen" potency+3',}},
    feet={ name="Taeon Boots", augments={'Mag. Evasion+18','Spell interruption rate down -9%','"Regen" potency+3',}},
	waist="Platinum Moogle Belt",
    neck="Unmoving Collar +1",
    left_ear="Odnowa Earring +1",
    right_ear="Tuisto Earring",
    left_ring="Eihwaz Ring",
    right_ring="Gelatinous Ring +1",
    back="Moonbeam Cape",
	}

	sets.midcast.MidcastDT = {
    ammo="Staunch Tathlum +1",
    head="Carmine Mask +1",			--, 14% FC
    body="Nyame Mail",
	hands="Hashishin Bazubands +2",	--, 16% Recast
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Voltsurge Torque",
    waist="Flume Belt",
    left_ear="Enchanter's Earring +1",
    right_ear="Regal Earring",
    left_ring="Lehko's Ring",
	right_ring="Defending Ring",
    back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Spell interruption rate down-10%',}},
	}
	sets.midcast.MidcastTank = {
    ammo="Staunch Tathlum +1",
    head="Carmine Mask +1",			--, 14% FC
    body="Nyame Mail",
	hands="Hashishin Bazubands +2",	--, 16% Recast
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Unmoving Collar +1",
    waist="Platinum Moogle Belt",
    left_ear="Odnowa Earring +1",
    right_ear="Tuisto Earring",
    left_ring="Lehko's Ring",
	right_ring="Gelatinous Ring +1",
    back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Spell interruption rate down-10%',}},
	}
	
	ElementalGear = {}
	ElementalGear.Obi = "Hachirin-no-Obi"
	ElementalGear.Cape = "Twilight Cape"
	sets.midcast.CureWithLightWeather = {back=ElementalGear.Cape,waist=ElementalGear.Obi}
	sets.midcast.NukeWithMatchingWeather = {back=ElementalGear.Cape,waist=ElementalGear.Obi}	
	
    sets.aftercast = {}             -- leave this empty
	
	Buff_Set_Names = {'Holywater'}
	sets.buff = {} 					-- Leave this empty.
	sets.buff.reive = {
	neck="Ygnas\'s Resolve +1",
	}
	sets.buff.Holywater = {
    neck="Nicander's Necklace",
    left_ring="Blenmot's Ring +1",
    right_ring="Purity Ring",
	waist="Gishdubar Sash",
	}
end

function precast(spell)
	if spell.action_type == 'Magic' then
		if DD_Mode == true then	
			equip(sets.precast.FastCast)else
		if Tank_Mode == true then
			equip(sets.precast.FastCastTank)	
		end
	end
end
    if sets.ja[spell.name] then
	if DD_Mode == true then
        equip(sets.ja[spell.name]) else
	if Tank_Mode == true then		
		equip(sets.ja.Enmity)
		end
	end
end   
	if sets.ws[spell.name] then
	if DD_Mode == true then
        equip(sets.ws[spell.name])  else
	if Tank_Mode == true then
		equip(sets.ws.Tank)
			if spell.name == "Sanguine Blade" then
				equip(sets.ws['Sanguine Blade Tank'])
			end
		end
	end
end

    if spell.name:match('Curing') or spell.name:match('Divine') then
        equip(sets.ja.waltz)
	end   
end

function midcast(spell)
    if  spell.action_type == 'Magic' then
		if DD_Mode == true then	
			equip(sets.midcast.MidcastDT)else
		if Tank_Mode == true then
			equip(sets.midcast.MidcastTank)
	end
end
end
	if T{'Magic Fruit','Cure',"Healing Breeze"}:contains(spell.name) then
		if DD_Mode == true then	
			equip(sets.midcast.cure) --,(sets.midcast.HP)
		elseif Tank_Mode == true then
			equip(sets.midcast.HP)
		end
	end
	if spell.name:match("White Wind") then
		equip(sets.midcast.WhiteWind)
	end
		if T{'Occultation','Magic Barrier'}:contains(spell.name) then
		if DD_Mode == true then
		if player.status == "Engaged" then
			equip(sets.midcast.MaccSIRD) else
		if DD_Mode == true then
		if player.status == "Idle" then
			equip(sets.midcast.Occultation)
		end
	end
	end
end
end
	if T{'Occultation','Magic Barrier'}:contains(spell.name) then		
		if DD_Mode == false then
		if player.status == "Engaged" or player.status == "Idle" then
			equip(sets.midcast.OccultationTank)
		end
	end
end
	if T{'Battery Charge','Refresh'}:contains(spell.name) then
		equip(sets.midcast.refresh)
		elseif spell.name:match('Aquaveil')then
			equip(sets.midcast.Aquaveil)
		end
	if T{'Regeneration','Regen'}:contains(spell.name) then
		if DD_Mode == true then
			equip(sets.midcast.regen) else
		if Tank_Mode == true then
			equip(sets.midcast.regenTank)
		end
	end
end
	if T{'Sinker Drill','Heavy Strike','Thrashing Assault','Empty Thrash'}:contains(spell.name) then
        equip(sets.midcast.physical)
	end
	
	if spell.name:match('storm') or spell.name:match('Ice Spikes') or spell.name:match('En') or spell.name:match('Protect')or spell.name:match('Shell') or spell.name:match('Bar') and spell.name ~= "Barrier Tusk" and spell.name ~= "Magic Barrier" and spell.name ~= "Entomb" then
		equip(sets.midcast.enhancingduration)
			if spell.name:match("Entomb") then
				equip(sets.midcast.Earth)
					if world.weather_element == spell.element or world.day_element == spell.element then
					equip(sets.midcast.NukeWithMatchingWeather)
			end
		end
	end	

	if T{'Jettatura','Absolute Terror','Blank Gaze','Geist Wall','Tourbillion','Sudden Lunge','Cruel Joke','Dispel','Chaotic Eye',"Stun","Sleep"}:contains(spell.name) then
		if DD_Mode == true then
			equip(sets.midcast.MaccDT) else
		if Tank_Mode == true then	
			equip(sets.midcast.Enmity)
		end
	end
end

	if T{'Feather Tickle','Reaving Wind','Osmosis','Flash','Fantod','Saline Coat'}:contains(spell.name) then
		if DD_Mode == true then
			equip(sets.midcast.Recast) else
		if Tank_Mode == true then	
			equip(sets.midcast.Enmity)
		end
	end	
end

	if T{'Dream Flower','Sheep Song','Whirl of Rage'}:contains(spell.name) then
	if DD_Mode == true then
		equip(sets.midcast.MaccSIRD) else
	if Tank_Mode == true then	
		equip(sets.midcast.Enmity)
		end
	end	
end
	if T{'Tenebral Crush','Eyes On Me','Evryone. Grudge','Palling Salvo'}:contains(spell.name) then
		equip(sets.midcast.Dark)
		    if world.weather_element == spell.element or world.day_element == spell.element then
				equip(sets.midcast.NukeWithMatchingWeather)
			end
		end
	if spell.name:match('Phalanx') then
		equip(sets.midcast.phalanx)
	end

    if spell.action_type == 'Magic' then
        if T{'Subduction','Spectral Floe','Molting Plumage','Anvil Lightning','Scouring Spate','Searing Tempest'}:contains(spell.name) then
			equip(sets.midcast.elemental)
            if world.weather_element == spell.element or world.day_element == spell.element then
                equip(sets.midcast.NukeWithMatchingWeather)
				end
					elseif T{'Retinal Glare','Diffusion Ray','Rail Cannon','Blinding Fulgor','Magic Hammer','Uproot'}:contains(spell.name) then
						equip(sets.midcast.Light)
						if world.weather_element == spell.element or world.day_element == spell.element then
						equip(sets.midcast.NukeWithMatchingWeather)
			        elseif spell.skill == 'Healing Magic' and spell.english:startswith('Cur') and spell.english ~= 'Cursna' then
						equip(sets.midcast.cure)
						if world.weather_element == spell.element or world.day_element == spell.element then
						equip(sets.midcast.CureWithLightWeather)

				end
			end
		end
	end
	if spell.skill == 'Elemental Magic' then
        equip(sets.midcast.elemental)
			if world.weather_element == spell.element or world.day_element == spell.element then
				equip(sets.midcast.NukeWithMatchingWeather)
					end
	end
	if spell.name:match('Diaga') then
		equip (sets.TH.TH3)
	end

end


function aftercast(spell)
	idle()
end

function buff_change(buff,gain)
    if buff == 'Reive Mark' then
        if gain then
            equip(sets.Buff.reive)
            disable("neck")
        else
            enable("neck")
        end
    end
    if buff == 'Diffusion' then
        if gain then
            equip(sets.ja['Diffusion'])
            disable("feet")
        else
            enable("feet")
            status_change(player.status)
        end
    end
    if buff == 'Efflux' then
        if gain then
            equip(sets.ja['Efflux'])
            disable("legs")
        else
            enable("legs")
            status_change(player.status)
        end
    end
    if buff == 'Chain Affinity' then
        if gain then
            equip(sets.ja['Chain Affinity'])
            disable("head","feet")	
        else
            enable("head","feet")
            status_change(player.status)
        end
    end
    if buff == 'Burst Affinity' then
        if gain then
            equip(sets.ja['Burst Affinity'])
            disable("legs")
        else
            enable("legs")
            status_change(player.status)
        end
    end
    if buff == "doom" then --, Auto equips doom set, cause I'm lazy from killing Shinryu
        if gain then
            equip(sets.buff.Holywater)
              disable('ring1','ring2','neck')
        else
            enable('ring1','ring2','neck')
            status_change(player.status)
        end
    end
end

function idle()
	if player.status =="Engaged" then --, When drawing weapon
		if DD_Mode == false then
			equip(sets.Tank_Mode[sets.Tank_Mode.index[Tank_Mode_ind]]) --, Equips the last gearset you changed to, is not static
		elseif DD_Mode == true then
			equip(sets.DD_Mode[sets.DD_Mode.index[DD_Mode_ind]])
				if buffactive["Aftermath: Lv.3"] then
					equip(sets.DD_Mode["STP/DT"])
				end
			end
		end
	if player.status =='Idle' then
		if DD_Mode == true then
			equip(sets.refresh[Refresh_Set_Names[Refresh_Index]]) else
		if Tank_Mode == true then
			equip(sets.refresh.Tank)
		end
	end
end
end

function status_change(new,old)
	idle()
end

Tank_Mode = true
DD_Mode = true

function self_command(command)
	if command == 'toggle TP set' then --, When using the command as specified at the top of this lua, then executes these functions
		if DD_Mode == true then --, Checks whether or not the DD_Mode Mode is active,
			DD_Mode_ind = DD_Mode_ind + 1 --, Cycles through the Index, starts at 1 when switching or starting game
			if DD_Mode_ind > #sets.DD_Mode.index then DD_Mode_ind = 1 end 
			windower.add_to_chat('DD mode --> ' .. sets.DD_Mode.index[DD_Mode_ind] ..'') --, Sends a message ingame, not visible to others.
			--if player.status == 'Engaged' then
				equip(sets.DD_Mode[sets.DD_Mode.index[DD_Mode_ind]])
			--end
		elseif DD_Mode == false then
			if Tank_Mode == true then
				Tank_Mode_ind = Tank_Mode_ind + 1
				if Tank_Mode_ind > #sets.Tank_Mode.index then Tank_Mode_ind = 1 end
				windower.add_to_chat('Tank mode --> ' .. sets.Tank_Mode.index[Tank_Mode_ind] ..'')
				--if player.status == 'Engaged' then
					equip(sets.Tank_Mode[sets.Tank_Mode.index[Tank_Mode_ind]])
				end
			end		
		end
	if command == 'toggle Tank_Mode set' then
		DD_Mode_ind = DD_Mode_ind + 1
		if DD_Mode_ind > #sets.DD_Mode.index then DD_Mode_ind = 1 end
		windower.add_to_chat('DD mode --> ' .. sets.DD_Mode.index[DD_Mode_ind] ..'')
		if player.status == 'Engaged' then
			equip(sets.DD_Mode[sets.DD_Mode.index[DD_Mode_ind]])
		end
	elseif command == 'toggle Tank_Mode' then
		if DD_Mode == true then
			DD_Mode = false
			windower.add_to_chat('<----- Tank Mode: [On] ----->')
        else
			DD_Mode = true
			windower.add_to_chat('<----- DD Mode: [On] ----->')
		end
		status_change(player.status)
	end
	if command == 'toggle refresh set' then
        Refresh_Index = Refresh_Index +1
    if Refresh_Index > #Refresh_Set_Names then Refresh_Index = 1 end
        windower.add_to_chat('Idle mode is now: '..Refresh_Set_Names[Refresh_Index])
        equip(sets.refresh[Refresh_Set_Names[Refresh_Index]])
	end
	if command == 'toggle TH set' then
        TH_Index = TH_Index +1
    if TH_Index > #TH_Set_Names then TH_Index = 1 end
        windower.add_to_chat('TH4 equipped')
        equip(sets.TH[TH_Set_Names[TH_Index]])
    end
	if command == 'toggle Main set' then
        Main_Index = Main_Index +1
    if Main_Index > #Main_Set_Names then Main_Index = 1 end
        windower.add_to_chat('Main Weapon is now: '..Main_Set_Names[Main_Index])
        equip(sets.Main[Main_Set_Names[Main_Index]])
    end
	if command == 'toggle Sub set' then
        Sub_Index = Sub_Index +1
    if Sub_Index > #Sub_Set_Names then Sub_Index = 1 end
        windower.add_to_chat('Sub Weapon is now: '..Sub_Set_Names[Sub_Index])
        equip(sets.Sub[Sub_Set_Names[Sub_Index]])
    end
	if command == 'toggle Buff set' then
    windower.add_to_chat('Buff mode is now: '..Buff_Set_Names[Buff_Index])
		equip(sets.buff[Buff_Set_Names[Buff_Index]])
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
send_command('unbind !numpad2')
send_command('unbind !numpad3')
send_command('unbind ^numpad1')
send_command('unbind !numpad0')
send_command('unbind !numpad7')
end
