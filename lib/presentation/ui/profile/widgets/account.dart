import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_app/presentation/ui/profile/widgets/account_info_tile.dart';
import 'package:ecommerce_app/presentation/ui/profile/widgets/account_tile.dart';
import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const AccountInfoTile(
            fullName: 'Tanya Morenko',
            phone: '+7 912 323-32-12',
            image: 'lib/core/assets/user_1.png',
          ),
          AccountTile(
            title: 'My orders',
            leading: Icons.shopping_bag_outlined,
            trailing: '14',
            onTap: () {},
          ),
          AccountTile(
            title: 'My details',
            leading: Icons.person,
            onTap: () {},
          ),
          AccountTile(
            title: 'Address book',
            leading: Icons.location_on_outlined,
            onTap: () {
              AutoRouter.of(context).push(
                const PageRouteInfo('AddressBook'),
              );
            },
          ),
          AccountTile(
            title: 'Payment Methods',
            leading: Icons.credit_card,
            onTap: () {
              AutoRouter.of(context).push(
                const PageRouteInfo(
                  'PaymentMethods',
                ),
              );
            },
          ),
          AccountTile(
            title: 'Sign out',
            leading: Icons.output_outlined,
            onTap: () {
              AutoRouter.of(context).push(
                const PageRouteInfo(
                  'SignOutScreen',
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
