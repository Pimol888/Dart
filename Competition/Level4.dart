enum Units{Cms, Metters, Kms}
class Distance {
  final double _value;
  final String _unit;

  Distance._(this._value, this._unit);

  factory Distance.cms(double value) => Distance._(value, 'cms');
  factory Distance.meters(double value) => Distance._(value, 'meters');
  factory Distance.kms(double value) => Distance._(value, 'kms');

  double get cms => _convertToCms();
  double get meters => _convertToMeters();
  double get kms => _convertToKms();

  Distance operator +(Distance other) {
    final totalCms = this.cms + other.cms;
    return Distance.cms(totalCms);
  }

  double _convertToCms() {
    switch (_unit) {
      case 'cms':
        return _value;
      case 'meters':
        return _value * 100;
      case 'kms':
        return _value * 100000;
      default:
        throw ArgumentError('Invalid unit: $_unit');
    }
  }

  double _convertToMeters() {
    switch (_unit) {
      case 'cms':
        return _value / 100;
      case 'meters':
        return _value;
      case 'kms':
        return _value * 1000;
      default:
        throw ArgumentError('Invalid unit: $_unit');
    }
  }

  double _convertToKms() {
    switch (_unit) {
      case 'cms':
        return _value / 100000;
      case 'meters':
        return _value / 1000;
      case 'kms':
        return _value;
      default:
        throw ArgumentError('Invalid unit: $_unit');
    }
  }

  void main() {
    Distance dis1 = Distance.cms(1000);
    Distance dis2 = Distance.meters(500);
    Distance totalDistance = dis1 + dis2;
  print("Total distance in centimeters: ${totalDistance.cms}");
  print("Total distance in meters: ${totalDistance.meters}");
  print("Total distance in kilometers: ${totalDistance.kms}");
  }
}
