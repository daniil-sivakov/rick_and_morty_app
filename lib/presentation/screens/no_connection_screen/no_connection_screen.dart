import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty_app/presentation/localization/localization_plug.dart';
import 'package:rick_and_morty_app/presentation/utilities/show_message_extension.dart';
import 'package:rick_and_morty_app/presentation/widgets/loading_state.dart';

@RoutePage()
class NoConnectionScreen extends StatefulWidget {
  const NoConnectionScreen({super.key, required this.tryReload});

  final Future<bool> Function() tryReload;

  @override
  State<NoConnectionScreen> createState() => _NoConnectionScreenState();
}

class _NoConnectionScreenState extends State<NoConnectionScreen> {
  bool _reloadInProgress = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: LoadingState(
        inProgress: _reloadInProgress,
        loadingIndicator: LoadingIndicator.circular,
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                LocalizationPlug.noInternetConnectionMessage,
                style: TextTheme.of(context).titleLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Text(
                LocalizationPlug.selectOfflineModeMessage,
                style: TextTheme.of(context).titleSmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              SizedBox(
                child: TextButton.icon(
                  onPressed: _handleReload,
                  icon: Icon(Icons.replay_outlined),
                  label: Text(LocalizationPlug.tryAgainButtonLabel),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _handleReload() async {
    setState(() => _reloadInProgress = true);
    final bool success = await widget.tryReload();
    if (!mounted) return;
    setState(() => _reloadInProgress = false);
    if (success) {
      Navigator.of(context).pop();
    } else {
      context.showMessage(LocalizationPlug.attemptFailedMessage);
    }
  }
}
