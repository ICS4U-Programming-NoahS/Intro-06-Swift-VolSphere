//
// VolSphere.swift
//
// Created by Noah Smith
// Created on 2025-02-11
// Version 1.0
// Copyright (c) 2025 Noah Smith. All rights reserved.
//
// The VolSphere program asks the user to enter a radius,
// then calculates and displays the sphere's volume with the given radius.

// Import foundation library
import Foundation

// Ask the user to enter the radius
print("Enter the radius of a sphere: ")
let radiusString = readLine()

// Typecast the radius from a string into a double
// Exclamation marks are to stop code from crashing over the possibility of a Nil value
let radius = Double(radiusString!)!

// Check user's radius to make sure it is greater than zero
if radius > 0 {
    // Calculate volume
    let volume: Double = 4.0 / 3.0 * pow(radius, 3) * Double.pi

    // Display volume to the user, rounded to 2 decimal places
    print(
        ("The volume of the sphere with a radius of \(radius) is \(String(format: "%.2f", volume)).")
    )
} else {
    // Tell the user to enter a number greater than zero
    print("Invalid input. Radius must be")
    print("greater than zero. Try again.")
}