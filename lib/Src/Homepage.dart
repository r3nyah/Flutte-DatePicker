import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Homepage extends StatefulWidget {
  //const Homepage({Key? key}) : super(key: key);
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController dateinput = TextEditingController();

  @override
  void initState(){
    dateinput.text = '';
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'DatePicker on textfield',
        ),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        height: 150,
        child: Center(
          child: TextField(
            controller: dateinput,
            decoration: InputDecoration(
              icon: Icon(Icons.calendar_today_outlined),
              labelText: 'Enter Date',
            ),
            readOnly: true,
            onTap: () async{
              DateTime? pickedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2101),
              );

              if(pickedDate != null){
                print(pickedDate);
                String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                print(formattedDate);

                setState((){
                  dateinput.text = formattedDate;
                });
              }else{
                print('Date is not selected');
              }
            },
          ),
        ),
      ),
    );
  }
}
