// ignore_for_file: library_private_types_in_public_api

import 'package:bmi_calculator/view/utils/colors.dart';
import 'package:flutter/material.dart';

class TipScreen extends StatefulWidget {
  const TipScreen({Key? key}) : super(key: key);

  @override
  _TipScreenState createState() => _TipScreenState();
}

class _TipScreenState extends State<TipScreen> {
  bool _isVisible = false;

  @override
  void initState() {
    super.initState();
    // Set a delay to start the animation after a short period
    Future.delayed(const Duration(milliseconds: 300), () {
      setState(() {
        _isVisible = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bcolor,
        appBar: AppBar(
          backgroundColor: bcolor,
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: AnimatedOpacity(
          opacity: _isVisible ? 1.0 : 0.0, // Change opacity based on _isVisible
          duration: const Duration(milliseconds: 300),
          child: const SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '5 simple tips for a healthy BMI',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontSize: 21,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Image(
                      image: NetworkImage(
                          'https://www.healthywomen.org/media-library/easy-ways-to-lower-your-body-mass-index.jpg?id=19157869&width=980')),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "BMI stands for body mass index. It takes your age, height and weight into account, and gives you a score on a chart ranging from underweight to extremely obese. The healthiest weight is somewhere in between BMI has its limitations  like not considering your distribution of fat and muscle – but it’s a good way to understand whether you’re at a generally healthy weight",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontSize: 14,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Benefits of a healthy BMI',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontSize: 17,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "* Reduced risk of Covid-19 complications\n* Reduced risk of type 2 diabetes\n* Reduced risk of cardiovascular disease and heart attacks\n* Fewer joint and muscle problems\n* Improved fertility\n* Better mobility and self-confidence",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontSize: 14,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'How to lower your BMI',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontSize: 17,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'The best way to lower you BMI is to make simple changes towards a healthier lifestyle. Here are some things you can do to help.',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontSize: 14,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Image(
                      image: NetworkImage(
                          'https://www.metropolisindia.com/upgrade/blog/upload/2021/11/dieting-tips-Metropolis-Healthcare.jpg')),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "1. Don’t bother with crash diets\n"
                    "Ever put yourself on a serious diet to lose weight quickly before an event? Or tried to keep up with so many diet trends that you flick from one to the next? It happens.\n\n"
                    "But these ‘quick fix’ diets do not work for the longer term, and are certainly not the best way to lower your BMI. You’re likely to lose weight fast because of the dramatic change, but it’s not sustainable to adapt your eating habits this way indefinitely.\n\n"
                    "A balanced, calorie-controlled diet is the ticket to a healthy BMI – the safe way. By making simple healthier food swaps, reducing portion sizes and cutting down on high-calorie food and drink, you’re more likely to reach a healthy BMI steadily, and keep the extra weight off.\n\n"
                    "2. Look out for hidden sugar\n"
                    "The government recommends that adults should have no more than 30g of sugar a day (roughly equivalent to 7 sugar cubes), children aged 7 to 10 should have no more than 24g of free sugars a day (6 sugar cubes), and children aged 4 to 6 should have no more than 19g of free sugars a day (5 sugar cubes).\n\n"
                    "Consuming more than the recommended amount of sugar can be a real hindrance to achieving, or maintaining, a healthy BMI. When trying to lose weight, many of us make the decision to cut down on sweet treats and fizzy drinks – but unfortunately, sugar often creeps into a lot of unexpected foods. Examples include:\n\n"
                    "Pasta sauces\n"
                    "Granola and cereal bars\n"
                    "Salad dressings\n"
                    "Tinned fruit in syrup\n"
                    "Coleslaw\n"
                    "Ketchup\n"
                    "Shop-bought soups\n\n"
                    "If you’re trying to reduce your sugar intake, think about the surprising sources of hidden sugars, as well as the obvious ones, like cake and chocolate. Take your time when doing the food shop and check pre-packages products for their sugar content.\n\n"
                    "3. Get your heart pumping\n"
                    "It’s no secret that the more you exercise, the more you can lower your BMI, healthily. NHS recommends doing at least 150 minutes of moderate intensity exercise a week (for example a brisk walk, hiking or cycling), or 75 minutes’ vigorous intensity. You should mix up cardio and strength training to strengthen key muscles and achieve better weight loss results.\n\n"
                    "Vigorous intensity activities include:\n\n"
                    "Running or jogging\n"
                    "Fast swimming\n"
                    "Cycling fast or uphill\n"
                    "Gymnastics\n"
                    "Using a skipping rope\n"
                    "Martial arts\n"
                    "Playing sports like football, rugby and netball\n\n"
                    "And don’t worry about the cold weather approaching. There are still plenty of benefits of exercising outside in winter – like better immunity and a boosted metabolism – so you don’t need a gym membership if you don’t want one.\n\n"
                    "4. Simply move more\n"
                    "Sometimes it’s hard to find the time for a proper workout – work and family commitments might get in the way. If you’re looking to add more exercise to your daily life, but can’t commit to a strict gym routine, simply get moving throughout the day to burn calories.\n\n"
                    "Walk or cycle to work if you can, and choose stairs over the lift. These are not only healthy changes towards a healthier BMI, they’re also very suitable with social distancing guidelines in place.\n\n"
                    "Using a step tracker on your phone is a good way to see how much you’re really moving day-to-day. If you can’t get to the gym, try to walk 10,000 steps a day, even if just running errands. It can help more than you may think.\n\n"
                    "Ready to make the effort to maintain a healthy BMI? Try using the NHS BMI calculator to see where you fall on the scale, and get suggestions for managing your weight.\n\n"
                    "5. Get the right support\n"
                    "When working towards a healthy BMI, many people find it easier spending time with others who have the same goal. You could try a group weight loss programme, gym support groups and classes, or even just a social media community with like-minded people.\n\n"
                    "Even just the right encouragement from friends and family can make a huge difference to your success. If you have a friend in the obese or overweight range, go on a health journey together and check in with each other regularly. If you live with your partner or have a family, cook vibrant, tasty meals with plenty of goodness they’ll enjoy. By making these few simple lifestyle tweaks, you can be well on your way to a healthier BMI.",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontSize: 14,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Thank you',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontSize: 14,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
