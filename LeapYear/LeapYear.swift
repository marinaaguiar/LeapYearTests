//
//  LeapYear.swift
//  LeapYear
//
//  Created by Marina Aguiar on 4/18/23.
//

struct LeapYear {

    func isLeapYear(year: Int) -> Bool {

        if year.isMultiple(of: 400) {
            return true
        } else if year.isMultiple(of: 100){
            return false
        }

        if year.isMultiple(of: 4), !year.isMultiple(of: 100) {
            return true
        }

        if year.isMultiple(of: 4) {
            return false
        }

        return false 
    }
}
