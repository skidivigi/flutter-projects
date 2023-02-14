import 'package:dart_newproject080223/core/assetspath/images_path.dart';
import 'package:dart_newproject080223/core/theme/color.dart';
import 'package:dart_newproject080223/core/theme/font.dart';
import 'package:dart_newproject080223/models/car_model.dart';
import 'package:dart_newproject080223/ui/screens/cars_page.dart';
import 'package:dart_newproject080223/ui/widgets/home_page_widgets/custom_car_card.dart';
import 'package:dart_newproject080223/ui/widgets/home_page_widgets/custom_chip_home_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

double spreadRadius = 2;
double blurRadius = 3;
List<String> labels = ['Family Cars', 'Cheap Cars', 'Luxury Cars'];
int currentLabel = 0;

List<CarModels> data = [
  CarModels(
      image: AppImages.toyotaCar,
      price: 500,
      title: 'TOYOTA',
      speed: '200kmph',
      transition: 'Automatic',
      ownerName: 'Oolen Kale'),
  CarModels(
      image: AppImages.lambaCar,
      price: 499,
      title: 'LAMBORGHINI',
      speed: '250kmph',
      transition: 'Automatic',
      ownerName: 'Itan Touri'),
  CarModels(
      image: AppImages.rangeCar,
      price: 300,
      title: 'RANGE ROVER',
      speed: '180kmph',
      transition: 'Mechanic',
      ownerName: 'Silvester Stalone'),
  CarModels(
      image: AppImages.teslaCar,
      price: 300,
      title: 'TESLA',
      speed: '190kmph',
      transition: 'Automatic',
      ownerName: 'Oolen Kale'),
  CarModels(
      image: AppImages.rangetwoCar,
      price: 200,
      title: 'RANGE ROVER 15',
      speed: '230kmph',
      transition: 'Mechanic',
      ownerName: 'Keyle Made'),
  CarModels(
      image: AppImages.toyotatwoCar,
      price: 700,
      title: 'TOYOTA 13',
      speed: '220kmph',
      transition: 'Automatic',
      ownerName: 'Soolen Kovad'),
  CarModels(
      image: AppImages.audiCar,
      price: 200,
      title: 'AUDI 12',
      speed: '205kmph',
      transition: 'Automatic',
      ownerName: 'Kevin Adjar'),
  CarModels(
      image: AppImages.lambatwoCar,
      price: 100,
      title: 'LAMBORGHINI P.',
      speed: '210kmph',
      transition: 'Mechanic',
      ownerName: 'Madelin Query'),
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Image.asset(AppImages.welcome),
      ),
      backgroundColor: AppColors.white,
      appBar: AppBar(
        leading: Builder(builder: (context) {
          return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Image.asset(
                AppImages.menuHomePage,
                height: 27,
                width: 26,
                color: AppColors.black,
              ));
        }),
        backgroundColor: AppColors.white,
        elevation: 0,
        actions: const [
          Icon(
            Icons.shopping_cart_checkout_outlined,
            color: AppColors.black,
            size: 30,
          ),
          SizedBox(
            width: 44,
          )
        ],
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                          title: const Text('This is content'),
                          content: IconButton(
                            icon: const Icon(Icons.close),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ));
              },
              onTapDown: (_) {
                spreadRadius = 0;
                blurRadius = 0;
                setState(() {});
              },
              onTapUp: (_) {
                spreadRadius = 2;
                blurRadius = 3;
                setState(() {});
              },
              child: AnimatedContainer(
                  duration: const Duration(milliseconds: 100),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: spreadRadius,
                          blurRadius: blurRadius,
                          color: AppColors.black.withOpacity(0.6)),
                    ],
                  ),
                  child: Image.asset(AppImages.banner)),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ChipWidgetForHomePage(
                    label: labels[0],
                    selected: currentLabel == 0,
                    onSelected: (isSelected) {
                      currentLabel = 0;
                      setState(() {});
                    },
                  ),
                  ChipWidgetForHomePage(
                    label: labels[1],
                    selected: currentLabel == 1,
                    onSelected: (isSelected) {
                      currentLabel = 1;
                      setState(() {});
                    },
                  ),
                  ChipWidgetForHomePage(
                    label: labels[2],
                    selected: currentLabel == 2,
                    onSelected: (isSelected) {
                      currentLabel = 2;
                      setState(() {});
                    },
                  ),
                  const Icon(
                    Icons.search,
                    color: AppColors.pink,
                    size: 30,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 65,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                'Cars Available Near You',
                style: AppFonts.w400s20,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                const Spacer(),
                Text(
                  'View more',
                  style: AppFonts.w400s12.copyWith(
                    color: AppColors.red,
                  ),
                ),
              ],
            ),
            Expanded(
              child: GridView.builder(
                  itemCount: data.length,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (BuildContext context, int index) {
                    return CarCardHomePage(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CarsPage(data: data[index])));
                        },
                        image: data[index].image,
                        price: data[index].price,
                        title: data[index].title);
                  }),
            ),
          ],
        ),
      )),
    );
  }
}
