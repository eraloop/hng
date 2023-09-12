import 'package:flutter/material.dart';
import 'package:stage_two/cv.dart';
import 'package:stage_two/home_edit.dart';
class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var userCv = userCV;
  var updatedCv;

  Future<void> _navigateToSecondScreen() async {
    updatedCv = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HomeEdit(userCv: userCv),
      ),
    );

    if(updatedCv != null ){
      setState(() {
        userCv = updatedCv;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
        centerTitle: true,
        title: Text("HNG Stage Two",
        style: Theme.of(context).textTheme.bodyText2,)
      ),
      body: Container(
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          // padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             Container(
               width: double.infinity,
               padding: const EdgeInsets.symmetric(vertical: 10),
               color: Theme.of(context).primaryColor,
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Container(
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(100),
                         border: Border.all(color: const Color(0xffffffff), width: 5)
                     ),
                     child: ClipRRect(
                         borderRadius: BorderRadius.circular(100),
                         child: Image.asset("assets/images/profile.png", height: 160, width: 160, fit: BoxFit.cover,)),
                   ),
                   Padding(
                     padding: const EdgeInsets.symmetric(vertical: 10.0),
                     child: Text("@${userCv.sname}",
                         style: Theme.of(context).textTheme.headline2?.copyWith(
                           color: Colors.white
                         )),
                   ),
                   Container(
                     padding: const EdgeInsets.symmetric(horizontal: 20,),
                     margin: const EdgeInsets.symmetric(vertical: 10),
                     decoration: BoxDecoration(
                       color: const Color(0xffffffff),
                       borderRadius: BorderRadius.circular(30),
                     ),
                     child: TextButton(onPressed: _navigateToSecondScreen,
                         child: Text("Edit CV",
                           style: Theme.of(context).textTheme.bodyText2?.copyWith(
                               color: const Color(0xff410603),
                               fontWeight: FontWeight.w600
                           ),)),
                   )
                 ],
               ),
             ),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Text("CURRICULUM VITAE",
                        style: Theme.of(context).textTheme.bodyText2?.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 20
                        ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text("Full Name: ",
                              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),),
                          ),

                          Text(userCv.fname,
                            style: Theme.of(context).textTheme.bodyText2?.copyWith(
                                color: const Color(0xff410603),
                                fontWeight: FontWeight.w600,
                                fontSize: 18
                            ),)

                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text("Slack Name: ",
                              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),),
                          ),

                          Text(userCv.sname,
                            style: Theme.of(context).textTheme.bodyText2?.copyWith(
                                color: const Color(0xff410603),
                                fontWeight: FontWeight.w600,
                                fontSize: 18
                            ),)

                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text("Github Handle: ",
                              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),),
                          ),

                          Text(userCv.ghandle,
                            style: Theme.of(context).textTheme.bodyText2?.copyWith(
                                color: const Color(0xff410603),
                                fontWeight: FontWeight.w600,
                                fontSize: 18
                            ),)

                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text("Bio ",
                              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),),
                          ),

                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(userCv.bio,
                              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16
                              ),),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
