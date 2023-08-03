//
//  UltraTrash.swift
//  Target2
//
//  Created by Egor Butyrin on 03.07.2023.
//

import Foundation
import SwiftUI

public struct TrashView: View {
    public var body: some View {
        HStack {
            Text("Nothing")
            Image(systemName: "square.and.arrow.up")
        }
    }

    public static func uikitView() -> UIViewController {
        let host = UIHostingController(rootView: TrashView())
        return host
    }
}
