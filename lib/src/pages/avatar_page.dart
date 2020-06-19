import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatars'),
        actions: [
          Container(
            padding: EdgeInsets.all(9.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://scontent-qro1-1.xx.fbcdn.net/v/t1.0-9/70559183_2928164603880384_9113548206972600320_o.jpg?_nc_cat=111&_nc_sid=174925&_nc_eui2=AeHmK4HW0qM_OHycZcGUppg6joIoArefrKmOgigCt5-sqWymIJMTQDBAxQaEqLkKG4vebvLxV1BPC-QydRBxHOO6&_nc_ohc=gIHbobC_WbcAX8dQAnK&_nc_ht=scontent-qro1-1.xx&oh=25103e84b243609a6a12e3bfcb9ba3a3&oe=5EF61AAB'),
              radius: 20.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('ES'),
              backgroundColor: Colors.red[700],
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/loading.gif'), 
          image: NetworkImage('https://scontent.fgdl5-2.fna.fbcdn.net/v/t1.0-9/89568008_3363618290335011_5669655893587787776_n.jpg?_nc_cat=107&_nc_sid=09cbfe&_nc_eui2=AeFvqLATzbLqKH2Q7AWHyeYiMwGViucJfcEzAZWK5wl9wUNZR1I0M9Mn9AduoBK_s0U1Uv5MKpvoUKa9Xa5DdvuG&_nc_ohc=U-d0slnDc8QAX_kFad_&_nc_ht=scontent.fgdl5-2.fna&oh=97f62e961852e483a46c578b247a76f6&oe=5EF3E7DB'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}