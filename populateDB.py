#!/usr/bin/env python
import json
import facebook
import requests
import MySQLdb
from MySQLdb.cursors import DictCursor

from datetime import datetime

#get event objects from facebook API and insert them into the event table of beconn database
def insert_event(url):
   r = requests.get(url)
   data_json = r.content
   data_python = json.loads(data_json)
   data = data_python['events']
   events = data['data']
   db = MySQLdb.connect(host="localhost",user="root",passwd="csci3308",db="beconn")
   with db:	
      cur = db.cursor()
      for i in range (0,len(events)-1):
         try:			
            event_dict = events[i]
            IDg = int(event_dict["id"])
            ID = IDg//1000000
            if (not ("start_time" in event_dict)) : continue #ignore event if there is no starting time 		
            time_str = event_dict["start_time"]
            time_datetime = datetime.strptime(time_str,'%Y-%m-%dT%H:%M:%S-%f')	
            name = event_dict["name"]
            owner = event_dict["owner"]
            host = (owner["name"])
            if (not ("place" in event_dict)) : continue
            place = event_dict["place"]
            if (not ("location" in place)) : continue
            location = place["location"]
            address = location["street"] if "street" in location else location["city"] + " "+ location["state"]
            city = location["city"] 
            latitude = float(location["latitude"])
            print(latitude)
            longitude = float(location["longitude"])
            Zip = location["zip"] if "zip" in location else "0"
            zipcode = int(Zip[0:5])
            cur.execute("REPLACE INTO Event (Id,Name, Address,Host,Time,Zip) VALUES(%s,%s,%s,%s,%s,%s)",(ID,name, address,host,time_datetime,zipcode))
            cur.execute("REPLACE INTO Location (Id,Zip, Name,Latitude,Longitude) VALUES(%s,%s,%s,%s,%s)",(ID,zipcode, city,latitude,longitude))
         except UnicodeEncodeError:
            continue

with open("url.txt") as f:
    content = f.readlines()		
for i in content:
   insert_event(i.strip('\n'))
