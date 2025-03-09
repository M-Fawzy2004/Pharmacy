import 'package:flutter/cupertino.dart';
import 'package:pharmacy_app/core/widget/product_view_header.dart';
import 'package:pharmacy_app/feature/profile/presentation/view/widget/profile_info.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        // set up profile
        SliverToBoxAdapter(
          child: ProductViewHeader(
            title: 'Set Up Profile',
            isNotfication: false,
          ),
        ),

        // sized box
        SliverToBoxAdapter(
          child: SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.05,
          ),
        ),

        // profile info
        SliverToBoxAdapter(
          child: ProfileInfo(),
        ),
      ],
    );
  }
}
