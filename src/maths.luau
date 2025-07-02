--!strict

local maths = {}

-- Apply rotation to a point in 2d-space in anti-clockwise direction.
function maths:RotateAntiClockwise(Offset: Vector3, Point: Vector3, Degrees: number): Vector3
	return Vector3.new(
		Offset.X+(Point.X-Offset.X)*math.cos(Degrees)-(Point.Y-Offset.Y)*math.sin(Degrees),
		Offset.Y+(Point.X-Offset.X)*math.sin(Degrees)+(Point.Y-Offset.Y)*math.cos(Degrees),
		Point.Z
	)
end

-- Apply rotation to a point in 2d-space in clockwise direction.
function maths:RotateClockwise(Offset: Vector3, Point: Vector3, Degrees: number): Vector3
	return self:RotateAntiClockwise(Offset, Point, -Degrees)
end

return maths
