import 'package:huawei_map/map.dart';

import 'cluster_manager.dart';
import 'geohash.dart';

class ClusterItem<T> {
  final LatLng location;
  final String geohash;
  final T? item;

  ClusterItem(this.location, {this.item})
      : geohash = Geohash.encode(location.lat, location.lng, codeLength: ClusterManager.precision);
}
