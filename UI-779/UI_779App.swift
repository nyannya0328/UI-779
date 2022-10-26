//
//  UI_779App.swift
//  UI-779
//
//  Created by nyannyan0328 on 2022/10/26.
//

import SwiftUI

@main
struct UI_779App: App {
    var body: some Scene {
        MenuBarExtra {
            
            ControleCenterView()
            
        } label: {
            
             Image(systemName: "person.fill")
            
        }
        .menuBarExtraStyle(.window)

    }
    @ViewBuilder
    func ControleCenterView ()->some View{
        
        Grid(horizontalSpacing: 15,verticalSpacing: 15) {
            
            GridRow(alignment: .top) {
                
                VStack(spacing: 13) {
                    
                    controlView(icon: "wifi.circle.fill", title: "Wi-Fi", subTitle: "Home WiFi")
                    controlView(icon: "wave.3.right.circle.fill", title: "Bluetooth", subTitle: "Magic keyboad")
                    controlView(icon: "airplayvideo.circle", title: "Air Drop", subTitle: "Contacs Only")
                }
                .padding(12)
                .background{
                 
                    RoundedRectangle(cornerRadius: 10,style: .continuous)
                        .fill(.ultraThinMaterial)
                }
                .BorderView()
                
                Grid(verticalSpacing: 15) {
                    
                    GridRow{
                        
                        HStack{
                            
                            Image(systemName: "moon.circle.fill")
                                .font(.largeTitle)
                            
                            Text("Do not Disturb")
                        }
                          .frame(maxWidth: .infinity,alignment: .leading)
                          .padding(12)
                          .background{
                           
                              RoundedRectangle(cornerRadius: 10,style: .continuous)
                                  .fill(.ultraThinMaterial)
                          }
                          .BorderView()
                          .gridCellColumns(2)
                    }
                    
                    GridRow{
                        
                        subControlView(icon: "rectangle.3.group", title: "Stage\nManager")
                        
                        subControlView(icon: "rectangle.fill.on.rectangle.fill", title: "Scrreen\nMiraring")
                    }
                    
                    
                }
                .gridCellUnsizedAxes(.vertical)
                
            }
            
            GridRow{
                
                VStack{
                    
                    disableSpeaker(title: "Dispaly", image: "sun.max")
                    
                    disableSpeaker(title: "Sound", image: "airpods.gen3")
                }
                .gridCellColumns(2)
            }
            
            
            
        }
        .padding(10)
        .frame(width: 400)
        
        
    }
    
    @ViewBuilder
    func disableSpeaker (title : String,image : String)->some View{
        
        
        VStack{
            
            Text(title)
                .font(.caption)
                .foregroundColor(.white)
            
            
            ZStack(alignment: .leading) {
                
                Capsule()
                    .fill(.white.opacity(0.25))
                
                
                Image(systemName: image)
                
                    .foregroundStyle(.thinMaterial)
                    .padding(.leading,10)
            }
            .frame(height: 25)
        }
        .padding(12)
        .background{
         
            RoundedRectangle(cornerRadius: 10, style: .continuous)
                .fill(.ultraThinMaterial)
        }
        .BorderView()
        
    }
    
    @ViewBuilder
    func subControlView (icon : String,title : String)->some View{
     
        VStack(spacing: 5) {
            
            Image(systemName: icon)
                .font(.title2)
            
            
            Text(title)
                .font(.caption)
                .multilineTextAlignment(.center)
        
            
        }
        .padding(12)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background{
         
            RoundedRectangle(cornerRadius: 10, style: .continuous)
                .fill(.ultraThinMaterial)
        }
        
        
    }
    @ViewBuilder
    func controlView(icon : String,title : String,subTitle : String)->some View{
        
        HStack{
            
             Image(systemName: icon)
                .font(.title)
                .symbolRenderingMode(.multicolor)
                .foregroundStyle(.blue, .white)
            
            VStack(alignment:.leading,spacing: 10){
                
             
                Text(title)
                    .font(.callout)
                
                Text(subTitle)
                    .font(.caption)
                
            }
            .foregroundStyle(.white)
            
        }
          .frame(maxWidth: .infinity,alignment: .leading)
         
        
    }
}

extension View{
    
    @ViewBuilder
    func BorderView ()->some View{
        
     
        self
            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
              .shadow(color: .black.opacity(0.07), radius: 5,x:5,y:5)
              .shadow(color: .black.opacity(0.07), radius: 5,x:-5,y:-5)
    }
}
