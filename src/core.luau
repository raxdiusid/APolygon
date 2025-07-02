--!strict

local maths = require("./maths")

local core = {}

function core:CreatePolygon(PolygonRadius: number, PolygonSide: number, PolygonWidth: number, PolygonCenterPosition: Vector3): boolean

	local PolygonModel: Model = Instance.new("Model")
	PolygonModel.Name = "APolygon"

	local InnerAngle: number = 2*math.pi/PolygonSide
	local SideLength: Vector3 = Vector3.new(2*PolygonRadius*math.tan(InnerAngle/2), 0.05, PolygonWidth)
	local AngleProgression: number = 0
	local PreviousSidePosition: Vector3? = nil

	for i: number = 1, PolygonSide do
		local Side: Part = Instance.new("Part")
		Side.Anchored = true
		Side.Size = SideLength
		if PreviousSidePosition then
			Side.Position = maths:RotateAntiClockwise(PolygonCenterPosition, PreviousSidePosition, InnerAngle)
		else
			Side.Position = PolygonCenterPosition + Vector3.new(0, PolygonRadius, 0)
		end
		Side.Parent = PolygonModel
		Side.Orientation = Vector3.new(Side.Orientation.X, Side.Orientation.Y, math.deg(AngleProgression))
		Side.Material = Enum.Material.SmoothPlastic
		
		AngleProgression += InnerAngle
		PreviousSidePosition = Side.Position
	end

	PolygonModel.Parent = workspace

	return true
end

function core:CreateCircle(Radius: number, CenterPosition: Vector3): boolean
	self:CreatePolygon(Radius, 100, 0.25, CenterPosition)
	return true
end

function core:CreateCylinder(CylinderRadius: number, CylinderWidth: number, CylinderEndsPosition: Vector3): boolean
	self:CreatePolygon(CylinderRadius, 100, CylinderWidth, CylinderEndsPosition)
	return true
end

return core