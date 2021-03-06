@Kodi.module "ChannelApp.List", (List, App, Backbone, Marionette, $, _) ->

  class List.Layout extends App.Views.LayoutWithSidebarFirstView
    className: "pvr-page"

  class List.ChannelTeaser extends App.Views.CardView
    tagName: "li"
    triggers:
      "click .play"       : "channel:play"

  class List.ChannelList extends App.Views.CollectionView
    childView: List.ChannelTeaser
    tagName: "ul"
    className: "card-grid--square"