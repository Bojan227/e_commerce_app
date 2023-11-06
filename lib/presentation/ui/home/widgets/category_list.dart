import 'package:ecommerce_app/presentation/ui/home/widgets/category_item.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          CategoryItem(
              label: 'Bedroom', image: 'lib/core/assets/category_1.png'),
          CategoryItem(
              label: 'Living room', image: 'lib/core/assets/category_2.png'),
          CategoryItem(
              label: 'Kitchen', image: 'lib/core/assets/category_3.png'),
          CategoryItem(
              label: 'Bedroom', image: 'lib/core/assets/category_1.png'),
          CategoryItem(
              label: 'Living room', image: 'lib/core/assets/category_2.png'),
          CategoryItem(
              label: 'Kitchen', image: 'lib/core/assets/category_3.png')
        ],
      ),
    );
  }
}




// class CategoryList extends StatefulWidget {
//   const CategoryList({super.key});

//   @override
//   State<CategoryList> createState() => _CategoryListState();
// }

// class _CategoryListState extends State<CategoryList> {
//   List<CategoryItem> items = [];

//   final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();

//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       addItems();
//     });
//   }

//   Future future = Future(() {});

//   void addItems() {
//     for (var x = 0; x < 4; x += 1) {
//       future = future.then((value) {
//         return Future.delayed(const Duration(milliseconds: 100), () {
//           items.add(
//             CategoryItem(
//               label: 'Bedroom',
//               image: 'lib/core/assets/category_1.png',
//             ),
//           );
//           _listKey.currentState?.insertItem(items.length - 1);
//         });
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedList(
//       shrinkWrap: true,
//       scrollDirection: Axis.vertical,
//       physics: const ScrollPhysics(),
//       key: _listKey,
//       initialItemCount: items.length,
//       itemBuilder: (context, index, animation) {
//         return SlideTransition(
//           position: animation
//               .drive(Tween<Offset>(begin: Offset(1, 0), end: Offset(0, 0))),
//           child: items[index],
//         );
//       },
//     );

//     // const SingleChildScrollView(
//     //   child: Column(
//     //     children: [
//     //       CategoryItem(
//     //           label: 'Bedroom', image: 'lib/core/assets/category_1.png'),
//     //       CategoryItem(
//     //           label: 'Living room', image: 'lib/core/assets/category_2.png'),
//     //       CategoryItem(
//     //           label: 'Kitchen', image: 'lib/core/assets/category_3.png'),
//     //       CategoryItem(
//     //           label: 'Bedroom', image: 'lib/core/assets/category_1.png'),
//     //       CategoryItem(
//     //           label: 'Living room', image: 'lib/core/assets/category_2.png'),
//     //       CategoryItem(
//     //           label: 'Kitchen', image: 'lib/core/assets/category_3.png')
//     //     ],
//     //   ),
//     // );
//   }
// }
