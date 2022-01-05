import ScadeKit

extension MainPageAdapter {
  var rowView: SCDWidgetsRowView {
    return self.page?.getWidgetByName("rowView") as! SCDWidgetsRowView
  }

  var button1: SCDWidgetsButton {
    return self.page?.getWidgetByName("button1") as! SCDWidgetsButton
  }

  var list1: SCDWidgetsList {
    return self.page?.getWidgetByName("list1") as! SCDWidgetsList
  }
}