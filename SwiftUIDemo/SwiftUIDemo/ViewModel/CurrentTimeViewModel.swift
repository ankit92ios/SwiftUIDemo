//
//  File.swift
//  SwiftUIDemo
//
//  Created by ankit ios on 22/08/21.
//

import Foundation
final class CurrentTimeViewModel : ObservableObject{
    @Published var now : String = ""
    private var timer : Timer? = nil
    func start(){
        guard timer == nil else { return }
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss"
        now = formatter.string(from: Date())
        
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true){
            [weak self] _ in
            self?.now = formatter.string(from: Date())
        }
    }
    func stop(){
        timer?.invalidate()
        timer = nil
    }
}
