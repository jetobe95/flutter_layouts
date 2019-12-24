import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      // backgroundColor: theme.primaryColor,
      body: Container(
        
        decoration: BoxDecoration(
          color: theme.primaryColor,
          gradient: LinearGradient(
            colors: [
                theme.primaryColor.withOpacity(0.97),
                theme.primaryColor,
            ]
          )
        ),
        padding: EdgeInsets.symmetric(vertical: 40.0,horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Hi Dan",
              style: theme.textTheme.body1,
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "What do you want \n to learn?",
              style: theme.textTheme.title,
            ),
            Container(
              margin: EdgeInsets.only(top: 16.0),
              width: double.infinity,
              height: 220,
              decoration: BoxDecoration(
                  color: theme.textTheme.title.color,
                  borderRadius: BorderRadius.circular(15.0)),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "Your history",
              style: theme.textTheme.display1,
            ),
            ListTile(
              title: Text(
                'Development',
                style: theme.textTheme.body1,
              ),
              trailing: _buildCircle(context),
              subtitle: _buildRectGradient(context),
            ),
            ListTile(
              title: Text(
                'Color theory',
                style: theme.textTheme.body1,
              ),
              trailing: _buildCircle(context),
              subtitle: _buildRectGradient(context),
            ),
            ListTile(
              title: Text(
                'Ilustration Basics',
                style: theme.textTheme.body1,
              ),
              trailing: _buildCircle(context),
              subtitle: _buildRectGradient(context),
            ),
            SizedBox(
              height: 26.0,
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                      color: theme.accentColor,
                      borderRadius: BorderRadius.circular(15.0)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildCircle(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Theme.of(context).textTheme.title.color.withOpacity(0.15)),
    );
  }

  Widget _buildRectGradient(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      width: 20.0,
      height: 20,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.white,
            Colors.white.withOpacity(0.16),
          ]),
          color: Theme.of(context).textTheme.title.color.withOpacity(0.15)),
    );
  }
}
