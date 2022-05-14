import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:lichess_prototype/locator.dart';
import 'package:lichess_prototype/model/model.dart';

part 'tv_stream_controller.g.dart';

class TvStreamController extends Cubit<TvStreamState?> {
  TvStreamController() : super(null) {
    init();
  }

  StreamSubscription? _sub;

  void init() async {
    final feed = await api().getTvFeed();
    if (feed.ok) {
      _sub = feed.object!.listen(_handleUpdate);
    }
  }

  @override
  Future<void> close() {
    _sub?.cancel();
    return super.close();
  }

  void _handleUpdate(Event event) {
    if (event is TvFeaturedEvent) {
      emit(event.state);
    } else if (event is TvFenEvent) {
      emit(state?.copyWith(fen: event.fen, lastMove: event.lastMove));
    }
  }
}

@CopyWith()
@JsonSerializable()
class TvStreamState {
  final String id;
  final String orientation;
  final List<Player> players;
  final String fen;
  @JsonKey(name: 'lm')
  final String? lastMove;

  const TvStreamState({
    required this.id,
    required this.orientation,
    required this.players,
    required this.fen,
    this.lastMove,
  });

  factory TvStreamState.fromJson(Map<String, dynamic> json) =>
      _$TvStreamStateFromJson(json);

  Map<String, dynamic> toJson() => _$TvStreamStateToJson(this);
}
