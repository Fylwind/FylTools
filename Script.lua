FylMovementSpeedMixin = {}

local function movementSpeed()
    local isGliding, _, forwardSpeed = C_PlayerInfo.GetGlidingInfo()
    return string.format("%d", ((isGliding and forwardSpeed or GetUnitSpeed("Player")) / BASE_MOVEMENT_SPEED) * 100)
end

function FylMovementSpeedMixin:OnUpdate()
    self.Text:SetText(format("mvspd=%d%%", movementSpeed()))
end
