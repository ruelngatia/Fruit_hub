import 'package:fdottedline_nullsafety/fdottedline__nullsafety.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hub/presentation/widgets/leading_button.dart';
import 'package:fruit_hub/utils/konstants.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// ignore: must_be_immutable
class TrackOrder extends StatelessWidget {
  TrackOrder({super.key});

  late GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const LeadingBtn(),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(40),
          child: Container(height: 40),
        ),
        leadingWidth: 90,
        title: Text(
          'Delivery status',
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 12,left: 12,right: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: Image.asset('assets/images/note.png'),
                title: const Text('Order taken'),
                trailing: Icon(
                  Icons.check_circle_rounded,
                  color: Color(Konstants.borderGreen),
                ),
              ),
              SizedBox(
                width: 90,
                child: Center(
                  child: FDottedLine(
                    color: Color(Konstants.orange),
                    height: 36.0,
                    strokeWidth: 2.0,
                    dottedLength: 4.0,
                    space: 2.0,
                  ),
                ),
              ),
              ListTile(
                leading: Image.asset('assets/images/clipboard.png'),
                title: const Text('Order Is Being Prepared'),
                trailing: Icon(
                  Icons.check_circle_rounded,
                  color: Color(Konstants.borderGreen),
                ),
              ),
              SizedBox(
                width: 90,
                child: Center(
                  child: FDottedLine(
                    color: Color(Konstants.orange),
                    height: 36.0,
                    strokeWidth: 2.0,
                    dottedLength: 4.0,
                    space: 2.0,
                  ),
                ),
              ),
              ListTile(
                leading: Image.asset('assets/images/scotter.png'),
                title: const Text('Order Is Being Delivered'),
                subtitle: const Text('Your delivery agent is comming'),
                trailing: Icon(
                  Icons.check_circle_rounded,
                  color: Color(Konstants.borderGreen),
                ),
              ),
              SizedBox(
                width: 90,
                child: Center(
                  child: FDottedLine(
                    color: Color(Konstants.orange),
                    height: 24.0,
                    strokeWidth: 2.0,
                    dottedLength: 4.0,
                    space: 2.0,
                  ),
                ),
              ),
              Container(
                height: 184,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40)
                ),
                child: GoogleMap(
                  onMapCreated: _onMapCreated,
                  initialCameraPosition: CameraPosition(
                    target: _center,
                    zoom: 11.0,
                  ),
                ),
              ),
              SizedBox(
                width: 90,
                child: Center(
                  child: FDottedLine(
                    color: Color(Konstants.orange),
                    height: 24.0,
                    strokeWidth: 2.0,
                    dottedLength: 4.0,
                    space: 2.0,
                  ),
                ),
              ),
              ListTile(
                leading: Image.asset('assets/images/check.png'),
                title: const Text('Order Is Being Delivered'),
                subtitle: const Text('Your delivery agent is comming'),
                trailing: Icon(
                  Icons.more_horiz_rounded,
                  size: 48,
                  color: Color(Konstants.luminousOrange),
                ),
              ),
              const SizedBox(height: 10,)
            ],
          ),
        ),
      ),
    );
  }
}
