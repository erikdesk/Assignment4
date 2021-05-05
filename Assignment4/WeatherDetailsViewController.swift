import UIKit

class WeatherDetailsViewController: UIViewController {
    
    var city: City!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        if let city = city {
            
            let flagTitleLabel = UILabel()
            flagTitleLabel.text = "Country:"
            flagTitleLabel.textAlignment = .center
            flagTitleLabel.font = UIFont(name: "Menlo Bold", size: 10)
            flagTitleLabel.textColor = .systemBlue
            
            let nameTitleLabel = UILabel()
            nameTitleLabel.text = "City:"
            nameTitleLabel.textAlignment = .center
            nameTitleLabel.font = UIFont(name: "Menlo Bold", size: 10)
            nameTitleLabel.textColor = .systemBlue
            
            let summaryTitleLabel = UILabel()
            summaryTitleLabel.text = "Weather:"
            summaryTitleLabel.textAlignment = .center
            summaryTitleLabel.font = UIFont(name: "Menlo Bold", size: 10)
            summaryTitleLabel.textColor = .systemBlue
            
            let tempTitleLabel = UILabel()
            tempTitleLabel.text = "Temperature:"
            tempTitleLabel.textAlignment = .center
            tempTitleLabel.font = UIFont(name: "Menlo Bold", size: 10)
            tempTitleLabel.textColor = .systemBlue
            
            let precipitationTitleLabel = UILabel()
            precipitationTitleLabel.text = "Precipitation:"
            precipitationTitleLabel.textAlignment = .center
            precipitationTitleLabel.font = UIFont(name: "Menlo Bold", size: 10)
            precipitationTitleLabel.textColor = .systemBlue
            
            let flagDetailLabel = UILabel()
            flagDetailLabel.text = city.flag
            flagDetailLabel.textAlignment = .center
            flagDetailLabel.font = UIFont(name: "Monaco", size: 25)
            flagDetailLabel.textColor = .black
            
            let nameDetailLabel = UILabel()
            nameDetailLabel.text = city.name
            nameDetailLabel.textAlignment = .center
            nameDetailLabel.font = UIFont(name: "Monaco", size: 25)
            nameDetailLabel.textColor = .black
            
            let summaryDetailLabel = UILabel()
            summaryDetailLabel.text = city.summary
            summaryDetailLabel.textAlignment = .center
            summaryDetailLabel.font = UIFont(name: "Monaco", size: 25)
            summaryDetailLabel.textColor = .black
            
            let tempDetailLabel = UILabel()
            tempDetailLabel.text = String(city.temp)
            tempDetailLabel.textAlignment = .center
            tempDetailLabel.font = UIFont(name: "Monaco", size: 25)
            tempDetailLabel.textColor = .black
            
            let precipitationDetailLabel = UILabel()
            precipitationDetailLabel.text = String(city.precipitation)
            precipitationDetailLabel.textAlignment = .center
            precipitationDetailLabel.font = UIFont(name: "Monaco", size: 25)
            precipitationDetailLabel.textColor = .black
            
            let stackView = UIStackView(arrangedSubviews: [flagTitleLabel, flagDetailLabel, nameTitleLabel,nameDetailLabel, summaryTitleLabel,summaryDetailLabel, tempTitleLabel,tempDetailLabel, precipitationTitleLabel, precipitationDetailLabel])
            stackView.translatesAutoresizingMaskIntoConstraints = false
            stackView.axis = .vertical
            stackView.alignment = .center
            stackView.distribution = .fillEqually
            view.addSubview(stackView)
            NSLayoutConstraint.activate([
                stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                stackView.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor),
                stackView.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor)
            ])
            
        }
    }
    
}
