import pyowm

owm = pyowm.OWM('de4d44b98a9edd2d0e53c828490f81d7')  # You MUST provide a valid API key

obs = owm.weather_at_place('Chicago, USA') 
w = obs.get_weather()
#w.get_clouds()

print(w.get_temperature('fahrenheit'))
#print(w.min_temperature('fahrenheit'))

