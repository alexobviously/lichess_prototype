import 'package:flutter/material.dart';
import 'package:lichess_prototype/locator.dart';
import 'package:lichess_prototype/model/model.dart';
import 'package:lichess_prototype/ui/result_future_builder.dart';
import 'package:lichess_prototype/ui/scaffold.dart';

class ProfilePage extends StatefulWidget {
  final String username;
  const ProfilePage({super.key, required this.username});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late final Future<Result<User>> future = api().getProfile(widget.username);
  @override
  Widget build(BuildContext context) {
    return LichessScaffold(
      body: SafeArea(
        child: ResultFutureBuilder<User>(
          future: future,
          resultBuilder: _profile,
          errorBuilder: (e) => Text('Error: $e'),
        ),
      ),
    );
  }

  Widget _profile(User user) {
    return ListView(
      children: [
        Text(user.username),
        if (user.profile.fullName != null)
          Text(
            user.profile.fullName!,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        if (user.profile.bio != null)
          Text(
            user.profile.bio!,
            style: const TextStyle(fontStyle: FontStyle.italic),
          ),
        if (user.profile.country != null || user.profile.location != null)
          Row(
            children: [
              if (user.profile.country != null)
                Padding(
                  padding: const EdgeInsets.only(right: 4.0),
                  child: Text(user.profile.country!),
                ),
              if (user.profile.location != null) Text(user.profile.location!),
            ],
          ),
        if (user.profile.links != null) Text(user.profile.links!),
      ],
    );
  }
}
