import 'package:injectable/injectable.dart';

import '../../../../../common/data/network/network_helper.dart';

@injectable
class Feature1RemoteDataSource {
  NetworkHelper _networkHelper;
  Feature1RemoteDataSource(this._networkHelper);
}
