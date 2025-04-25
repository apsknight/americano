import SwiftUI

@available(macOS 13.0, *)
@main
struct AmericanoApp: App {
    @StateObject private var caffeinateManager = CaffeinateManager()
    
    var body: some Scene {
        MenuBarExtra("Americano", systemImage: caffeinateManager.isActive ? "cup.and.saucer.fill" : "cup.and.saucer") {
            Button(action: {
                caffeinateManager.toggleCaffeinate()
            }) {
                Text(caffeinateManager.isActive ? "Melatonin" : "Ammericano")
            }
            
            Divider()
            
            Button("Quit") {
                NSApplication.shared.terminate(nil)
            }
        }
    }
}

class CaffeinateManager: ObservableObject {
    @Published var isActive = false
    private var process: Process?
    
    func toggleCaffeinate() {
        if isActive {
            stopCaffeinate()
        } else {
            startCaffeinate()
        }
    }
    
    private func startCaffeinate() {
        let process = Process()
        process.launchPath = "/usr/bin/caffeinate"
        process.arguments = ["-d"]
        
        do {
            try process.run()
            self.process = process
            isActive = true
        } catch {
            print("Failed to start caffeinate: \(error)")
        }
    }
    
    private func stopCaffeinate() {
        process?.terminate()
        process = nil
        isActive = false
    }
} 