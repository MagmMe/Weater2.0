### Aplikacja Pogoda przy uzyciu API 

Api pobrane z serwisu OpeanWeatherMap

Example:
`http://api.openweathermap.org/data/2.5/weather?q=Bieruń&appid=127bd3c7027c52a48bb18c318d0e89c3`


1. Dodaje do pliku `info.plist` -> Source Code -> Uprawnienia do odczytwania API z WeatherMap

```
<key>NSAppTransportSecurity</key>
    <dict>
        <key>NSExceptionDomains</key>
        <dict>
            <key>openweathermap.org</key>
            <dict>
                <key>NSIncludesSubdomains</key>
                <true/>
                <key>NSTemporaryExceptionAllowsInsecureHTTPLoads</key>
                <true/>
            </dict>
        </dict>
    </dict>
```