# Today We Are Learning Arduino and Sensors! 


## Temperature
```

#include <Adafruit_Sensor.h>

#include <DHT.h>
//Constants
#define DHTPIN 3     // what pin we're connected to
#define DHTTYPE DHT11   // DHT 22  (AM2302)
DHT dht(DHTPIN, DHTTYPE); //// Initialize DHT sensor for normal 16mhz Arduino

//Variables
int chk;
float hum;  //Stores humidity value
float temp; //Stores temperature value

void setup()
{
    Serial.begin(9600);
  dht.begin();

}

void loop()
{
    //Read data and store it to variables hum and temp
    hum = dht.readHumidity();
    temp= dht.readTemperature();
    //Print temp and humidity values to serial monitor
    Serial.print("Humidity: ");
    Serial.print(hum);
    Serial.print(" %, Temp: ");
    Serial.print(temp);
    Serial.println(" Celsius");
    delay(2000); //Delay 2 sec.
}

```

## Display Pin
Okay now we have an LCD display
VSS = Ground Pin
CDD = 5v power supply
v0 = adjust the contrast in the panel, you can use potentiometer
RS = where in the register you're writing data to, and you can select data register (what goes in the screen) or instruction register where the lcd's controller looks fors for the instructions
RW = Rewrite pin, selects reading or writing mode
E = enabling pin, low level energy through ti carries instructions
D0-D7 are data pins
A = anode +
K = cathode - 

```

// include the library code:
#include <LiquidCrystal.h>

// initialize the library with the numbers of the interface pins
LiquidCrystal lcd(7, 8, 9, 10, 11, 12);
int Contrast = 100;
void setup() {
  analogWrite(6, Contrast);
  // set up the LCD's number of columns and rows:
  lcd.begin(16, 2);
  // Print a message to the LCD.
  lcd.print("Hello John :)");
}

void loop() {
  // set the cursor to column 0, line 1
  // (note: line 1 is the second row, since counting begins with 0):
  lcd.setCursor(0, 1);
  // print the number of seconds since reset:
  lcd.print(millis() / 1000);
}

```


```


// include the library code:
#include <Adafruit_Sensor.h>
#include <DHT.h>
#include <LiquidCrystal.h>


#define DHTPIN 5 
#define DHTTYPE DHT11
DHT dht(DHTPIN, DHTTYPE);
// initialize the library with the numbers of the interface pins
LiquidCrystal lcd(7, 8, 9, 10, 11, 12);
int Contrast = 100;
void setup() {
  dht.begin();
  analogWrite(6, Contrast);
  // set up the LCD's number of columns and rows:
  lcd.begin(16, 2);
  // Print a message to the LCD.
  lcd.print("Hello John :)");
}

void loop() {
  float air_temp = dht.readTemperature();
  float humidity = dht.readHumidity();
  
  /* Print Output on LCD Screen */
  lcd.setCursor(0,0);
  lcd.print(String("Temp. ") + String(air_temp));
  lcd.setCursor(0,1);
  lcd.print(String("Humidity ") + String(humidity));

  delay(2000);
}


```