class WeatherData {
  final String date;
  final int dateEpoch;
  final DayData day;

  WeatherData({
    required this.date,
    required this.dateEpoch,
    required this.day,
  });

  factory WeatherData.fromJson(Map<String, dynamic> json) {
    return WeatherData(
      date: json['date'],
      dateEpoch: json['date_epoch'],
      day: DayData.fromJson(json['day']),
    );
  }
}

class DayData {
  final double maxTempC;
  final double maxTempF;
  final double minTempC;
  final double minTempF;
  final double avgTempC;
  final double avgTempF;
  final double maxWindMph;
  final double maxWindKph;
  final double totalPrecipMm;

  DayData({
    required this.maxTempC,
    required this.maxTempF,
    required this.minTempC,
    required this.minTempF,
    required this.avgTempC,
    required this.avgTempF,
    required this.maxWindMph,
    required this.maxWindKph,
    required this.totalPrecipMm,
  });
  factory DayData.fromJson(Map<String, dynamic> json) {
    return DayData(
      maxTempC: json['maxtemp_c'],
      maxTempF: json['maxtemp_f'],
      minTempC: json['mintemp_c'],
      minTempF: json['mintemp_f'],
      avgTempC: json['avgtemp_c'],
      avgTempF: json['avgtemp_f'],
      maxWindMph: json['maxwind_mph'],
      maxWindKph: json['maxwind_kph'],
      totalPrecipMm: json['totalprecip_mm'],
    );
  }
}