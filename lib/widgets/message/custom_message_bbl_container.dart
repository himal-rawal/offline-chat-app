import 'package:chatapp/constants/constant.dart';
import 'package:chatapp/model/combined.dart';
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

///this container used in chat bubble widget and urlpreviewmsg
///in error widget
class CustomMessageContainer extends StatelessWidget {
  final bool isMe;
  final bool continuousMessage;
  final Combined message;
  const CustomMessageContainer(
      {required this.continuousMessage,
      required this.isMe,
      required this.message,
      super.key});

  @override
  Widget build(BuildContext context) {
    final DateTime time = DateTime.parse(message.updatedat ?? "");

    return Container(
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
      decoration: BoxDecoration(
          color: isMe ? Colors.blue[100] : Colors.grey[300],
          // Here we checked if  two messages are continious and send within timespan of 2 min
          //give border radius to container
          borderRadius: isMe
              ? continuousMessage
                  ? bottomLeftBorderRadius
                  : topLeftBorderRadius
              : continuousMessage
                  ? bottomRightBorderRadius
                  : topRightBorderRadius),
      child: Column(
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(
            message.message ?? '',
            maxLines: 3,
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
          SizedBox(height: 4.0),
          Text(
            "${timeago.format(time, locale: 'en_short')} ago",
            style: leadingTime,
          ),
        ],
      ),
    );
  }
}
