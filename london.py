import pyowm

owm = pyowm.OWM('##############')  # You MUST provide a valid API key

obs = owm.weather_at_place('London,GB') 
w = obs.get_weather()
#w.get_clouds()

print(w.get_temperature('fahrenheit'))
#print(w.min_temperature('fahrenheit'))

