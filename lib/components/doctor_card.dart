import 'package:flutter/material.dart';
import 'package:memory_project/utils/config.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({super.key});

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: 150,
      child: GestureDetector(
        child: Card(
          elevation: 5,
          color: Colors.white,
          child: Row(
            children: [
              SizedBox(
                width: Config.widthSize * 0.18,
                child: Image.asset('assets/doctor_2.jpg',fit: BoxFit.fill,),
              ),
              const Flexible(child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Dr. Bara Diop',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Dentiste',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.star_border, color: Colors.yellow,size: 16,),
                        Spacer(flex: 1,),
                        Text('4.5'),
                        Spacer(flex: 1,),
                        Text('Commentaires'),
                        Spacer(flex: 1,),
                        Text('(5)'),
                        Spacer(flex: 7,),
                      ],
                    ),
                  ],
                ),
              ),
              ),
            ],
          ),
        ),
        onTap: () {},
      ),
    );
  }
}
