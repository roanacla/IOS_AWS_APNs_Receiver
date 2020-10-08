//
//  ImageLoader.swift
//  IOS_AWS_APNs_Receiver
//
//  Created by Roger Navarro on 10/8/20.
//

import Foundation
import Combine

class ImageLoader: ObservableObject {
    var selectedPhotos: AnyPublisher<Data, Never> {
      return didChange.eraseToAnyPublisher()
    }
    var didChange = PassthroughSubject<Data, Never>()
    var data = Data() {
        didSet {
            didChange.send(data)
        }
    }

    init(urlString:String) {
        guard let url = URL(string: urlString) else { return }
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else { return }
            DispatchQueue.main.async {
                self.data = data
            }
        }
        task.resume()
    }
}
