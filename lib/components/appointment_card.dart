import 'package:flutter/material.dart';
import 'package:memory_project/utils/config.dart';

class AppointmentCard extends StatefulWidget {
  const AppointmentCard({Key? key}) : super(key: key);


  @override
  State<AppointmentCard> createState() => _AppointmentCardState();
}

class _AppointmentCardState extends State<AppointmentCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Config.primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child:  Material(
        color: Colors.transparent,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              const Row(
                children: [
                  CircleAvatar(
                    backgroundImage:
                    AssetImage('assets/doctor_1.png'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Dr Bara Diop',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text('Dentiste',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Config.spaceSmall,
              const ScheduleCard(),
              Config.spaceSmall,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    child: const Text('Retour',style: TextStyle(color: Colors.white),),
                    onPressed: () {},
                  ),
                  ),
                  const SizedBox(width: 20,),
                  Expanded(child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    child: const Text('Completer',style: TextStyle(color: Colors.white),),
                    onPressed: () {},
                  ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Plan de rendez-vous
class ScheduleCard extends StatelessWidget {
  const ScheduleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.calendar_today,
            color: Colors.white,
            size: 16,
          ),
          SizedBox(width: 5,),
          Text(
            'Mardi 23/07/2022',
            style: TextStyle(color: Colors.white,),
          ),
          SizedBox(width: 29,),
          Icon(Icons.access_alarm,
            color: Colors.white,
            size: 17,
          ),
          SizedBox(width: 5,),
          Flexible(child: Text(
            '11h:00',
            style: TextStyle(color: Colors.white,),
          ),),
        ],
      ),
    );
  }
}

