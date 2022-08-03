## About - Neu Clone
[**neu_clone**](https://www.tatadigital.com/) is a 100% free Flutter open-source minimalist tata neu clone built with <a href="https://flutter.dev/" target="_blank">Flutter SDK</a> for educational purposes only.

## Sneak Peak ( Right - clone )

ScreenShot Set 1
<a href="https://drive.google.com/uc?export=view&id=1yIVQ1TrdIkU1qDdu277WgYb3A8bzL77U"><img src="https://drive.google.com/uc?export=view&id=1yIVQ1TrdIkU1qDdu277WgYb3A8bzL77U" style="width: 650px; max-width: 100%; height: 200" title="Click to enlarge picture" />


ScreenShot Set 2
<a href="https://drive.google.com/uc?export=view&id=1kTdySkDH1HrdWbebAYApYNCkxooQen4O"><img src="https://drive.google.com/uc?export=view&id=1kTdySkDH1HrdWbebAYApYNCkxooQen4O" style="width: 650px; max-width: 100%; height: 200" title="Click to enlarge picture" />




---

## Getting started

Clone the repo 

```yaml
https://github.com/Roopeshlr/neu_clone.git
```

Get all the pub packages by running the below command

```dart
flutter pub get
```

Run the project  from main.dart



For help getting started with Flutter, view the online [documentation](https://docs.flutter.dev/get-started/install?gclid=Cj0KCQjwuaiXBhCCARIsAKZLt3mLoRZ_zHF5hXHkwGgFKrFctBNS2HvXrRxbHd3cpC0z1vw8v6FOjAIaAjnmEALw_wcB&gclsrc=aw.dsl).

---


## Idea of impl?

The homepage of Neu clone is a list of widgets and can be changed over the air , it provides the flexibility to add or remove widgets by just updating the json which can be hosted or acquired from server

We will understand the types of widgets in the next block 

---

## Widget Types 

✅ &nbsp; carousal
				Adds a carousal of widgets with indicators based on streambuilder with the list of widgets properties present in widgetProperties 
```json
{  
  "widgetKey": "widget_key1",  
  "widgetName": "carousal",  
  "widgetProperties": [  
    {  
      "title": "",  
  "subtitle": "",  
  "imageUrl": "https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80",  
  "ctaType": "webview",  
  "ctaPath": "https://www.google.com/"  
  },  
  {  
      "title": "",  
  "subtitle": "",  
  "imageUrl": "https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80",  
  "ctaType": "webview",  
  "ctaPath": "https://www.google.com/"  
  },  

  ]  
}
```
				
✅ &nbsp; carousal_without_ind
	Adds a carousal of widgets without indicators based on streambuilder with the list of widgets properties present in widgetProperties 
	
✅ &nbsp; grid_1,grid_2,grid_3,grid_4
Adds a grids of widgets with images / texts / backgrounds based on the design,  with the list of widgets properties present in widgetProperties 
```json
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
  ]  
}

```


✅ &nbsp; horizontal_scroll_1
Adds a horizontal Listview of widgets with images / texts / backgrounds based on the design,  with the list of widgets properties present in widgetProperties 

```json
{  
  "widgetKey": "widget_key5",  
  "widgetName": "horizontal_scroll_1",  
  "widgetProperties": [  
    {  
      "title": "Grocery",  
  "subtitle": "",  
  "imageUrl": "https://tatadigital-dev.adobecqms.net/content/dam/tcp-pwa/starbucks.png",  
  "bgUrl": "https://tatadigital-dev.adobecqms.net/content/dam/tcp-pwa/icons/Flight-2.png",  
  "ctaType": "webview",  
  "ctaPath": "https://www.google.com/"  
  },   
  ]  
}

```

✅ &nbsp; headline
headline widget type  adds the Headline and subHeading as in the design  

```json
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

```

✅ &nbsp; banner
Adds a banner to the homescreen with imageUrl as network image with padding

```json
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

```

✅ &nbsp; footer
Adds a footer to the homescreen with imageUrl as network image 

```json
{  
      "widgetKey": "widget_key3",  
  "widgetName": "footer",  
  "widgetProperties": [  
        {  
          "title": "banner",  
  "subtitle": "",  
  "imageUrl": "https://i.ibb.co/JnVPP5d/IMG-ABFAB27-D740-E-1.jpg",  
  "ctaType": "",  
  "ctaPath": ""  
  } 

```



# Navigation & Deeplink capability

Presently project support navigation to deeplink and webview only , The same can be updated by changing cta type and path in widget properties 

```json
"widgetProperties": [  
        {  
          "title": "Relaxing Stays like Home",  
  "subtitle": "Fruits and vegies",  
  "imageUrl": "https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80",  
  "bgUrl": "https://tatadigital-dev.adobecqms.net/content/dam/tcp-pwa/icons/Flight-2.png",  
  "ctaType": "webview",  //deeplink - to use as deeplink 
  "ctaPath": "https://www.google.com/"  
  }
  ]
```



## Testing Widgets 

Presently there are three  test cases written in widget_test.dart 

1. Test grid_1 type widget text
				This test takes the input from the json and checks if the grid 1 type widget is rendered perfectly with the help of keyID which is assigned dynamically in the json
				
```json
"widgetKey": "widget_key4",
```

2. Test dynamic widget of headline with key id
	This test takes the input from the json and checks if the  widget is rendered perfectly with the help of keyID which is assigned dynamically in the json with ensuring scrolling is done

```dart
await tester.dragUntilVisible(find.byKey(const ValueKey('widget_key6')),  
  find.byKey(const ValueKey('parent_list_view')), Offset(0, -654));
```

2. Test dynamic widget of headline with Text
	This test takes the input from the json and checks if the  headline widget is rendered perfectly with the help of keyID which is assigned dynamically in the json with ensuring scrolling is done

```dart
await tester.dragUntilVisible(find.text(getFirstWidgetString()),  
  find.byKey(const ValueKey('parent_list_view')), Offset(0, -500));
```


Use the below command to run the testcases 

```dart
flutter test test/widget_test.dart
```





## Contributing

Neu Clone is **100% free** and **open source**. We encourage and support an active, healthy community that accepts contributions from the public &ndash; including you.  .

- Fix a bug

- If you are a developer, feel free to check out the source and submit pull requests.

- Please don't forget to **like**, **follow**, and **star our repo**!

Present open tasks ( updated weekly ) 
1. Make enum conversion of all string based switch statement 
2. Change Image.network provider into a cached process / Shimmer ( Your creativity )
3. Add more testcases 
4. Add search functionality 


## Project Created & Maintained By

### Roopesh L R

Senior Flutter Developer , Bounce , Ex - Byjus 

<a href="https://www.linkedin.com/in/roopesh-lr/"><img src="https://github.com/aritraroy/social-icons/blob/master/linkedin-icon.png?raw=true" width="60"></a>


## [Demo App](https://drive.google.com/file/d/18iRMTZcbzwN0edkYDRDXM_AIykdNwxD2/view?usp=sharing)

## [Screen Recording](https://drive.google.com/file/d/1q6_oKN2oYpXoYVkvlqhqhSz4Dslx4f9o/view)



## Copyright-and-license
This clone was not intended for any illegal use of any Tata Group  resources, by any time or  by any mean . This is intended for educational purposes only



