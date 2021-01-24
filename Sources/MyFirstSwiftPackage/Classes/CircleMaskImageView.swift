//
//  File.swift
//  
//
//  Created by zrn_ns on 2021/01/23.
//

import UIKit

public class CircleMaskImageView: UIView {

    public func set(image: UIImage) {
        imageView.image = image
    }

    // MARK: - initializer
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }

    public override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    private func commonInit() {
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(imageView)
        addConstraints([
            leadingAnchor.constraint(equalTo: imageView.leadingAnchor),
            trailingAnchor.constraint(equalTo: imageView.trailingAnchor),
            topAnchor.constraint(equalTo: imageView.topAnchor),
            bottomAnchor.constraint(equalTo: imageView.bottomAnchor),
        ])

        maskImageView.contentMode = .scaleAspectFit
        maskImageView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(maskImageView)
        addConstraints([
            centerXAnchor.constraint(equalTo: maskImageView.centerXAnchor),
            centerYAnchor.constraint(equalTo: maskImageView.centerYAnchor),
            maskImageView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5)
        ])

        layer.masksToBounds = true
    }

    public override func draw(_ rect: CGRect) {
        super.draw(rect)

        layer.cornerRadius = Self.calculateCornerRadius(indicatedArea: bounds)
    }

    // MARK: - private
    private let imageView: UIImageView = .init()
    private let maskImageView: UIImageView = .init(image: UIImage(named: "mask", in: Bundle.module, compatibleWith: nil)!)
}

internal extension CircleMaskImageView {
    static func calculateCornerRadius(indicatedArea: CGRect) -> CGFloat {
        min(indicatedArea.width, indicatedArea.height) / 2
    }
}
