import 'dart:convert';

class GlobalConfig {
  static var homePageConfig = jsonEncode({
    "widgets": [
      {
        "widgetKey": "widget_key1",
        "widgetName": "carousal",
        "widgetProperties": [
          {
            "title": "wow",
            "subtitle": "",
            "imageUrl": "https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80",
            "ctaType": "webview",
            "ctaPath": "https://www.google.com/"
          },
          {
            "title": "wow",
            "subtitle": "",
            "imageUrl": "https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80",
            "ctaType": "webview",
            "ctaPath": "https://www.google.com/"
          },
          {
            "title": "wow",
            "subtitle": "",
            "imageUrl": "https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80",
            "ctaType": "webview",
            "ctaPath": "https://www.google.com/"
          },
          {
            "title": "wow",
            "subtitle": "",
            "imageUrl": "https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80",
            "ctaType": "webview",
            "ctaPath": "https://www.google.com/"
          },
          {
            "title": "wow",
            "subtitle": "",
            "imageUrl": "https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80",
            "ctaType": "webview",
            "ctaPath": "https://www.google.com/"
          }
        ]
      },
      {
        "widgetKey": "widget_key2",
        "widgetName": "grid_1",
        "widgetProperties": [
          {
            "title": "Scan & Pay",
            "subtitle": "",
            "imageUrl": "https://tatadigital-dev.adobecqms.net/content/dam/tcp/app-core/app-content/network-logos/vaultribbons/Scan&Pay.png",
            "ctaType": "deeplink",
            "ctaPath": "neu/scan"
          },
          {
            "title": "Request",
            "subtitle": "",
            "imageUrl": "https://tatadigital-dev.adobecqms.net/content/dam/tcp/app-core/app-content/network-logos/vaultribbons/RequestMoney.png",
            "ctaType": "deeplink",
            "ctaPath": "neu/request"
          },
          {
            "title": "Pay Bills",
            "subtitle": "",
            "imageUrl": "https://tatadigital-dev.adobecqms.net/content/dam/tcp/app-core/app-content/network-logos/vaultribbons/account_transfer.png",
            "ctaType": "deeplink",
            "ctaPath": "neu/request"
          },
          {
            "title": "DTH Services",
            "subtitle": "",
            "imageUrl": "https://tatadigital-dev.adobecqms.net/content/dam/tcp/app-core/app-content/network-logos/vaultribbons/account_transfer.png",
            "ctaType": "deeplink",
            "ctaPath": "neu/request"
          }
        ]
      },
      {
        "widgetKey": "widget_key3",
        "widgetName": "banner_1",
        "widgetProperties": [
          {
            "title": "banner",
            "subtitle": "",
            "imageUrl": "https://i.ibb.co/nCNzndR/Screenshot-2022-08-02-at-7-02-54-PM.png",
            "ctaType": "webview",
            "ctaPath": "https://www.google.com/"
          }
        ]
      },
      {
        "widgetKey": "widget_key4",
        "widgetName": "headline",
        "widgetProperties": [
          {
            "title": "Explore",
            "subtitle": null,
            "imageUrl": null,
            "ctaType": "webview",
            "ctaPath": "https://www.google.com/"
          }
        ]
      },
      {
        "widgetKey": "widget_key5",
        "widgetName": "grid_2",
        "widgetProperties": [
          {
            "title": "Grocery",
            "subtitle": "",
            "imageUrl": "https://tatadigital-dev.adobecqms.net/content/dam/tcp-pwa/starbucks.png",
            "bgUrl": "https://tatadigital-dev.adobecqms.net/content/dam/tcp-pwa/icons/Flight-2.png",
            "ctaType": "webview",
            "ctaPath": "https://www.google.com/"
          },
          {
            "title": "Mobiles",
            "subtitle": "",
            "imageUrl": "https://tatadigital-dev.adobecqms.net/content/dam/tcp-pwa/croma.png",
            "ctaType": "webview",
            "ctaPath": "https://www.google.com/"
          },
          {
            "title": "Electronics",
            "subtitle": "",
            "imageUrl": "https://tatadigital-dev.adobecqms.net/content/dam/tcp-pwa/croma.png",
            "ctaType": "webview",
            "ctaPath": "https://www.google.com/"
          },
          {
            "title": "TV",
            "subtitle": "",
            "imageUrl": "https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80",
            "ctaType": "webview",
            "ctaPath": "https://www.google.com/"
          },
          {
            "title": "Medicine",
            "subtitle": "",
            "imageUrl": "https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80",
            "ctaType": "webview",
            "ctaPath": "https://www.google.com/"
          }
        ]
      },
      {
        "widgetKey": "widget_key6",
        "widgetName": "headline",
        "widgetProperties": [
          {
            "title": "Deal Of the day",
            "subtitle": null,
            "imageUrl": null,
            "ctaType": "webview",
            "ctaPath": "https://www.google.com/"
          }
        ]
      },
      {
        "widgetKey": "widget_key7",
        "widgetName": "banner_1",
        "widgetProperties": [
          {
            "title": "Scan & Pay",
            "subtitle": "",
            "imageUrl": "https://i.ibb.co/QXv58JM/Screenshot-2022-08-02-at-7-58-47-PM.png",
            "ctaType": "webview",
            "ctaPath": "https://www.google.com/"
          }
        ]
      },
      {
        "widgetKey": "widget_key123",
        "widgetName": "headline",
        "widgetProperties": [
          {
            "title": "Explore WestSide",
            "subtitle": "Free Delivery",
            "imageUrl": null,
            "ctaType": "webview",
            "ctaPath": "https://www.google.com/"
          }
        ]
      },
      {
        "widgetKey": "widget_key1",
        "widgetName": "carousal_without_ind",
        "widgetProperties": [
          {
            "title": "wow",
            "subtitle": "",
            "imageUrl": "https://i.ibb.co/pdh56Fm/Screenshot-2022-08-02-at-8-29-10-PM.png",
            "ctaType": "webview",
            "ctaPath": "https://www.google.com/"
          },
          {
            "title": "wow",
            "subtitle": "",
            "imageUrl": "https://i.ibb.co/pdh56Fm/Screenshot-2022-08-02-at-8-29-10-PM.png",
            "ctaType": "webview",
            "ctaPath": "https://www.google.com/"
          },
          {
            "title": "wow",
            "subtitle": "",
            "imageUrl": "https://i.ibb.co/pdh56Fm/Screenshot-2022-08-02-at-8-29-10-PM.png",
            "ctaType": "webview",
            "ctaPath": "https://www.google.com/"
          }
        ]
      },
      {
        "widgetKey": "widget_key10",
        "widgetName": "grid_3",
        "widgetProperties": [
          {
            "title": "Womens Footwear",
            "subtitle": "",
            "imageUrl": "https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80",
            "bgUrl": "https://tatadigital-dev.adobecqms.net/content/dam/tcp-pwa/icons/Flight-2.png",
            "ctaType": "webview",
            "ctaPath": "https://www.google.com/"
          },
          {
            "title": "Grocery",
            "subtitle": "",
            "imageUrl": "https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80",
            "bgUrl": "https://tatadigital-dev.adobecqms.net/content/dam/tcp-pwa/icons/Flight-2.png",
            "ctaType": "webview",
            "ctaPath": "https://www.google.com/"
          },
          {
            "title": "Mobiles",
            "subtitle": "",
            "imageUrl": "https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80",
            "ctaType": "webview",
            "ctaPath": "https://www.google.com/"
          },
          {
            "title": "Electronics",
            "subtitle": "",
            "imageUrl": "https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80",
            "ctaType": "webview",
            "ctaPath": "https://www.google.com/"
          },
          {
            "title": "TV",
            "subtitle": "",
            "imageUrl": "https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80",
            "ctaType": "webview",
            "ctaPath": "https://www.google.com/"
          },
          {
            "title": "Medicine",
            "subtitle": "",
            "imageUrl": "https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80",
            "ctaType": "webview",
            "ctaPath": "https://www.google.com/"
          }
        ]
      },
      {
        "widgetKey": "widget_key676",
        "widgetName": "headline",
        "widgetProperties": [
          {
            "title": "Entertainment Store",
            "subtitle": "+5 % cashback",
            "imageUrl": "https://i.ibb.co/KF1YPpN/Screenshot-2022-08-02-at-8-58-12-PM.png",
            "ctaType": "webview",
            "ctaPath": "https://www.google.com/"
          }
        ]
      },
      {
        "widgetKey": "widget_key1297",
        "widgetName": "grid_4",
        "widgetProperties": [
          {
            "title": "Womens Footwear | Womens Footwear",
            "subtitle": "",
            "imageUrl": "https://i.ibb.co/MgRpBx7/Screenshot-2022-08-03-at-12-45-00-PM.png",
            "bgUrl": "https://tatadigital-dev.adobecqms.net/content/dam/tcp-pwa/icons/Flight-2.png",
            "ctaType": "webview",
            "ctaPath": "https://www.google.com/"
          },
          {
            "title": "Grocery",
            "subtitle": "",
            "imageUrl": "https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80",
            "bgUrl": "https://tatadigital-dev.adobecqms.net/content/dam/tcp-pwa/icons/Flight-2.png",
            "ctaType": "webview",
            "ctaPath": "https://www.google.com/"
          },
          {
            "title": "Mobiles",
            "subtitle": "",
            "imageUrl": "https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80",
            "ctaType": "webview",
            "ctaPath": "https://www.google.com/"
          },
          {
            "title": "Electronics",
            "subtitle": "",
            "imageUrl": "https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80",
            "ctaType": "webview",
            "ctaPath": "https://www.google.com/"
          },
          {
            "title": "TV",
            "subtitle": "",
            "imageUrl": "https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80",
            "ctaType": "webview",
            "ctaPath": "https://www.google.com/"
          },
          {
            "title": "Medicine",
            "subtitle": "",
            "imageUrl": "https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80",
            "ctaType": "webview",
            "ctaPath": "https://www.google.com/"
          }
        ]
      },
      {
        "widgetKey": "widget_key676",
        "widgetName": "headline",
        "widgetProperties": [
          {
            "title": "Top Offers on Groceries",
            "subtitle": "+5 % cashback",
            "imageUrl": "https://i.ibb.co/KF1YPpN/Screenshot-2022-08-02-at-8-58-12-PM.png",
            "ctaType": "webview",
            "ctaPath": "https://www.google.com/"
          }
        ]
      },
      {
        "widgetKey": "widget_key1297",
        "widgetName": "grid_5",
        "widgetProperties": [
          {
            "title": "Min 20 % off",
            "subtitle": "Fruits and vegies",
            "imageUrl": "https://i.ibb.co/zShqCdK/Screenshot-2022-08-03-at-1-12-38-PM.png",
            "bgUrl": "https://tatadigital-dev.adobecqms.net/content/dam/tcp-pwa/icons/Flight-2.png",
            "ctaType": "webview",
            "ctaPath": "https://www.google.com/"
          },
          {
            "title": "Grocery",
            "subtitle": "Foodgrains | oils",
            "imageUrl": "https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80",
            "bgUrl": "https://tatadigital-dev.adobecqms.net/content/dam/tcp-pwa/icons/Flight-2.png",
            "ctaType": "webview",
            "ctaPath": "https://www.google.com/"
          },
          {
            "title": "Mobiles",
            "subtitle": "Foodgrains | oils",
            "imageUrl": "https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80",
            "ctaType": "webview",
            "ctaPath": "https://www.google.com/"
          },
          {
            "title": "Electronics",
            "subtitle": "Foodgrains | oils",
            "imageUrl": "https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80",
            "ctaType": "webview",
            "ctaPath": "https://www.google.com/"
          }
        ]
      },
      {
        "widgetKey": "widget_key676",
        "widgetName": "headline",
        "widgetProperties": [
          {
            "title": "Amazing offers on Hotel",
            "subtitle": "+5 % neu coins",
            "imageUrl": null,
            "ctaType": "webview",
            "ctaPath": "https://www.google.com/"
          }
        ]
      },
      {
        "widgetKey": "widget_key3",
        "widgetName": "banner_1",
        "widgetProperties": [
          {
            "title": "banner",
            "subtitle": "",
            "imageUrl": "https://i.ibb.co/JnVPP5d/IMG-ABFAB27-D740-E-1.jpg",
            "ctaType": "webview",
            "ctaPath": "https://www.google.com/"
          }
        ]
      },
      {
        "widgetKey": "widget_key1297",
        "widgetName": "horizontal_scroll_1",
        "widgetProperties": [
          {
            "title": "Relaxing Stays like Home",
            "subtitle": "Fruits and vegies",
            "imageUrl": "https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80",
            "bgUrl": "https://tatadigital-dev.adobecqms.net/content/dam/tcp-pwa/icons/Flight-2.png",
            "ctaType": "webview",
            "ctaPath": "https://www.google.com/"
          },
          {
            "title": "Grocery",
            "subtitle": "Foodgrains | oils",
            "imageUrl": "https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80",
            "bgUrl": "https://tatadigital-dev.adobecqms.net/content/dam/tcp-pwa/icons/Flight-2.png",
            "ctaType": "webview",
            "ctaPath": "https://www.google.com/"
          },
          {
            "title": "Mobiles",
            "subtitle": "Foodgrains | oils",
            "imageUrl": "https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80",
            "ctaType": "webview",
            "ctaPath": "https://www.google.com/"
          },
          {
            "title": "Electronics",
            "subtitle": "Foodgrains | oils",
            "imageUrl": "https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80",
            "ctaType": "webview",
            "ctaPath": "https://www.google.com/"
          }
        ]
      },
      {
        "widgetKey": "widget_key3237",
        "widgetName": "footer",
        "widgetProperties": [
          {
            "title": "banner",
            "subtitle": "",
            "imageUrl": "https://i.ibb.co/19f6qxx/IMG-7579-D9384-F4-E-1.jpg",
            "ctaType": "webview",
            "ctaPath": "https://www.google.com/"
          }
        ]
      }


    ]
  });
  static var testHomePageConfig = jsonEncode({
    "widgets": [
      {
        "widgetKey": "widget_key1",
        "widgetName": "carousal",
        "widgetProperties": [
          {
            "title": "wow",
            "subtitle": "",
            "imageUrl": "https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80",
            "ctaType": "webview",
            "ctaPath": "https://www.google.com/"
          },
          {
            "title": "wow",
            "subtitle": "",
            "imageUrl": "https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80",
            "ctaType": "webview",
            "ctaPath": "https://www.google.com/"
          },
          {
            "title": "wow",
            "subtitle": "",
            "imageUrl": "https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80",
            "ctaType": "webview",
            "ctaPath": "https://www.google.com/"
          },
          {
            "title": "wow",
            "subtitle": "",
            "imageUrl": "https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80",
            "ctaType": "webview",
            "ctaPath": "https://www.google.com/"
          },
          {
            "title": "wow",
            "subtitle": "",
            "imageUrl": "https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80",
            "ctaType": "webview",
            "ctaPath": "https://www.google.com/"
          }
        ]
      },
      {
        "widgetKey": "widget_key6",
        "widgetName": "headline",
        "widgetProperties": [
          {
            "title": "Deal Of the day",
            "subtitle": null,
            "imageUrl": null,
            "ctaType": "webview",
            "ctaPath": "https://www.google.com/"
          }
        ]
      }
    ]
  });
}
