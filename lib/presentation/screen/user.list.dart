import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../view_model/user.list.provider.dart';

class UserList extends ConsumerStatefulWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  ConsumerState<UserList> createState() => _UserListState();
}

class _UserListState extends ConsumerState<UserList> {
  late UserListProvider provider;

  @override
  Widget build(BuildContext context) {
    provider = ref.watch(getUsersProvider);
    provider.init();

    return Scaffold(
        appBar: AppBar(title: const Text("Get User list"),),
        body: provider.haveData ?
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: provider.list.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Text("${provider.list[index].username}")
                        ),
                        title: Text('${provider.list[index].firstName}'),
                        subtitle: Text('${provider.list[index].lastName}'),
                      );
                    })
              ],
            ),
          ),
        ) :
        const Center(child: CircularProgressIndicator())
    );
  }
}