import 'package:flutter/material.dart';
import '../VariablesDataRoutineClass.dart';
import 'MainAddnewTaskPage.dart';


class AddNewTaskPageWidget extends StatefulWidget{
  @override
  State<AddNewTaskPageWidget> createState() => _AddNewTaskPageWidgetState();
}

class _AddNewTaskPageWidgetState extends State<AddNewTaskPageWidget> {
  //const AddNewTaskPageWidget({super.key});
  @override
  Widget build(BuildContext context){
    VariableData variableData = VariableData(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 100),
              child: Stack(
                children: [
                  PhysicalModel(
                    elevation: 5,
                    shadowColor: Color.fromARGB(255, 245, 245, 245),
                    color: Color.fromARGB(150, 112,76,230),
                    shape: BoxShape.circle,
                    child: SizedBox(
                      width: variableData.screenHeight()*0.06852,
                      height: variableData.screenHeight()*0.06852,
                    ),
                  ),
                  Container(
                    height: variableData.screenHeight()*0.06852,
                    width: variableData.screenHeight()*0.06852,
                    //color: Colors.blue,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(150, 112,76,230),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: (){
                        AddNewTaskPageVer1(context);
                      },
                      icon: const Icon(
                        Icons.add,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}










