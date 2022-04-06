import 'package:movie_app/data/data.vos/actor_vo.dart';
import 'package:movie_app/persistance/daos/actor_dao.dart';

class ActorDaoImplMock extends ActorDao {
  Map<int?, ActorVO> actorListFromDatabaseMock = {};

  @override
  List<ActorVO> getAllActors() {
    return actorListFromDatabaseMock.values.toList();
  }

  @override
  void saveAllActors(List<ActorVO> actorList) {
    return actorList.forEach((actor) {
      actorListFromDatabaseMock[actor.id] = actor;
    });
  }
}
