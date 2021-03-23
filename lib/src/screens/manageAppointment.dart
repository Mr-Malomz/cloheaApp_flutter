import 'package:cloheaApp_flutter/src/utils/colors.dart';
import 'package:cloheaApp_flutter/src/widgets/buttons.dart';
import 'package:cloheaApp_flutter/src/widgets/commons.dart';
import 'package:flutter/material.dart';

class ManageAppointment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ArrowButton(),
                    VerSpacer(size: 60.0),
                    LongFillBtn(
                      text: 'SCHEDULE AN APPOINTMENT',
                      funcCall: () {},
                    ),
                    VerSpacer(size: 30.0),
                    AppointDivider(
                      title: 'Upcoming Appointments',
                      color: primary,
                      ontap: () {},
                    ),
                    VerSpacer(size: 30.0),
                    AppointFeeds(
                      title: 'Malaria and Typhoid',
                      address: 'General Hospital, Gbagada. Lagos',
                      bgColor: upcoming,
                      time: '25 - Aug, 12 : 00 pm',
                      icon: Icons.notifications_active_rounded,
                      iconColor: primary,
                      timeColor: primary,
                    ),
                    VerSpacer(size: 10.0),
                    AppointFeeds(
                      title: 'Migraine Checkup',
                      address: 'Mercy Corp Specialist, Ikeja. Lagos',
                      bgColor: upcoming,
                      time: '23 - Sep, 2 : 00 pm',
                      icon: Icons.notifications_active_rounded,
                      iconColor: primary,
                      timeColor: primary,
                    ),
                    VerSpacer(size: 10.0),
                    AppointFeeds(
                      title: 'Maigraine Follow-up',
                      address: 'Mercy Corp Specialist, Ikeja. Lagos',
                      bgColor: upcoming,
                      time: '23 - Oct, 2 : 00 pm',
                      icon: Icons.notifications_active_rounded,
                      iconColor: primary,
                      timeColor: primary,
                    ),
                    VerSpacer(size: 60.0),
                    AppointDivider(
                      title: 'Pending Appointments',
                      color: pendMain,
                      ontap: () {},
                    ),
                    VerSpacer(size: 30.0),
                    AppointFeeds(
                      title: 'Hair Transplant',
                      address: 'IB Teaching Hospital, Ibadan, Oyo',
                      bgColor: pending,
                      hasTime: false,
                      icon: Icons.hourglass_empty_outlined,
                      iconColor: pendMain,
                    ),
                    VerSpacer(size: 10.0),
                    AppointFeeds(
                      title: 'Skin Infection',
                      address: 'Mercy Corp Specialist, Ikeja. Lagos',
                      bgColor: pending,
                      hasTime: false,
                      icon: Icons.hourglass_empty_outlined,
                      iconColor: pendMain,
                    ),
                    VerSpacer(size: 10.0),
                    AppointFeeds(
                      title: 'Quarterly Follow-up',
                      address: 'Mercy Corp Specialist, Ikeja. Lagos',
                      bgColor: pending,
                      hasTime: false,
                      icon: Icons.hourglass_empty_outlined,
                      iconColor: pendMain,
                    ),
                    VerSpacer(size: 60.0),
                    AppointDivider(
                      title: 'Recent Appointments',
                      color: recentMain,
                      ontap: () {},
                    ),
                    VerSpacer(size: 30.0),
                    AppointFeeds(
                      title: 'Toothache',
                      address: 'General Hospital, Gbagada. Lagos',
                      bgColor: recent,
                      time: '02 - Jan, 12 : 00 pm',
                      icon: Icons.check_circle,
                      iconColor: recentCorrect,
                    ),
                    VerSpacer(size: 10.0),
                    AppointFeeds(
                      title: 'Checkup and Vitals',
                      address: 'Mercy Corp Specialist, Ikeja. Lagos',
                      bgColor: recent,
                      time: '23 - Feb, 2 : 00 pm',
                      icon: Icons.stop_circle,
                      iconColor: recentWrong,
                    ),
                    VerSpacer(size: 10.0),
                    AppointFeeds(
                      title: 'Toothache',
                      address: 'Mercy Corp Specialist, Ikeja. Lagos',
                      bgColor: recent,
                      time: '23 - Mar, 2 : 00 pm',
                      icon: Icons.check_circle,
                      iconColor: recentCorrect,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
