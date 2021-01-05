//
//  PopupMenu.swift
//  Simple Restaraunt Navigator
//
//  Created by 林亮宇 on 2021/1/5.
//  Copyright © 2021 Bright Lin. All rights reserved.
//

import SwiftUI

struct PopupMenu: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        ZStack{
            
            ZStack{
                 RoundedRectangle(cornerRadius: 9.0).foregroundColor(Color.white).opacity(0.8).frame(width:0.8*UIScreen.screenWidth,height:0.8*UIScreen.screenHeight)
                Text("Some Menu View to be copleted")
            }
            Button(action:{self.presentationMode.wrappedValue.dismiss()}){
                Image("CloseButton").renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original)).resizable().frame(width:25, height:25)
            }.offset(x:0.4*UIScreen.screenWidth,y:-0.4*UIScreen.screenHeight)
        }
        
    }
}

struct PopupMenu_Previews: PreviewProvider {
    static var previews: some View {
        PopupMenu()
    }
}
