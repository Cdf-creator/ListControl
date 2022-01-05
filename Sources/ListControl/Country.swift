import ScadeKit

class Country: EObject {
  // please make sure you annotate each variable with the type
  // for SCADE to more identify and leverage the type information
  var countryName: String
  var countryCapital: String

  init(countryName: String, countryCapital: String) {
    self.countryName = countryName
    self.countryCapital = countryCapital
  }
}

class Countries {
  var countries: [Country] = []

  init() {
    self.countries.append(Country(countryName: "Albania", countryCapital: "Tirana"))
    self.countries.append(Country(countryName: "Andorra", countryCapital: "Andorra la Vella"))
    self.countries.append(Country(countryName: "Armenia", countryCapital: "Yerevan"))
    self.countries.append(Country(countryName: "Austria", countryCapital: "Vienna"))
    self.countries.append(Country(countryName: "Azerbaijan", countryCapital: "Baku"))
    self.countries.append(Country(countryName: "Belarus", countryCapital: "Minsk"))
    self.countries.append(Country(countryName: "Belgium", countryCapital: "Brussels"))
    self.countries.append(
      Country(countryName: "Bosnia and Herzegovina", countryCapital: "Sarajevo"))
    self.countries.append(Country(countryName: "Bulgaria", countryCapital: "Sofia"))
    self.countries.append(Country(countryName: "Croatia", countryCapital: "Zagreb"))
    self.countries.append(Country(countryName: "Cyprus", countryCapital: "Nicosia"))
    self.countries.append(Country(countryName: "Czechia", countryCapital: "Prague"))
    self.countries.append(Country(countryName: "Denmark", countryCapital: "Copenhagen"))
    self.countries.append(Country(countryName: "England", countryCapital: "London"))
    self.countries.append(Country(countryName: "Estonia", countryCapital: "Tallinn"))
    self.countries.append(Country(countryName: "Finland", countryCapital: "Helsinki"))
    self.countries.append(Country(countryName: "France", countryCapital: "Paris"))
    self.countries.append(Country(countryName: "Georgia", countryCapital: "Tbilisi"))
    self.countries.append(Country(countryName: "Germany", countryCapital: "Berlin"))
    self.countries.append(Country(countryName: "Greece", countryCapital: "Anthens"))
    self.countries.append(Country(countryName: "Hungary", countryCapital: "Budapest"))
    self.countries.append(Country(countryName: "Iceland", countryCapital: "Reykjavik"))
    self.countries.append(Country(countryName: "Ireland", countryCapital: "Dublin"))
    self.countries.append(Country(countryName: "Italy", countryCapital: "Rome"))
    self.countries.append(Country(countryName: "Kazakhstan", countryCapital: "Nur-Sultan"))
    self.countries.append(Country(countryName: "Kosovo", countryCapital: "Pristina"))
    self.countries.append(Country(countryName: "Latvia", countryCapital: "Riga"))
    self.countries.append(Country(countryName: "Liechtenstein", countryCapital: "Vaduz"))
    self.countries.append(Country(countryName: "Lithuania", countryCapital: "Vilnius"))
    self.countries.append(Country(countryName: "Luxembourg", countryCapital: "Luxembourg(City)"))
    self.countries.append(Country(countryName: "Malta", countryCapital: "Valletta"))
    self.countries.append(Country(countryName: "Moldova", countryCapital: "Chisinau"))
    self.countries.append(Country(countryName: "Montenegro", countryCapital: "Podgorica"))
    self.countries.append(Country(countryName: "Netherlands", countryCapital: "Amsterdam"))
    self.countries.append(Country(countryName: "North Macedonia", countryCapital: "Skopje"))
    self.countries.append(Country(countryName: "Norway", countryCapital: "Oslo"))
    self.countries.append(Country(countryName: "Poland", countryCapital: "Warsaw"))
    self.countries.append(Country(countryName: "Portugal", countryCapital: "Lisbon"))
    self.countries.append(Country(countryName: "Romania", countryCapital: "Bucharest"))
    self.countries.append(Country(countryName: "Russia", countryCapital: "Moscow"))
    self.countries.append(Country(countryName: "San Marino", countryCapital: "San Marino"))
    self.countries.append(Country(countryName: "Scotland", countryCapital: "Edinburgh"))
    self.countries.append(Country(countryName: "Serbia", countryCapital: "Belgrade"))
    self.countries.append(Country(countryName: "Slovakia", countryCapital: "Bratislava"))
    self.countries.append(Country(countryName: "Slovenia", countryCapital: "Ljubljana"))
    self.countries.append(Country(countryName: "Spain", countryCapital: "Madrid"))
    self.countries.append(Country(countryName: "Sweden", countryCapital: "Stockholm"))
    self.countries.append(Country(countryName: "Switzerland", countryCapital: "Bern"))
    self.countries.append(Country(countryName: "Turkey", countryCapital: "Ankara"))
    self.countries.append(Country(countryName: "Ukraine", countryCapital: "Kyiv"))
    self.countries.append(Country(countryName: "Wales", countryCapital: "Cardiff"))

  }
}
