
import 'package:injectable/injectable.dart';
import './../../data/repositories/feature_1_repository.dart';

@injectable
class Feature1Service {
  Feature1Repository _feature1Repository;
  Feature1Service(this._feature1Repository);
}