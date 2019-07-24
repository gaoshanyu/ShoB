//
//  EditableForm.swift
//  ShoB
//
//  Created by Dara Beng on 7/19/19.
//  Copyright © 2019 Dara Beng. All rights reserved.
//

import SwiftUI


protocol EditableForm {
    
    /// Triggered when the save button is tapped.
    var onSave: () -> Void { set get }
}


extension EditableForm {
    
    func saveNavItem(title: String, enable: Bool) -> some View {
        Button(title, action: onSave)
            .font(Font.body.bold())
            .disabled(!enable)
            .accentColor(.accentColor)
        // beta 4: needs to set a color or nil to retain the color after certain view update
    }
}