//
//  Created by Andrii Zozulych
//  SwiftUI Masterclass ♥ Better Apps. Less Code.
//  
//

import Foundation

struct Video: Codable, Identifiable {
  let id: String
  let name: String
  let headline: String
  
  // Computed Property
  var thumbnail: String {
    "video-\(id)"
  }
}
