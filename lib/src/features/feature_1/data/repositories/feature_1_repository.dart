
import 'package:injectable/injectable.dart';    
import '../source/local/feature_1_local_data_source.dart';
import '../source/remote/feature_1_remote_data_source.dart';
import './../../domain/i_repositories/i_feature_1_repository.dart';

@injectable
class Feature1Repository implements IFeature1Repository {
  Feature1RemoteDataSource _feature1RemoteDataSource;
  Feature1LocalDataSource _feature1LocalDataSource;
  Feature1Repository(this._feature1RemoteDataSource, this._feature1LocalDataSource);
}