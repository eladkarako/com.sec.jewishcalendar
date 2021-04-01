<h1><code>com.sec.jewishcalendar</code> v3.0.0 (original and modified version)</h1>

a repack of original Samsung's Jewish-calendar (v3.0.0), it is a very simple and effective app, based on SourceForge's-Zmanim Java API. It has capability to set the device to sleep on Sabbath (uses Device Admin), and generic location uses for displaying correct sun-rise/set. It works entirely offline and has no ads. I didn't modify any of the original app, I've just made few small fixes to the content will be displayed better (The source-code isn't available, so this is a reverse-engineered SMALI code). License is Unknown.

<hr/>
the latest known version of the original APK is also provided, 
<details><summary>Based on the signature details of the original APK</summary>
<pre>
Verifies
Verified using v1 scheme (JAR signing): true
Verified using v2 scheme (APK Signature Scheme v2): false
Verified using v3 scheme (APK Signature Scheme v3): false
Verified using v4 scheme (APK Signature Scheme v4): false
Verified for SourceStamp: false
Number of signers: 1
Signer #1 certificate DN: CN=Udi Reshef, OU=Samusng, O=Samsung, L=Yakom, ST=Israel, C=IL
Signer #1 certificate SHA-256 digest: 24c0cc3072f0f92e18b7b2ec0b9d1f5e6c7760238a4efd24db7e7ff8528e024f
Signer #1 certificate SHA-1 digest: fe8ae877317327dd03ce7277a38818a4d3ef4ac3
Signer #1 certificate MD5 digest: 12aa875d281e54ad677912f07e7b97b0
Signer #1 key algorithm: RSA
Signer #1 key size (bits): 2048
Signer #1 public key SHA-256 digest: 3c1d16b61dd2140498b78428d43905a347134eb7f42477cf982e184b1a7af929
Signer #1 public key SHA-1 digest: afdafa91ce21ceeebcc1d811e0f87d46c90bf6d6
Signer #1 public key MD5 digest: e65711bf34e899a4578dfe6e24cfb57f
</pre>
</details>

I can tell that the application packer (and probably the developer) is Udi Reshef, based in Yakom (Yakum?) Israel. 

<hr/>

the releases section include both the modified and original APKs, ready to be installed.
(they have different signatures, so you must uninstall old versions before installing it)

<hr/>

the app does not creates internet connections, 
but it does has <code>RECEIVE_BOOT_COMPLETED</code> and it will add itself to the list of Device-Managers, without activating it. Which can be somewhat annoying, this is due to its built-in feature (which I've decided not to remove since it a lot of digging through SMALI-code which makes the app a bit unstable :| ) of sending the device to sleep on a Sabbath and waking it when the day ends (sunset) automatically. 
If you need this feature, you need enable the app in the device-managers list, 
if you don't need it, don't worry, it is disabled by default. 

<hr/>

the app known to cut the lower part of the screen when the displaying font-size is large, 
the calendar itself is displayed fine though. 
I've tried to apply several fixed to consider the screen density (and overall DPI), which might be help it be shown better (but probably not 100% yet).

<hr/>

this is the lastest known version as far as I can tell, 
you may contact me if you have a newer version.