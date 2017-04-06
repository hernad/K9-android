# K9 email za bring.out korisnike


## build:


       git clone https://github.com/hernad/k-9.git

       export ANDROID_HOME=~/Library/Android/sdk


      ./gradlew clean build




## Push na google playstore


build bosanska verziju:

        tools/build_only_bosanski.sh [DEBUG]

        tools/run_apk.sh [DEBUG]


potpisivanje .apk:

        tools/bringout_sign_apk.sh




## init keystore

<pre>
hernads-MacBook-Air:k-9 hernad$ tools/bringout_sign_apk.sh 
generating keystore
Enter keystore password:  
Re-enter new password: 
What is your first and last name?
  [Unknown]:  Ernad Husremovic
What is the name of your organizational unit?
  [Unknown]:  dev
What is the name of your organization?
  [Unknown]:  bring.out         
What is the name of your City or Locality?
  [Unknown]:  Sarajevo
What is the name of your State or Province?
  [Unknown]:  Bosna i Hercegovina
What is the two-letter country code for this unit?
  [Unknown]:  BA
Is CN=Ernad Husremovic, OU=dev, O=bring.out, L=Sarajevo, ST=Bosna i Hercegovina, C=BA correct?
  [no]:  yes

Generating 2,048 bit RSA key pair and self-signed certificate (SHA256withRSA) with a validity of 20,000 days
	for: CN=Ernad Husremovic, OU=dev, O=bring.out, L=Sarajevo, ST=Bosna i Hercegovina, C=BA
Enter key password for <bring.out doo Sarajevo>
	(RETURN if same as keystore password): 

[Storing bringout-android.keystore]
Enter Passphrase for keystore:
 updating: META-INF/MANIFEST.MF
   adding: META-INF/BRING_OU.SF
   adding: META-INF/BRING_OU.RSA
  signing: AndroidManifest.xml
  signing: assets/downloading.html
  signing: assets/emoticons/24hours.gif
  signing: assets/emoticons/airplane.gif
  signing: assets/emoticons/angry.gif
  signing: assets/emoticons/annoy.gif
  signing: assets/emoticons/apple.gif
  signing: assets/emoticons/appli01.gif
  ...
  signing: res/xml/font_preferences.xml
  signing: res/xml/global_preferences.xml
  signing: res/xml/message_list_widget_info.xml
  signing: res/xml/providers.xml
  signing: res/xml/searchable.xml
  signing: res/xml/temp_file_provider_paths.xml
  signing: res/xml/unread_widget_info.xml
  signing: resources.arsc
jar signed.

Warning:
The signer certificate will expire within six months.
No -tsa or -tsacert is provided and this jar is not timestamped. Without a timestamp, users may not be able to validate this jar after the signer certificate's expiration date (2017-07-02) or after any future revocation date.

</pre>






ls -lh ./k9mail/build/outputs/apk/bringout-android.keystore

