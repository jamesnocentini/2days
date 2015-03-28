title: iOS
---
### Getting Started

The framework provides the interfaces for writing apps with Couchbase Lite.

1. Download the latest release of Couchbase Lite for iOS and move the unzipped Couchbase Lite folder to a permanent location.

2. Open the Couchbase Lite folder and drag the CouchbaseLite.framework folder to the Frameworks group in the Xcode project navigator.

 ![img](http://cl.ly/aQ7D/cbl-framework.png)

3. In the Choose options for adding these files sheet, make sure that your app target is selected.

### Adding dependencies

Couchbase Lite requires additional frameworks and libraries for building an app. These additional dependencies are added via Xcode build settings.

1. In the navigator, click on the HelloCBL project file to open the project editor for your app, and then click the Build Settings tab.

2. Scroll to the Linking section, find the Other Linker Flags row, and then add the flag -ObjC (be sure to use the capitalization shown).

 The Other Linker Flags row should look similar to the following screenshot:

 ![img](http://cl.ly/aQCt/build-settings.png)

3. Click the Build Phases tab.

4. Expand the Link Binary With Libraries section and add the following items:

```
CFNetwork.framework
Security.framework
SystemConfiguration.framework
libsqlite3.dylib
libz.dylib
```

Click the + at the bottom of the section to add each item. When you are done, it should look similar to the following screenshot:

![img](http://cl.ly/aQYn/build-phases.png)