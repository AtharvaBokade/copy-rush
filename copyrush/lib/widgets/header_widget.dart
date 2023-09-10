import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 50,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 186, 159, 118).withOpacity(0.2),
            Color.fromARGB(255, 186, 159, 118).withOpacity(0.8),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.location_pin,
                    size: 35,
                    color: Colors.red,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Location of user",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.arrow_drop_down),
                          ],
                        ),
                        Text(
                          "Detailed address of the user",
                          textAlign: TextAlign.end,
                          style:
                              Theme.of(context).textTheme.labelMedium!.copyWith(
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.account_circle,
                size: 37,
                color: Colors.blueAccent,
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(9),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black45,
                    blurRadius: 4,
                    offset: Offset(2, 4),
                  ),
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.all(7),
                  child: Icon(
                    Icons.search,
                  ),
                ),
                Container(
                  width: 300,
                  height: 35,
                  child: TextField(
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(4),
                  child: Icon(Icons.mic),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 100,
          )
        ],
      ),
    );
  }
}
