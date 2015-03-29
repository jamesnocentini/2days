title: Android
---
### Getting Started

The framework provides the interfaces for writing apps with Couchbase Lite.  Starting from an empty Android project, set up Couchbase Lite environment within Android Studio.

### Setup Environment 

1. Before adding Couchbase Lite to your Android project, select **Tools>Android>SDK Manager** from the Android Studio menu bar to install packages.  Install the necessary packages by selecting the following and then click **Install packages**: 

	*Tools/Android SDK Tools

  	*Tools/Android SDK Platform-tools
    
    *Tools/Android SDK Build-tools
    
    *Android API (currently recommended: API 19)
    
    *Extras/Google Repository
     
    *Extras/Android Support Repository

### Add Couchbase Lite Maven Repository

1. Open the project level **build.gradle** file and add the following lines to the top-level **allprojects/repositories** section to resolve dependencies through Couchbase Maven repository: 

    <pre><code>maven {
    url "http://files.couchbase.com/maven2/"
}</code></pre>

	After adding the extra lines, the repositories section should look similar to this:
	<pre><code>repositories {
    mavenCentral()
    maven {
        url "http://files.couchbase.com/maven2/"
    }
}</code></pre>

### Add Couchbase Lite Dependencies 

1.  Open the app level **build.gradle** file and add the following lines to the **android** section:
    <pre><code>// workaround for "duplicate files during packaging of APK" issue
// see https://groups.google.com/d/msg/adt-dev/bl5Rc4Szpzg/wC8cylTWuIEJ
packagingOptions {
		exclude 'META-INF/ASL2.0'
		exclude 'META-INF/LICENSE'
		exclude 'META-INF/NOTICE'
}</code></pre>  

2.  After you add the extra line, the dependencies section should look similar to this:
    <pre><code>maven {
    dependencies {
    	compile fileTree(dir: 'libs', include: ['*.jar'])
    	compile 'com.android.support:appcompat-v7:19.+'
    	compile 'com.couchbase.lite:couchbase-lite-android:{latest-version}'
}</code></pre>

3.  In the Android Studio tool bar, click **Sync Project with Gradle Files.**

### Verify Couchbase Lite Setup 
Run the empty project to verify whether the dependencies are set up correctly.

1.  In the Android Studio tool bar, click Run

2.  When prompted, start the emulator.

	You should see the app start in the emulator and the text “Hello World” in the app window, similar to the following figure.  You now have Couchbase Lite within your Android project.
