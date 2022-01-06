import ScadeKit
import ScadeUI
import ScadeGraphics

class MainPageAdapter: SCDLatticePageAdapter {

  // page adapter initialization
  override func load(_ path: String) {
    super.load(path)

    self.list1.elementProvider = SCDWidgetsElementProvider { (country: Country, template) in
      (template.getWidgetByName("countryName") as! SCDWidgetsLabel).text = country.countryName
      (template.getWidgetByName("countryCapital") as! SCDWidgetsLabel).text = country.countryCapital

    }
    self.list1.items = Array(Countries().countries.prefix(51))

    // listen to itemSelected events
    list1.onItemSelected.append(
      SCDWidgetsItemSelectedEventHandler { event in
        if let country = event?.item as? Country {
          print("Hello \(country.countryName)")
        }
      }
    )

    list1.onItemSelected { event in
      guard let element = event.element as? SCDWidgetsListElement,
        let backgroundColor = element.backgroundColor
      else { return }

      // we want to animate the background color from gold to the original color
      let fromColor = SCDSvgRGBColor.gold
      let toColor = SCDSvgRGBColor(widgetRGB: backgroundColor)

      // let us animate fill property
      let anim = SCDSvgPropertyAnimation("fill", from: fromColor, to: toColor)
      anim.duration = 0.4
      anim.repeatCount = 1
      anim.delay = 0.2
      anim.deleteOnComplete = true

      element.backgroundRect?.animations.append(anim) 
    }

  }
}
