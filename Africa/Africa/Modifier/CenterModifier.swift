//
//  Created by Andrii Zozulych
//  SwiftUI Masterclass ♥ Better Apps. Less Code.
//  
//

import SwiftUI

struct CenterModifier: ViewModifier {
  func body(content: Content) -> some View {
    HStack {
      Spacer()
      content
      Spacer()
    }
  }
}
