# APolygon
A simple, lightweight Roblox Luau module to generate N-sided polygons.

## Geometry
![RobloxScreenShot20250702_185654812](https://github.com/user-attachments/assets/517e902d-bfb5-472e-8841-f9f73aa7c8d8)

## Overview
```luau
--[[
    This example serves an overview of APolygon's main ability.

    This module is typically placed in holder where the Roblox's server and clients can access
    such as 'ReplicatedStorage'.
]]

local ReplicatedStorage = game:GetService("ReplicatedStorage")

local APolygon = require(ReplicatedStorage.APolygon.src.core)

-- Creates a 100-sided polygon that approximates the geometric shape of a circle.
-- :CreateCircle takes two arguments, mainly
-- 1) Radius, the radius of the approximate circle
-- 2) CenterPosition, the center point of the approximate circle relative to the world
APolygon:CreateCircle(6, Vector3.new(10, 40, 17))

-- Creates a N-sided polygon.
-- :CreatePolygon takes four arguments, mainly
-- 1) PolygonRadius, the distance from the center of the polygon to the center of each sides
-- 2) PolygonSide, the total sides of the polygon
-- 3) PolygonWidth, the width of the polygon's sides
-- 4) PolygonCenterPosition, the center point of the polygon relative to the world
APolygon:CreatePolygon(1, 5, 4, Vector3.new(10, 49, 17))

-- Creates a cylinder, essentially an approximate circle with width.
-- :CreateCylinder takes three arguments, mainly
-- 1) CylinderRadius, the radius of the cylinder
-- 2) CylinderWidth, the width of the cylinder
-- 3) CylinderEndsPosition, the ends position of the cylinder relative to world
APolygon:CreateCylinder(3, 10, Vector3.new(25, 40, 25))
```

## Contribution
Volunteers are welcome to contribute to the development of this module. Any code tweaks, bug fixes, improvements, etc are worth millions!
