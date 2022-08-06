import 'package:flutter/material.dart';
import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:audioplayers/audioplayers.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  Duration duration = new Duration();
  Duration position = new Duration();
  bool isPlaying = false;
  bool isLoading = false;
  bool isPause = false;
  @override
  Widget build(BuildContext context) {
    final now = new DateTime.now();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'چت با پشتیبانی',
          style: TextStyle(fontFamily: 'IransansDn'),
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                // BubbleNormalAudio(
                //   color: Color(0xFFE8E8EE),
                //   duration: duration.inSeconds.toDouble(),
                //   position: position.inSeconds.toDouble(),
                //   isPlaying: isPlaying,
                //   isLoading: isLoading,
                //   isPause: isPause,
                //   // onSeekChanged: _changeSeek,
                //   // onPlayPauseButtonClick: _playAudio,
                //   sent: true,
                // ),
                BubbleNormal(
                  text: 'سلام بفرمایید',
                  isSender: false,
                  color: Color(0xFF1B97F3),
                  tail: true,
                  textStyle:
                      TextStyle(color: Colors.white, fontFamily: 'IransansDn'),
                ),
                BubbleNormal(
                  textStyle: TextStyle(fontFamily: 'IransansDn'),
                  text: 'سلام خسته نباشید',
                  isSender: true,
                  color: Color(0xFFE8E8EE),
                  tail: true,
                  sent: true,
                ),
                DateChip(
                  date: new DateTime(now.year, now.month, now.day - 2),
                ),
                BubbleNormal(
                  text: 'متشکرم',
                  isSender: false,
                  color: Color(0xFF1B97F3),
                  tail: true,
                  textStyle:
                      TextStyle(color: Colors.white, fontFamily: 'IransansDn'),
                ),
                BubbleNormal(
                  text: 'یه سوال داشتم خدمتتون',
                  textStyle: TextStyle(fontFamily: 'IransansDn'),
                  isSender: true,
                  color: Color(0xFFE8E8EE),
                  tail: true,
                  sent: true,
                ),
                BubbleNormal(
                  text: 'در خدمتم',
                  isSender: false,
                  color: Color(0xFF1B97F3),
                  tail: true,
                  textStyle:
                      TextStyle(color: Colors.white, fontFamily: 'IransansDn'),
                ),
                DateChip(
                  date: new DateTime(now.year, now.month, now.day - 1),
                ),
                BubbleNormal(
                  text: 'نهایت تخفیف محصولات چقدره؟',
                  textStyle: TextStyle(fontFamily: 'IransansDn'),
                  isSender: true,
                  color: Color(0xFFE8E8EE),
                  tail: true,
                  sent: true,
                ),
                BubbleNormal(
                  text: 'سه درصد',
                  isSender: false,
                  color: Color(0xFF1B97F3),
                  tail: true,
                  textStyle:
                      TextStyle(color: Colors.white, fontFamily: 'IransansDn'),
                ),
                BubbleNormal(
                  text: 'ممکنه بیشتر هم بشه؟',
                  textStyle: TextStyle(fontFamily: 'IransansDn'),
                  isSender: true,
                  color: Color(0xFFE8E8EE),
                  tail: true,
                  sent: true,
                ),
                BubbleNormal(
                  text: 'فعلا خیر ولی در صورت امکان اطلاع رسانی خواهد شد.',
                  isSender: false,
                  color: Color(0xFF1B97F3),
                  tail: true,
                  textStyle:
                      TextStyle(color: Colors.white, fontFamily: 'IransansDn'),
                ),
                DateChip(
                  date: now,
                ),
                BubbleNormal(
                  text: 'پیامک میشه؟',
                  textStyle: TextStyle(fontFamily: 'IransansDn'),
                  isSender: true,
                  color: Color(0xFFE8E8EE),
                  tail: true,
                  sent: true,
                ),
                BubbleNormal(
                  text: 'از طریق پیامک هم اطلاع رسانی می شود',
                  isSender: false,
                  color: Color(0xFF1B97F3),
                  tail: true,
                  textStyle:
                      TextStyle(color: Colors.white, fontFamily: 'IransansDn'),
                ),
                BubbleNormal(
                  text: 'خیلی متشکرم',
                  textStyle: TextStyle(fontFamily: 'IransansDn'),
                  isSender: true,
                  color: Color(0xFFE8E8EE),
                  tail: true,
                  sent: true,
                ),
                BubbleNormal(
                  text: 'امیدوارم روز خوبی داشته باشید',
                  textStyle: TextStyle(fontFamily: 'IransansDn'),
                  isSender: true,
                  color: Color(0xFFE8E8EE),
                  tail: true,
                  sent: true,
                ),
                BubbleNormal(
                  text: 'خدانگهدار',
                  textStyle: TextStyle(fontFamily: 'IransansDn'),
                  isSender: true,
                  color: Color(0xFFE8E8EE),
                  tail: true,
                  sent: true,
                ),
                BubbleNormal(
                  text: 'سلامت باشید',
                  isSender: false,
                  color: Color(0xFF1B97F3),
                  tail: true,
                  textStyle:
                      TextStyle(color: Colors.white, fontFamily: 'IransansDn'),
                ),
                BubbleNormal(
                  text: 'خدانگهدار',
                  isSender: false,
                  color: Color(0xFF1B97F3),
                  tail: true,
                  textStyle:
                      TextStyle(color: Colors.white, fontFamily: 'IransansDn'),
                ),
                SizedBox(
                  height: 100,
                )
              ],
            ),
          ),
          Directionality(
            textDirection: TextDirection.rtl,
            child: MessageBar(
              replyingTo: 'سلام',
              onSend: (_) => print(_),
              actions: [
                InkWell(
                  child: Icon(
                    Icons.add,
                    color: Colors.black,
                    size: 24,
                  ),
                  onTap: () {},
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8, right: 8),
                  child: InkWell(
                    child: Icon(
                      Icons.camera_alt,
                      color: Colors.green,
                      size: 24,
                    ),
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
