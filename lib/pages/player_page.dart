import 'package:flutter/material.dart';

class PlayerPage extends StatefulWidget {
  @override
  _PlayerPageState createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  double sliderValue = 20.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Color(0xff006C87),
            Color(0xff013B4A),
          ])),
      child: Column(
        children: <Widget>[
          SafeArea(
            bottom: false,
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.keyboard_arrow_down,
                  size: 30.0,
                  color: Colors.white,
                ),
                Spacer(),
                Text(
                  'Jeff',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w800),
                ),
                Spacer(),
                Icon(Icons.more_horiz, size: 30.0, color: Colors.white),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
            width: double.infinity,
            child: Image.network(
                'https://images-na.ssl-images-amazon.com/images/I/71oR9KC2LYL._SL1200_.jpg'),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Pinball Wizard',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 6.0,
                      ),
                      Text(
                        'The who',
                        style:
                            TextStyle(color: Colors.grey[300], fontSize: 18.0),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  onPressed: () {},
                )
              ],
            ),
          ),
          _buildSlider(),
          _buildActions(),
          SizedBox(height: 20.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(Icons.bluetooth,color: Colors.green,),
                  Text('Logitech X50',style: TextStyle(color: Colors.green),)
                ],
              ),
              Icon(Icons.playlist_play,color: Colors.white.withOpacity(0.8),size: 26.0,)
            ],
          )
        ],
      ),
    );
  }

  Widget _buildSlider() {
    final TextStyle textStyle = TextStyle(color: Colors.white, fontSize: 13.0);
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      padding: EdgeInsets.zero,
      child: Column(
        children: <Widget>[
          SliderTheme(
            data: SliderThemeData(
                overlayShape: RoundSliderOverlayShape(
                  overlayRadius: 0.0,
                ),
                overlayColor: Colors.white,
                activeTrackColor: Colors.white,
                thumbColor: Colors.white,
                trackHeight: 4.0,
                inactiveTrackColor: Colors.white.withOpacity(0.16),
                thumbShape: RoundSliderThumbShape(
                  enabledThumbRadius: 6.0,
                  disabledThumbRadius: 3,
                )),
            child: Slider(
              min: 0,
              max: 100,
              onChanged: (double value) {
                setState(() {
                  sliderValue = value;
                });
              },
              value: sliderValue,
            ),
          ),
          SizedBox(
            height: 4.0,
          ),
          Row(
            children: <Widget>[
              Text(
                '0:56',
                style: textStyle,
              ),
              Spacer(),
              Text(
                '-2:05',
                style: textStyle,
              ),
            ],
          )
        ],
      ),
    );
  }

  _buildActions() {
    return Container(
      // color: Colors.red,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.shuffle),
            onPressed: () {},
            color: Colors.white.withOpacity(.50),
          ),
          IconButton(
            padding: EdgeInsets.zero,
            icon: Icon(
              Icons.skip_previous,
              size: 50.0,
            ),
            onPressed: () {},
            color: Colors.white,
          ),
          // padding: EdgeInsets.zero,
          Icon(
            Icons.pause_circle_filled,
            size: 80.0,
            color: Colors.white,
          ),
          IconButton(
            padding: EdgeInsets.zero,
            icon: Icon(
              Icons.skip_next,
              size: 50.0,
            ),
            onPressed: () {},
            color: Colors.white,
          ),
          IconButton(
            icon: Icon(Icons.repeat),
            onPressed: () {},
            color: Colors.white.withOpacity(.50),
          ),
        ],
      ),
    );
  }
}
