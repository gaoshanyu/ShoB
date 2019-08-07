//
//  EditableForm.swift
//  ShoB
//
//  Created by Dara Beng on 7/19/19.
//  Copyright © 2019 Dara Beng. All rights reserved.
//

import SwiftUI


/// A protocol for form view that allows editing object.
protocol EditableForm {
    
    /// Triggered when the save button is tapped.
    var onSave: () -> Void { set get }
    
    var isSaveEnabled: Bool { get }
}


extension EditableForm {
    
    func saveNavItem(title: String) -> some View {
        Button(title, action: onSave)
            .font(Font.body.bold())
            .disabled(!isSaveEnabled)
    }
}
