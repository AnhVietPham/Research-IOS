//
//  ForEach.swift
//  TaskList
//
//  Created by PHAM ANH VIET on 3/31/20.
//  Copyright © 2020 PHAM ANH VIET. All rights reserved.
//
import SwiftUI

public extension ForEach where Content: View {
  init<Base: RandomAccessCollection>(
    _ base: Base,
    @ViewBuilder content: @escaping (Base.Index) -> Content
  )
  where
    Data == IndexedCollection<Base>,
    Base.Element: Identifiable,
    ID == Base.Element.ID
  {
    self.init(IndexedCollection(base), id: \.element.id) {
      index, _ in content(index)
    }
  }
}
