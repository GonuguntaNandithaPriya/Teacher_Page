import 'package:flutter/material.dart';

import 'modal.dart';

class TeacherPage extends StatefulWidget {
  const TeacherPage({Key? key}) : super(key: key);

  @override
  State<TeacherPage> createState() => _TeacherPageState();
}

class _TeacherPageState extends State<TeacherPage> {
  List stocksList1 = [
    coursedet(course: 'AI-LEVEL 1'),
    coursedet(course: 'AI-LEVEL 2'),
    coursedet(course: 'AI-LEVEL 3'),
    coursedet(course: 'AI-LEVEL 4'),
    coursedet(course: 'AI-LEVEL 5'),
    coursedet(course: 'AI-LEVEL 6'),
    coursedet(course: 'AI-LEVEL 7'),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
                leading: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image.asset(
                      'images/skill_astra_logo.png',
                    )),
                leadingWidth: 750,
                title: Column(
                  children: const [
                    Text(
                      'Teacher Name',
                      style: TextStyle(
                          color: Color.fromARGB(255, 250, 152, 5),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Mobile Number',
                      style: TextStyle(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                flexibleSpace: const Image(
                  image: AssetImage('images/color.png'),
                  fit: BoxFit.cover,
                ),
                toolbarHeight: 150,
                actions: [
                  Image.asset(
                    'images/robo.png',
                    fit: BoxFit.fitHeight,
                  )
                ]),
            body: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                  menuCard(context),
                  Row(
                    children: [
                     const  Padding(
                        padding:
                             EdgeInsets.fromLTRB(194.0, 15.0, 0.0, 0.0),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: Text("Sessions:",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 250, 152, 5),
                                    fontWeight: FontWeight.bold))),
                      ),
                      Padding(
                          padding:
                              const EdgeInsets.fromLTRB(1180.0, 20.0, 0.0, 0.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: TextButton(
                              onPressed: () {
                                print('VIEW ALL');
                              },
                              child: const Text("View All",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 6, 38, 145),
                                      fontWeight: FontWeight.bold)),
                            ),
                            // child:Text("View All",style: TextStyle(color: Color.fromARGB(255, 6,38, 145),fontWeight:FontWeight.bold))),
                          ))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(170.0, 15.0, 0.0, 0.0),
                    child: SizedBox(
                      height: 190.0,
                      child: ListView.builder(
                        physics: const ClampingScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (BuildContext context, int index) =>
                            topCard(context, item1: items1[index]),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      const Padding(
                        padding:
                           EdgeInsets.fromLTRB(194.0, 20.0, 0.0, 0.0),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: Text("Tasks Batches",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 250, 152, 5),
                                    fontWeight: FontWeight.bold))),
                      ),
                      Padding(
                          padding:
                              const EdgeInsets.fromLTRB(100.0, 20.0, 0.0, 0.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: TextButton.icon(
                                onPressed: () {
                                  print('VIEW ALL');
                                },
                                icon: const Icon(Icons.arrow_drop_down_circle),
                                label: const Text("View All",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 6, 38, 145),
                                        fontWeight: FontWeight.bold))),
                          )),
                      const Padding(
                        padding:
                            EdgeInsets.fromLTRB(80.0, 20.0, 0.0, 0.0),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: Text("Your Courses",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 250, 152, 5),
                                    fontWeight: FontWeight.bold))),
                      ),
                    ],
                  ),
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(170.0, 20.0, 0.0, 0.0),
                      child: SizedBox(
                        height: 400,
                        width: 280,
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemCount: items.length,
                          itemBuilder: (BuildContext context, int index) =>
                              Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: taskBatch(
                              item: items[index],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 400,
                      width: 80,
                      child: VerticalDivider(
                        color: Colors.indigo,
                      ),
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 35.0),
                            child: SizedBox(
                              height: 40,
                              width: 500,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemCount: stocksList1.length,
                                itemBuilder:
                                    (BuildContext context, int index) =>
                                        Padding(
                                  padding:const  EdgeInsets.all(8.0),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      stocksList1[index].course,
                                      style: const TextStyle(
                                        color: Color.fromARGB(255, 4, 52, 136),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width:1000,
                            child: Divider(
                              endIndent: 45,
                              indent: 44,
                              color: Colors.indigo,
                            ),
                          ),
                          Row(
                            children: [
                             const  Icon(
                                Icons.arrow_back_ios,
                                size: 34.0,
                              ),
                              SizedBox(
                                height: 100,
                                width: 850,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  itemCount: batch.length,
                                  itemBuilder:
                                      (BuildContext context, int index) =>
                                          Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: batchSection(
                                      batchItem: batch[index],
                                    ),
                                  ),
                                ),
                              ),
                              const Icon(
                                Icons.arrow_forward_ios,
                                size: 34.0,
                              ),
                            ],
                          ),
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding:  EdgeInsets.only(top:20.0,left: 40),
                                child: Text('Latest Notifications:',style: TextStyle(
                                          color: Color.fromARGB(255, 6, 38, 145),
                                          fontWeight: FontWeight.bold)),
                              ),
                              Row(
                                children: [
                                  notifications(
                                      'assets/images/assignments.png',
                                      "New Batch Start from 10th March at 2.00pm ",
                                      "for More Details Click Here"),
                                  notifications(
                                      'assets/images/material.png',
                                      "You Have Pending Assignments for Verification ",
                                      "for More Details Click Here"),
                                ],
                              ),
                            Row(
                              children: [
                                notifications(
                                      'assets/images/material.png',
                                      "New Batch Start from 10th March at 2.00pm ",
                                      "for More Details Click Here"),
                                

                                      notifications(
                                      'assets/images/assignments.png',
                                      "New Batch Start from 10th March at 2.00pm ",
                                      "for More Details Click Here"),
                              ],
                            ),
                            
                            ],
                          ),
                          
                        ])
                  ]),
                  Align(alignment: Alignment.bottomRight,child:float(),),
                ]))
                ));
  }

  Widget taskBatch({required CardItem item}) => Container(
      height: 120,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 252, 242, 236),
        border: Border.all(color: const Color.fromARGB(255, 252, 226, 209), width: 3),
        borderRadius: const BorderRadius.all(Radius.circular(15)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(children: [
          SizedBox(
            height: 50,
            // color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Row(children: [
                const SizedBox(
                  height: 80,
                  width: 40,
                  child: Image(
                    image: AssetImage('images/img.png'),
                    fit: BoxFit.scaleDown,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.title,
                      style: const TextStyle(
                          fontSize: 16,
                          color: Colors.indigo,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      item.subtitle,
                      style: const TextStyle(
                          fontSize: 10, color: Colors.indigoAccent),
                    ),
                  ],
                ),
              ]),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: ElevatedButton(
                onPressed: () {},
                child: const Text('View All', style:  TextStyle(fontSize: 10)),
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(70, 30),
                    primary: const Color.fromARGB(163, 252, 156, 46))),
          ),
        ]),
      ));
  Widget topCard(BuildContext context, {required CardItem1 item1}) =>
      Column(children: [
      
        Container(
          height: 155.0,
          width: 310.0,
          // padding: const EdgeInsets.all(10.0),
          margin: const EdgeInsets.only(left: 20),
          decoration: BoxDecoration(
            color: item1.color,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            children: [
                const SizedBox(height: 5.0),
              const SizedBox(height: 2, width: 5),
              Text(item1.title,
                  style: const TextStyle(fontSize: 18, color: Colors.white)),
              const SizedBox(height: 5, width: 5),
              Text(item1.subtitle,
                  style: const TextStyle(fontSize: 18, color: Colors.white)),
              const SizedBox(height: 5),
              const Divider(
                  thickness: 2, indent: 15, endIndent: 15, color: Colors.white),
              const SizedBox(height: 5),
              Row(
                children: [
                  const SizedBox(width: 20),
                  Column(
                    children: [
                      circleImages('images/assignments.png', 'Live Sessions'),
                      const SizedBox(
                        height: 6,
                      ),
                      const Text(
                        "Live session",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(width: 55),
                  Column(
                    children: [
                      circleImages('images/material.png', 'Materials'),
                     const SizedBox(
                        height: 6,
                      ),
                      const Text("Materials",
                          style: TextStyle(fontSize: 10, color: Colors.white)),
                    ],
                  ),
                  const SizedBox(width: 55),
                  Column(
                    children: [
                      circleImages('images/assignments.png', 'Assignments'),
                      const SizedBox(
                        height: 6,
                      ),
                      const Text(
                        "Assignments",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        )
      ]);

  Widget menuCard(BuildContext context) => Column(children: [
        SingleChildScrollView(
          child: Container(
            height: 45.0,

            // padding: const EdgeInsets.all(10.0),
            // margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color.fromARGB(159, 139, 85, 23),
              borderRadius: BorderRadius.circular(0.0),
            ),
            child: Row(
              children: [
               const SizedBox(width: 190),
                // Text("DashBoard",style:TextStyle(color:Colors.white,fontSize: 14,fontWeight: FontWeight.w500)),

                tabs('Dashboard'),
               const SizedBox(width: 50),
                // Text("Assignments",style:TextStyle(color:Colors.white,fontSize: 14,fontWeight: FontWeight.w500)),
                tabs('Assignments'),
               const SizedBox(width: 50),
                // Text("Assignments",style:TextStyle(color:Colors.white,fontSize: 14,fontWeight: FontWeight.w500)),
                tabs('Attendance'),

               const SizedBox(width: 50),
                tabs('Calender'),
               const SizedBox(width: 50),
                tabs('Chat'),
              ],
            ),
          ),
        ),
      ]);
  Widget tabs(String text) {
    return TextButton(
      onPressed: () {
        print('$text');
      },
      child: Text(
        text,
        style: const TextStyle(
            color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
      ),
    );
  }

  Widget batchSection({required BatchItem batchItem}) => Container(
        width: 120,
        decoration: const BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(32, 0, 0, 0),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20, width: 0),
                  Column(
                    children: [
                      Text(
                        batchItem.title,
                        style:  TextStyle(fontSize: 10),
                      ),
                      Text(
                        batchItem.subtitle,
                        style: const TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ]),
        ),
      );
  Widget notifications(String url, String title, String subtitle) {
    return SizedBox(
      height: 110,
      width: 450,
      child: Card(
        margin: const EdgeInsets.all(15),
        shape: const RoundedRectangleBorder(
            side:  BorderSide(color: Colors.lightBlue, width: 2),
            borderRadius:  BorderRadius.all( Radius.circular(10))),
        child: Row(
          children: <Widget>[
            // const Padding(
            //   padding: EdgeInsets.only(left: 20),
            // ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20,0,0,0),
              child: CircleAvatar(
                backgroundImage: AssetImage(url),
                // backgroundImage: const AssetImage('assets/images/note.jpg'),

                radius: 27,
              ),
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Padding(
                  padding: const EdgeInsets.fromLTRB(20,20,0,0),
                  child: Text(
                    title,
                    // "New Batch Start from 10th March at 2.00pm ",
                    style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20,5,0,0),
                  child: Text(
                    subtitle,
                    //"for More Details Click Here",
                    style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  Widget circleImages(String url,String text){
    return InkWell(
                        child: CircleAvatar(
                          radius: 20.0,
                          backgroundImage: AssetImage(url),
                              //'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUSFRgSFRYYGBgSGBgYGBIYGBISGBgSGBgZGRgYGBkcIS4lHB4rIRgYJjgmLC80NTU1GiU7QDszPy40NTEBDAwMEA8QHBISHzErISExPzE0NDQ3MTQ0MTRAPz03MTU0NDYxOjQ0NDE2NDE0NDQ0NDQ0NDQxNDE0MzE0MTQ/Mf/AABEIALsBDQMBIgACEQEDEQH/xAAcAAEAAQUBAQAAAAAAAAAAAAAABgECAwUHBAj/xABTEAACAQIDAgcJCwcLAgcAAAABAgADEQQSIQUxBgcTQVFSkSJhcYGSscHR0hQXMkJTVGKTobLCFiMzY3Kj8BUkNENEZHOCorPhlKQlVXSDw9Pj/8QAGgEBAAIDAQAAAAAAAAAAAAAAAAEEAgMFBv/EAC0RAQABAwIDBgUFAAAAAAAAAAABAgMRBFEFIaETFDFBYZESFVJxgSIjJDIz/9oADAMBAAIRAxEAPwDs0REBERAREQEREBERAREQEREBERAREQEREBERARKXlAbwLoiICIiAiIgIlLysBERAREQERLKjBQWO4Ak+AawL4kMXjKwBAOarrr+hq+qZV4xcAfj1Pqa3swJdEia8YWzz/Wv9VX9mZRw82f8AOLeGnXH4IEniRn8u9nfOR9XW9iVHDrZ3zlPJqD8MCSxI4OG+zz/aqfjLDziXjhls8/2uj43UeeBIImiHC/Z/z3DeOtSHnMu/K3Z/z7C/9RQ9qBu4mnHCjAndjMMfBXoH8UyLwgwh3YrDnwVqJ/FA2kTwDa+HO6vSPgqUz6ZlXH0juqIfA6H0wPVEwe6U66+UvrlVxCk2DKSeYEGBmiJCeGPCUUiMNTezNrUdTqqdUHmJO87wL8+oC/hltkFHw6N8NaiswO+1Ko2VfGBc+KcbSqx1zHUnQEgDU6D+OaTjE1FcK45rgeBwQZAF3AgXIN7XtvBG/wDzQPYtVuZ38oy4YuoN1Rx/mM8qu3QfKEyXPVbtX1wPSm0q43V6o8DsJnTa+JG7E1x4KtQema3Ow+K/antTKtc9R+2n7cDY/wAt4z51iPrqvtS9dv40f2qv46lQ/imuFU9Ru2n7cqXO7KwvbqdI6GgdV4rtq1cRSris7O9OtYMxLHk2poVGu7XNJ1OZcULd3jF7+HYeS4J+wTpsBERAREQE1+3KvJ4au/Uo1Gv+yjH0TYTScM2tgMYf7riO00mAgcE2dheUdEuRcbxruUnnm5/J4ddvJWebg4l64HQjnsFvTJgtGdLSWrdVEzVGZy4fEdZcs3oppnEYRn8nfpnyF9ctPB081T/Rf8clhoyi0ZZ7vY2UI4pe+roiR4OP8qPqz7cDg4/yy/VN7cl7UZVaMx7tY26so4pf36QiI4Ov8qv1bj8cuHB+p8onkVB+KS0UZU0ZHdrO3Vl80vb9ERPB+r108mp65a3B+r107KnqkySlLXoyO62duqfml7fohh4P1etT7ansyw8H6vTT7ansSarShqMd1s7dU/NL28eyEng9U/V+U/sSh4PVerT8o+xJqKUuNCO62duqY4rd3j2QccHqnUp+UPYmbgwop43DnKARXRdAN5bKdfGZL+SkMwJy42l3sZTH/cqJU1Vmm3ETT5ujw/WVX6pirHJ1nhVwiNE+56dw5ALPuyq17BfpG2/m8MgOMoJU7pdG882vDyrbGuP1dP8AFI/yvRKbpsNF2Rwh3Fh6ZHVG/wDjmEktSre194K2P+YSMs9if2wO0gemBlVT0eaZArdH3fXMYqW5v47JcK56P47IDuu/9nrmZEPV+765hNU9H8dkvTEno/jsgZXpXFipsf45jC0QOZ/GXb7CTKCuegyhrd4wJ1xStbE4ldRemja6bmt6TOrzj3FZVtjnHymHv2PedhgIiICIiAkb4wGts7FfSpFfKIX0ySSLcYz22fX+lya+M1Ugcn4KLfEX6Ef7SkmyCQ3geL1n71M/a6eqTVZ1NLyt/l5LjE51M+kQtcyqCWEzMolifBzIhY8vQTG0yoNInwTEcwb5VxKLvl7iRlOOS2nFRZVBMjJEzzZRTyYEEudZVVmUppImrmmKeTyWmRBKskIJMzljFMrGWQFmyY1T1MWjdmIVp0R1nNdsNkxNQ9SrfsYNKernNMfd2uDRi7VHomHGF/Tn/wAOn+KRU1NbX1G8SWcP1vjX/wAOn5mkQdbEdtra91f4XRrbyZQejXmp5x94TTsLlgR8YzZ+secTWMBma/WPngWcgvVHYJcKKdVewSth0CVAHQIFppJ1V7BLlpr1V8lTBA6JelugQLuSW2irfm7kb4VOlEtz2Lbu8LTIMvQPtg26PPAlPFrVA2ko61CoB4mUztU4RwCcLtTC20ziuvPr+aLfhnd4CIiAiIgJDeNN7YB+/Uoj94p9EmUg3GzUtglXr1kHYGb0QOfcCxepVPQifa7ezJixkS4EL3VY96kPtqn1SVOZ1dL/AJx+XkOKz/Kq/Asyk6TGkvczfPi58LJnXdPOs9K7oqZUwou+ZiJhXfPRzTXVLZTSsQTMUliCepVmFVTfboy8wpzMKczokzCnNdVaxTYa16UxlJs3pzzOkypry112Ih5rTl/CcWxGJHQ7H/QremdTbScw4XD+c4rxHtoUzNOp/rH3XuE4i9MeiXcYTWxjnX9HTNxv3NukRL2JHcgc1uroSW8QFj3z0yTcN618Rmva9Cg1+i6k3kUVrMcqjXeuiELfS4O8+g9+UnoHoaaep8N/2j5zNq3P45qq/wAN/wBr0tAXi8tiBUtLkMxmVUwPSglSsxo8uzwNzwMfLtPBn9ZUXyqLrO/z534MvbH4M9GIQeV3Ppn0RAREQEREBOd8cbfzbDjpxP2CjV/4nRJzPjkq9xhafWeo/kIq/wDyQIzwMFkqnpZB2Kx/FJEXkb4JNam/ff8AAs3gedjTU/tw8hxCn4tTXPq9iGUd5hDy0vN0U81T4HoRpnDaTwo8y55FVKYpw9CvrM4ea8PMivMZpTGfJ7FeehKs1nKTItaYVUNtHxR4toteZRiZpzWgV5hNrKxF7DbvXnnerPDy5ljVpNNrDCq7NXk9bPOb8LV/nVb6QQ/uUHok7NSQXhR/SX76U/uAeiadVTiiPuu8Lme3nl5S3XCu5qof7rht+74B3yNkG977zzDKdT8bv5sokh284d6R62Fwv+3NLrffrrew36W1HNY2A7wnPehYm5/AZrsT+kfw+kzasND4D5pq8X+kfxemBhqMRuAPhJmNKpPxQPDmEvcX7D3uiYqFMqdQBpzeLvwM/Jv1D5FY+iOTfqHyK3szIK7AW7ntf2o90N9H/X7cCyzj+rPZXH4Ypvc2KgaHUM56Jc1diLXGv7ftzFzg+HogbbYBAxmEP96o85PxxPo2fNGyqlsThj0Yigf3iz6XgIiICIiAnKeOY/nMGOhMSftw49c6tOQ8cT3xGHHVoufKdPYgaTg61qZ77n7qj0TbrUmh2NVC07Egd028gT3jFL118pfXO9p/h7Knn5PNaq1VVeqnHm2RqygqTwe6066+UvrlRik66eUvrm39O8NHYVbS2SvLuUmuGLTrp5S+uV91p108tPXImad4O71T5S2AqS8VZrPdaddPLX1yvu1Ounlr65EzRvDLsKtpbI1JUVJrPdqddPLT1yvu1Ounlp65GaN4T3eufKWyNWU5Wa73anXTy09coccnXTy09cjNG8e5Gnq+mfZtBVlDUmsGPp9dPLT1wdoU/lE8tfXGaN492XYV/TPs2XKSI8JD/OL/AEE87D0Td/yhT+UTy1mg25UV6oZWDDIouCCLhnNvtlXWTTNvlMeK7oLVVF3MxPg31bBPUTDVApIbCYbXvhCPRPL/ACU41yWvvOkl2y7e5cL3sLSHYXHoltYzlO0iLbNex7k7j5pHtpplrup3jL90ToNY6HwGQThCf51V8K/dWB4DKoLm2ut9wBOik7iR0dPbLb+DtEqj2IOh36WpvvBHwX7k7/FvGsifDkmOctvwewdGo+avmKajIjKjE2BLZiDoMw05zzi2uXhVsujQqKcM5enUsArZS6ORfLm0uDY79xG83082w9te5gVZS6Mb2HJsQ1gLgORfcNxHjl+3Nu+6QiImRabZ7nkw5qAEKe5JAAuTv3ntlDDtPZr4cIzPTcVVuCjZ8rDejgqCG+w2Os8Gf+LCenaG2K2ICrUZCENwFVEu1rZm79rjSw13TxX8HaIHowz/AJyl3q9H/cSfTk+YMMfzlP8AxaXOPlFn0/AREQEREBOa8ZHBvFYzEU3oUs6rTyk50WzZmJBDEcxE6VKQOD/kDtD5v+8oe3KjgDtD5v8AvKHtTvERkcIHADaHzcfWUPalw4v9o/Nx9bQ9qd1iMmHCve/2j8gv1tD2o97/AGh8gv1tD2p3WIyYfPe3ODOKwVFsRiKWVEKgsr0nN2OUaBr7zIx/K1PofyR653jjZpZtl4j6ORux1nzdaDDcHa9Pqv5K+ubXg9hn2hUNHDoXdULkMUQZAyqTdm6WWRK06PxFj/xCp/6V/wDdoQPT73+0fkE+upSvve7R+RT66nO5xA4b73u0fkU+up+qPe92j8kn1yeqdyiBw08Xm0T/AFVP69fZlw4u9ofJUtf1w9mdwlCYHPcPgnw1GlQq2z06SqwU5gCXdrA2F9GA3Tz1jNhwnxWXEOCwtkpkC4uPh3Pm7JoqmKB54FKzaHwGQfhD/San7S/cWS6viBY+A+aRTbRBruekj7qwNUYvM9hNdialnYZ3FjuCtbxWI0gem8peePlfpv5L+1Kcr9Op5LeuB7ovNazm/wAOt4gQPPNxTHcrv3D4Wh3c46YFcEfziftp94T6cE+acNo695l84n0qu6BdERAREQERPJj8alBDUqMFVd5Nz4gBqx7w1MD1xIHiOMRFfIlBmQsqrVL8mGBYDRSt8xBJC7zbml+O4wqSMq0qb1AQxJbNR+Db4KspLDXf54E5ic3fjJaxIwhLALdOVbNmIOluT7zWvbS17XtPPtDh81am9P3PlWoroaiVS+Qi4JINMC28b73tprcBN8bwlwlEkPXS43quao3koCZr6nDrCD4PKP3xTZfv5ZydXZRcuuXuQCUdQxbcFZdB8XeOeXcprlK2JzWW5DNl51FiO0g7tNDA9vGJw7evyuEpgijUpoCGVc2a+Y2Iv0DnnM+SHSfskwxtJHOVks7BR8Ih1vbnIyW39PjmpbZ9tCSCN/c3AINiOnp5oGl5MdJ+z1Ta8HttVcBUatQbK7U2S5APcllbo6UWZRs5esfJFvFrPRgMCmfVQ91sKbFae8i5HSQAdIHYMDxiUyiZ6VTNlXMw5MgtlFyBmHPPfT4e4Q6Mzp32puw/0Zpy1HvoEWw7kAsynQCxF11Hg6OfmxOGzFM+tg4ycmllLEW7oOTqLXsIHcMNtWnVXPTdXU6ZlNxfnB6DruMvbFHpnHeD22XwYqrTXPmds3KuzNygSyABQFAN0PgJGnNt6fD2tlzmlRK5c1gaymwFzzmx5rW0gdGfEnpmB6pMh68Pkyhzh2ym3dCqpAB3EnINN2vNz88vfh4gYL7mbur6tUA3bwO41NtbG3P0GB6tu0VqPZ1BGVfEbbwRqPFIljtkutzTJb6DEBvEdAfsPhkg/K7DVKlno1EF7M5ZGCprlfKBqD3j084tJHgcHhcSuelUDrexZeZt+VgdVOu42MDkWJrsqupBDhbBSDcMSBe3bNfjHu7npI+6J2rHcEcPVWzhjbcRYMPAd4kbxPFejOzLinAJ0U0qbnm+MGF+yBzPNPNVw5ZieUdb/FB0H2ydbT4G4TDNlqY9gw1NMU6RYDvjN3PjN5qm2NhgudXxTqTbMiYbm8LwIx7lPyr9p9ce4z8q/b/zJ1svglhcQci4mujm35t6dOmxvzKbFWPeBvz2m397Gn84r9lD2IHLDgP1tTt/5nsQWAFybAC51Jtznvzo44saXy+I/wC39iZF4sKPy+J7cP8A/XA5xSbuh4R559KUnFhOcUuLDDAgmtiTYg2zYcA2O7SledJWmBAvlZSVgIiIGm2zttMP3N1NRhdUZlSy3tma5va992+3jnKtrY7HYljUdELAEKOXpZBvtlXPoOnXXnk/4bcE2x+R6TinVpgqrsCVKEglXA3i4uOi58BiS8XO0R/aMP21x+GBHGw+JKrmw6lgPhqyuc1vhLZjlOuhW3emGlhcTlUPRJdVCl7OGI0uMw1toNxF7ayVji92j84w/lV/Zl3vf7R+cYftqn8ECJU8Nid7UhmuWJVStzra5FswAPPeZEwtcf1FhYjKNF1IJumWxJtvOslPvf7S+cYb977Er73+0vnGG/e+xJyjCLrhK2v5nfbQsCBbdlBWy2tzSq4Ota3JdOpfMe6vezEXF78xkmHF/tL5xhv3/sy4cX+0efFUB/lqmMowir7OrEZQigafH1NjcXNwT455l2LXuTlS1yQMyjQgXvrrr4ZOF4u8cd+NpDwUXP4xMi8W+K58eo8GGJ89WMpwgi7DrXN8ltLLnUAW717b5nw2zK9PNZ6dmt3Je+oFuYyani1xP/mI/wCl/wD1mROLSr8fHuf2aKL53MgwhQwGIuTylMg2st9ARe5Fum4lKmyHbKWNIspOpAYZGAGWx03gHW+6Tr3sQd+OxHiWiPODKe9cnz3E9lH2YEEpbIqozMrUlzBQVUU1F1vY2HPY28UtXY1QEktRuWLAlaJKk77E7tbnTpk+969fnuI8ml6o97EfPsT4lo+lYMIIuyXAKh6YQ/EOR1FwMwsb6E3Nu/LquyKjqUNemt9xVB3LA3BGVRqPDJ4OLJOfG4r9wPwSo4safPjMUe9egPwQlA62yXLKeWSyG9ghFwQQVJ3kag633CenAYitgn90JWVmAANMkqtVBuRhbU8ymxIJ05wZynFlhfjVcS3/ALuT7qiZ8Lxb4Cm61MtVmU3GatUax6bXgSWm4Yafx3p4NvjENQqLhrLWZLJUY2CsbXO462vbQ62m2o4ZUGVRYDvk+eZcggfO2P4M4+izO9Cs1yS1VCa+YnUsShLeMiYMDtipQcK5a27I11YLfWynX7J9H8mJ5sXs+jWUrUppUU71dFcHxMIHFamMFRDlYMvcsBoQASR4Qbi/euZLuA3Ch6jjB1WznIzJUJu4CWurne2h0Y66WN73kq/JDZ97+4sN9RS82We7BbHw9D9DQpU778lOnT+6BAygeCZFpzJl8HZLoGMU5liICIiAiIgIiICIiAiIgIiICUlYgJS0rEBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBIptPHOK7qarU1pZctlZhYqpzGxtvJ+FcECwsQTJXPNUw6MczIpZL5WKglfATuganF4qozKnKjD/AJjlWOWmxLbmHd3GRNM1hful1HP5H4TMGIVUqDIxVlNRAXVaRIOZbC5qHQEkWF9+kgr4WnVsKiI4XUBlVrN0i40Ms9w0ixc00LNa7lFLHm1NrnSBoNobVr6kME5IVs4p8k7fm2AVytW2ana+YKQ17WmX+W6ilrhGCl6lyWQmgHRVCi2r90d/0Rz6byvgaT/Cpo2U5hmRWs/WFxv78oMFSbujTQtmz5iiE5/g5r2+FYAX70CO4rhLUVUqBFKuSwRWzPyYWt+kUi6WNMEkX3MBcjW3F4/FZ670y5SiW1IwpoBBhle6n9KWzNz6a9EkqYOkpzCmgLnMxCqCX3ZibamxOvfly0EVcoVQp0KgAKRotiN24AQI8/CGpTDKyJnpI9RjnZVZKdOlUYL3Pwjytrbu5JlcPt6oL5lU5aj5iSUbk2xT0KaqttWAXXxc5m9q4Om3wqaGxzC6KbOuisLjQgAC8HA0swfk0zKS4bKtw7b2BtvNhr3oGr2jt00mqEKpSgADd8rlzTaoMgtYrYAHXmY/F1wVtv1lLoKdNnpZ855RghyCgwCnLfUVxvGhUzd+4qS2YU0DIpRWCKCKfVBtovelaeCpIuVaaKF0ChVAANiQAB06wLNm4pqisXUKyO6EKSwORitxcA62vPdMSKF3AC9ybADXpmWAiIgIiICIiAiIgIiIH//Z'),
                          backgroundColor: Colors.transparent,
                        ),
                        onTap: () {
                          print('$text');
                        },
                      );
  }

  Widget float() {
    return FloatingActionButton(
      onPressed: () {
        // Add your onPressed code here!
      },
      backgroundColor: Colors.orange,
      child:const Icon(Icons.message),
    );
  }
}
