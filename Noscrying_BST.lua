function get_sets()
	send_command('bind f9 gs c toggle melee set') -- F9 = Cycle through
	send_command('bind f10 gs c toggle beast set') -- F10 = Cycle through
	Melee_Index = 1
	Beast_Index = 1

	Melee_Set_Names = {'normal','beastdt', 'DT'}
	sets.melee = {} 					-- Leave this empty.
	sets.melee.normal = {
    head="Tali\'ah Turban +2",
    body="Tali\'ah Manteel +2",
    hands="Tali\'ah Gages +1",
	legs="Meghanada Chausses +2",
    feet="Tali'ah Crackows +2",
    neck="Lissome Necklace",
    waist="Klouskap Sash",
    left_ear="Sroda Earring",
    right_ear="Sherida Earring",
    left_ring="Epona\'s Ring",
    right_ring="Gere Ring",
    back="Letalis Mantle",
	}
	
	sets.melee.DT = {
    head="Malignance Chapeau",
    body="Malignance Tabard",
	hands="Malignance Gloves",
    legs="Meghanada Chausses +2",
    feet="Malignance Boots",
    neck="Elite Royal Collar",
	waist="Flume Belt",
    left_ear="Sroda Earring",
    right_ear="Sherida Earring",
	left_ring={ name="Dark Ring", augments={'Phys. dmg. taken -6%','Magic dmg. taken -3%',}},
	right_ring="Defending Ring",
	back="Letalis Mantle",
	}
	
	sets.melee.beastdt = {
    head={ name="Taeon Chapeau", augments={'Pet: Accuracy+19 Pet: Rng. Acc.+19','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
    body={ name="Taeon Tabard", augments={'Pet: Accuracy+19 Pet: Rng. Acc.+19','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
    hands={ name="Taeon Gloves", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
    legs={ name="Taeon Tights", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
    feet={ name="Taeon Boots", augments={'Pet: Accuracy+18 Pet: Rng. Acc.+18','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
    neck="Shulmana Necklace",
    waist="Klouskap Sash",
    left_ear="Sroda Earring",
    right_ear="Rimeice Earring",
    left_ring="Epona\'s Ring",
    right_ring="Thurandaut Ring",
    back="Letalis Mantle",
	}
	
	Beast_Set_Names = {'tank'}
	sets.beast = {}
	sets.beast.tank = {
    head={ name="Anwig Salade", augments={'Attack+3','Pet: Damage taken -10%','Accuracy+3','Pet: Haste+5',}},
    body={ name="Taeon Tabard", augments={'Pet: Accuracy+19 Pet: Rng. Acc.+19','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
    hands={ name="Taeon Gloves", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
    legs={ name="Taeon Tights", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
    feet={ name="Taeon Boots", augments={'Pet: Accuracy+18 Pet: Rng. Acc.+18','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
    neck="Shepherd's Chain",
    waist="Klouskap Sash",
    left_ear="Sroda Earring",
    right_ear="Rimeice Earring",
    left_ring="Varar Ring",
	right_ring="Thurandaut Ring",
    back="Letalis Mantle",
}


	sets.buff = {}
	sets.buff.reive = {
	neck="Ygnas\'s Resolve +1"
	}
	sets.buff.adoulin = {
	body="Councilor\'s Garb"
	}
	sets.buff.domain = {
	head="Heidrek Mask",
	body="Heidrek Harness",
	}
	
	sets.ws = {} -- Leave this empty.
	
	sets.ja = {} 					-- Leave this empty.
	sets.ja['Steal'] = {
    head="White Rarab Cap +1",
	}

	sets.idle = {} 					-- Leave this empty.
	
	sets.precast = {}               -- leave this empty
	
    sets.midcast = {}               -- leave this empty  

    sets.aftercast = {}             -- leave this empty
	
	sets.adoulin = {}
	sets.adoulin.movement = {body="Councilor's Garb",}   --auto swaps when in adoulin 
 

end

function precast(spell)
    if  spell.type ~= 'JobAbility' then
        equip(sets.ja.normal)
	end
    if sets.ja[spell.name] then
        equip(sets.ja[spell.name])
	end
    if sets.ws[spell.name] then
        equip(sets.ws[spell.name])        
    end         
end

function midcast(spell)

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
	if buff == 'Elvorseal' then
		if gain then
			equip(sets.buff.domain)
			disable("head", "body")
		else
			enable("head", "body")
			equip(sets.Idle)
		end
	end
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
        send_command('@input /echo ----- Melee Set changed to '..Melee_Set_Names[Melee_Index]..' -----')
        equip(sets.melee[Melee_Set_Names[Melee_Index]])
    end
	if command == 'toggle beast set' then
        Beast_Index = Beast_Index +1
        if Beast_Index > #Beast_Set_Names then Beast_Index = 1 end
        send_command('@input /echo ----- Beast Set changed to '..Beast_Set_Names[Beast_Index]..' -----')
		equip(sets.beast[Beast_Set_Names[Beast_Index]])
	end
end

function customize_idle_set(idleSet)
    if world.area:contains('Adoulin') then
        equip(sets.adoulin.movement)
    end
   return idleSet
end