//
//  Binding.swift
//  TaskList
//
//  Created by PHAM ANH VIET on 3/31/20.
//  Copyright © 2020 PHAM ANH VIET. All rights reserved.
//

import SwiftUI

public extension Binding where Value: CaseIterable & Equatable {
  var caseIndex: Binding<Value.AllCases.Index> {
    Binding<Value.AllCases.Index>(
      get: { Value.allCases.firstIndex(of: self.wrappedValue)! },
      set: { self.wrappedValue = Value.allCases[$0] }
    )
  }
}
