import 'package:flutter/material.dart';
import 'package:stage_one/cv.dart';

class HomeEdit extends StatefulWidget {
  const HomeEdit({ required this.userCv});
  final userCv;

  @override
  State<HomeEdit> createState() => _HomeEditState();
}

class _HomeEditState extends State<HomeEdit> {

  var fname;
  var sname;
  var ghandle;
  var bio;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          automaticallyImplyLeading: false,
          elevation: 0,
          centerTitle: true,
          title: Text("Edit CV",
            style: Theme.of(context).textTheme.bodyText2,)
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
        child: Form(
          autovalidateMode: AutovalidateMode.always,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                child: Text("Full Name: ",
                  style: Theme.of(context).textTheme.bodyText2?.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: TextFormField(
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      // color: ColorUtils.Grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                  onChanged: (value){
                    fname = value;
                  },
                  initialValue: widget.userCv.fname,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                            color: Colors.transparent)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                            color: Colors.transparent)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                            width: 0.5, color: Theme.of(context).primaryColor)),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                child: Text("Slack Name: ",
                  style: Theme.of(context).textTheme.bodyText2?.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: TextFormField(
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      // color: ColorUtils.Grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                  onChanged: (value){
                    sname = value;
                  },
                  initialValue: widget.userCv.sname,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                            color: Colors.transparent)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                            color: Colors.transparent)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                            width: 0.5, color: Theme.of(context).primaryColor)),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                child: Text("Github Handle: ",
                  style: Theme.of(context).textTheme.bodyText2?.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: TextFormField(
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      // color: ColorUtils.Grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                  onChanged: (value){
                    ghandle = value;
                  },
                  initialValue: widget.userCv.ghandle,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                            color: Colors.transparent)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                            color: Colors.transparent)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                            width: 0.5, color: Theme.of(context).primaryColor)),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                child: Text("Bio ",
                  style: Theme.of(context).textTheme.bodyText2?.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: TextFormField(
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      // color: ColorUtils.Grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                  onChanged: (value){
                    bio = value;
                  },
                  maxLines: 10,
                  minLines: 5,
                  initialValue: widget.userCv.bio,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                             color: Colors.transparent)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                             color: Colors.transparent)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                            width: 0.5, color: Theme.of(context).primaryColor)),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  ),
                ),
              ),


              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20,),
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            width: 1, color: Color(0xff410603)
                          )
                        ),
                        child: TextButton(onPressed: (){
                          Navigator.pop(context, widget.userCv);
                        },
                            child: Text("Cancel",
                              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                                  color: const Color(0xff410603),
                                  fontWeight: FontWeight.w600
                              ),)),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20,),
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                            color: const Color(0xff410603),
                            borderRadius: BorderRadius.circular(30),
                        ),
                        child: TextButton(onPressed: (){

                          var userCv = CV(
                            fname : fname ?? widget.userCv.fname,
                            sname : sname ?? widget.userCv.sname,
                            ghandle : ghandle ?? widget.userCv.ghandle,
                            bio : bio ?? widget.userCv.bio
                          );

                          print(userCv.fname);
                          print(userCv.sname);
                          print(userCv.ghandle);
                          print(userCv.bio);

                          Navigator.pop(context, userCv);
                        },
                            child: Text("Save Edit",
                              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                                  color: const Color(0xffffffff),
                                  fontWeight: FontWeight.w600
                              ),)),
                      ),
                    )
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
