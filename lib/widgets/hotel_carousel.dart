import 'package:flutter/material.dart';
import 'package:sub_first/models/hotel_model.dart';

class HotelCarousel extends StatelessWidget {
  const HotelCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Rekomendasi Hotel',
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5),
              ),
              GestureDetector(
                onTap: () => print('See All'),
                child: Text('Lihat semuanya',
                    style: TextStyle(
                        fontSize: 14.0,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).colorScheme.primary)),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        // ignore: sized_box_for_whitespace
        Container(
          height: 300,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: hotels.length,
            itemBuilder: (BuildContext context, int index) {
              Hotel hotel = hotels[index];

              return Container(
                margin: const EdgeInsets.all(10),
                width: 240.0,
                child: Stack(alignment: Alignment.topCenter, children: [
                  Positioned(
                    bottom: 15.0,
                    child: Container(
                      height: 120.0,
                      width: 240.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(hotel.name,
                                style: const TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.1)),
                            const SizedBox(height: 2.0),
                            Text(
                              hotel.address,
                              style: const TextStyle(color: Colors.grey),
                            ),
                            const SizedBox(height: 2.0),
                            Text(
                              'Rp. ${hotel.price} ribu / malam',
                              style: const TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0.0, 2.0),
                              blurRadius: 6.0)
                        ]),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image(
                        height: 180.0,
                        width: 220.0,
                        image: AssetImage(hotel.imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ]),
              );
            },
          ),
        )
      ],
    );
  }
}
