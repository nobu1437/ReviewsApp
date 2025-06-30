import UIKit

struct ReviewsCountCellConfig: TableCellConfig {
    static let reuseId = String(describing: ReviewsCountCellConfig.self)
    let countText: NSAttributedString

    func update(cell: UITableViewCell) {
        guard let cell = cell as? ReviewsCountCell else { return }
        cell.countLabel.attributedText = countText
    }

    func height(with size: CGSize) -> CGFloat {
        return 44
    }
}

final class ReviewsCountCell: UITableViewCell {
    let countLabel = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(countLabel)
        countLabel.textAlignment = .center
        countLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            countLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            countLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            countLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
            countLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
