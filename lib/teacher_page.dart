import 'package:flutter/material.dart';

import 'modal.dart';

class TeacherPage extends StatefulWidget {
  const TeacherPage({Key? key}) : super(key: key);

  @override
  State<TeacherPage> createState() => _TeacherPageState();
}

class _TeacherPageState extends State<TeacherPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(leading:Padding(
      padding: EdgeInsets.all(16.0),child:Image.asset('images/skill_astra_logo.png',)),leadingWidth: 750,title:Column(
              children: [
                Text('Teacher Name',style: TextStyle(color: Color.fromARGB(255, 250, 152, 5),fontWeight:FontWeight.bold ),),
                SizedBox(height: 5,),
                Text('Mobile Number',style: TextStyle(color: Colors.orange,fontWeight:FontWeight.bold ),)
              ],
            ), flexibleSpace: Image(
          image: AssetImage('images/color.png'),
          fit: BoxFit.cover,
        ),toolbarHeight: 150,actions: [Image.asset('images/robo.png',fit: BoxFit.fitHeight,)]),
            body: SingleChildScrollView(
              child: SizedBox(
                width: 280,
                child: Column(
                    children: <Widget>[
                      
                      const SizedBox(height: 400),
                      Align(
                        alignment: Alignment.center,
                      child:Text("Tasks Batches")),
                      ListView.builder(
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
                            
      
                    ]),
                    
              )
              
            ))
            );
  }

  Widget taskBatch({required CardItem item}) => Container(
    margin: const EdgeInsets.fromLTRB(15.0,0,0,0),
    
        height: 120,
        
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 252, 242, 236),
          border:
              Border.all(color: Color.fromARGB(255, 252, 226, 209), width:3 ),
          borderRadius: const BorderRadius.all(Radius.circular(15)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(
                height: 50,
                // color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0,10,0,0),
                  child: Row( children: [
                   
                     const SizedBox(
                        height: 80,
                        width: 40,
                        child: Image(
                          image: AssetImage('images/img.png'),
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    const SizedBox(
                        width: 10,),
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
                    
                  ]
                  ),
                ),
              ),
              
                 Align(
                  alignment: Alignment.topRight,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('View All',style: const TextStyle(
                              fontSize: 10)),
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(70, 30),
                        primary: Color.fromARGB(163, 252, 156, 46))),
                ),
              
            ]),
            
          
        )
        );
// Widget TopSection(BuildContext context){


// }

}
