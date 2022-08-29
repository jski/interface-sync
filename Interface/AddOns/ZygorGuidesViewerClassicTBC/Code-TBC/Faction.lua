local Faction = ZGV.Faction
local reptypes = {
	['faction'] = {
		standings = {
			{ name="Hated", from=0*10000, color="880000" },
			{ name="Hostile", from=1*10000, color="ff0000"},			
			{ name="Unfriendly", from=2*10000, color="ff8800" },
			{ name="Neutral", from=2*10000, color="ffff00" },
			{ name="Friendly", from=2*10000, color="00ff00" },
			{ name="Honored", from=2*10000, color="00ff88" },
			{ name="Revered", from=2*10000, color="00ffff" },
			{ name="Exalted", from=2*10000, color="cc88ff" },
		},
	},
}
Faction.ReputationTypes = reptypes  -- for debugging

function Faction:CacheRepByID(id)
	local name,desc,standing,bmin,bmax,val,_,_,header,_,headerhasrep,_,_, _ , hasBonusRepGain, canBeLFGBonus = GetFactionInfoByID(id)
	
	if not name then return false end
	
	local reptype = "faction"
	for type,data in pairs(reptypes) do if data.check and data.check(id,friendID,friendTexture) then reptype=type break end end
	local repdata = reptypes[reptype]

	-- data gathered, let's put it in

	local oldval,oldmin,oldprog
	local rep = self.reputations[name]
	if rep then
		if rep.val~=val then
			oldval=rep.val
			oldmin=rep.min
			oldprog=rep.progress
		end
	else
		rep = self.RepProto:New(name)
		self.reputations[name]=rep
	end
	if bmax==bmin then bmax=bmin+1 end
	local progress = (val-bmin)/(bmax-bmin)
	
	rep.id = id
	rep.name = name
	rep.reptype = reptype
	rep.reptypemeta = repdata
	rep.standing = standing
	rep.min=bmin
	rep.max=bmax
	rep.val=val
	rep.progress=progress
	rep.hasBonus = hasBonusRepGain
	rep.friendRep = friendRep
	
	if ZGV.db.profile.analyzereps then
		if oldval and oldval~=val then self:ReportChange(rep.name, rep.val-oldval, (oldmin~=rep.min and rep.progress or rep.progress-oldprog), rep:Going(true)) end
	end
	
	return rep
end
