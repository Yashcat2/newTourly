import 'package:flutter/material.dart';
import 'package:newtourly/model/waethermodel.dart';
import 'package:newtourly/screens/weather_screen/weatherApi.dart';
import 'package:newtourly/utilities/colors.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  ApiResponse? response;
  bool inProgress = false;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              _buildSearchWidget(),
              const SizedBox(height: 20),
              if (inProgress) 
                CircularProgressIndicator() 
              else 
                Expanded(
                  child: SingleChildScrollView(
                    child: _buildWeatherWidget()
                  )
                  ),
            ],
          ),
        ),
      ));
  }


Widget _buildSearchWidget() {
  return SearchBar(
    hintText: "Search any City",
    onSubmitted: (value){
      _getWeatherData(value);
    },
    );
}

Widget _buildWeatherWidget( ) {
  if (response == null) {
    return Text("Search for the location to get weather data");
  }else{
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Icon(
              Icons.location_on,
              size: 50,
            ),
            Text(
              response?.location?.name ?? "",
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w300,
              ),
            ),
            Text(
              response?.location?.country ?? "",
              style: const TextStyle(
                fontSize: 15 ,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              (response?.current?.tempC.toString() ?? "")+" °C",
              style: const TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        
        Center(
          child: SizedBox(
            height: 180, 
            child: Image.network(
              "https:${response?.current?.condition?.icon}"
              .replaceAll("64x64", "128x128"),
              scale: 0.7,
            ),
          ),
        ),
        Center(
          child: Text(
            (response?.current?.condition?.text.toString() ?? "")+" °C",
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ), 
        SizedBox(height: 5),
        Card(
          elevation: 4,
          color: const Color.fromARGB(60, 26, 247, 236),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _dataAndTitleWidget("Humidity", 
                  response?.current?.humidity?.toString() ?? ""),
                  _dataAndTitleWidget("Wind Speed",
                  "${response?.current?.windKph?.toString() ?? ""} km/h"),
                ],
                
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _dataAndTitleWidget("UV", 
                  response?.current?.uv?.toString() ?? ""),
                  _dataAndTitleWidget("Percipitation",
                  "${response?.current?.precipMm?.toString() ?? ""} mm"),
                ],
                
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _dataAndTitleWidget("Local Time", 
                  response?.location?.localtime?.split(" ").last ?? ""),
                  _dataAndTitleWidget("Local Date",
                  response?.location?.localtime?.split(" ").first ?? ""),
                ],
                
              ),
              SizedBox(height: 0)
            ],
          ),
        ),
      ],

    );
  }
}

Widget _dataAndTitleWidget(String title, String data){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Text(
          data,
          style: const TextStyle(
            fontSize: 25, 
            color: kBlackClr,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          title,
          style: const TextStyle(
            // fontSize: 27,
            color: kBlackClr,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ),
  );
  
}


_getWeatherData(String location) async{
  setState(() {
    inProgress = true;
  }) ;

try{
    response = await Weatherapi().getCurrentWeather(location); 
}catch(e){

}finally{
  setState(() {
    inProgress = false;
  }
  );
 }  
}
}