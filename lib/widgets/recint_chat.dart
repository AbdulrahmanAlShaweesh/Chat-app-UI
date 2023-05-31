import 'package:chat_app_ui/models/messages.dart';
import 'package:flutter/material.dart';

class RecintChat extends StatelessWidget {
  const RecintChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ClipRRect(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)),
          child: Container(
            
            color: Colors.white,
            child: ListView.builder(
              itemCount: chats.length,
              itemBuilder: (context, index) {
                 return Container(
                  decoration: BoxDecoration(
                    color: chats[index].unread? Color(0xFFFFEFEE):Colors.white, 
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20), 
                      bottomRight: Radius.circular(20) 
                    )
                  ),
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15), 
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Expanded(
                         child: Row(
                            children: [
                               CircleAvatar(
                                radius: 30,
                                  backgroundImage: AssetImage(chats[index].sender.imageUrl),
                               ),
                               Container(
                                margin: EdgeInsets.only(left: 10),
                                 child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(chats[index].sender.name, style: TextStyle(fontSize: 18, color: Colors.grey.shade600),), 
                                    SizedBox(height: 10,),
                                    Container(
                                      width: 228,
                                      child: Text(
                                        chats[index].text, overflow: TextOverflow.ellipsis,style: chats[index].unread? TextStyle(
                                          fontSize: 15,  
                                          fontWeight: FontWeight.bold, 
                                          color: Colors.blueGrey
                                      ):TextStyle(
                                        color: Colors.black
                                      ),
                                    ),
                                   )
                                  ],
                                 ),
                               ), 
                            ],
                          ),
                       ),
                        Column(
                              children: [
                                Text(chats[index].time, style: TextStyle(fontSize: 15, color: Colors.grey),),
                                SizedBox(height: 7,),
                                chats[index].unread? Container(
                                  height: 20, 
                                  width: 40,
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.all(2),
                                  decoration: BoxDecoration(  
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: Text("New"), 
                                ) : SizedBox.shrink(),
                              ],
                             )
                     ],
                   ),
                 );
                }
              ),
          ),
        ),
      );
  }
}