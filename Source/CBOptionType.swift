/**
 * @file	CBOptionType.swift
 * @brief	Define CBOptionType class
 * @par Copyright
 *   Copyright (C) 2017 Steel Wheels Project
 */

import CoconutData
import Foundation

final public class CBOptionType: Sendable
{
	public let optionId:		Int
	public let shortName: 		Character?
	public let longName:  		String?
	public let parameterType:	CBValueType
	public let parameterNum:	Int
	public let helpInfo:		String

	public init(optionId oid: Int, shortName sname: Character?, longName lname: String?, parameterNum pnum: Int, parameterType ptype: CBValueType, helpInfo help:String){
		optionId	= oid
		shortName	= sname
		longName	= lname
		parameterNum	= pnum
		parameterType	= ptype
		helpInfo	= help
	}

	public var optionDescription: String {
		var result: String
		if let lname = longName {
			result = "--\(lname)"
		} else if let sname = shortName {
			result = "-\(sname)"
		} else {
			fatalError("Can not happen")
		}
		return result
	}
}

