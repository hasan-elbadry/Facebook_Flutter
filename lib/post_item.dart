import 'package:flutter/material.dart';

class PostItem extends StatefulWidget {
  final String name;
  final String description;
  final String img;

  const PostItem(this.name, this.description, this.img, {super.key});

  @override
  _PostItemState createState() => _PostItemState();
}

class _PostItemState extends State<PostItem> {
  Color likeButtonColor = Colors.black45;
  Color commentButtonColor = Colors.black45;
  Color shareButtonColor = Colors.black45;

  void _toggleLikeColor() {
    setState(() {
      likeButtonColor =
          likeButtonColor == Colors.black45 ? Colors.blue : Colors.black45;
    });
  }

  void _toggleCommentColor() {
    setState(() {
      commentButtonColor =
          commentButtonColor == Colors.black45 ? Colors.blue : Colors.black45;
    });
  }

  void _toggleShareColor() {
    setState(() {
      shareButtonColor =
          shareButtonColor == Colors.black45 ? Colors.blue : Colors.black45;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: Column(
        children: [
          Row(
            children: [
              const CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcm5WldpI23UcsikhxKoz_ZpcyDS19ryItSw&s')),
              Container(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.name,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const Row(
                      children: [
                        Text(
                          '1h .',
                          style: TextStyle(fontSize: 15, color: Colors.black54),
                        ),
                        Icon(
                          Icons.public,
                          size: 17,
                          color: Colors.black54,
                        )
                      ],
                    )
                  ],
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_horiz,
                  size: 27.5,
                  color: Colors.black45,
                ),
              )
            ],
          ),
          Container(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Text(
              widget.description,
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 17.5),
            ),
          ),
          Container(
              padding: const EdgeInsets.only(top: 10, bottom: 5),
              child: Image.asset(
                widget.img,
                height: 400,
                fit: BoxFit.contain,
              )),
          Container(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '999,999 and Mark commented',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54),
                ),
                Text(
                  '1B Views',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54),
                )
              ],
            ),
          ),
          const Divider(
            height: 25,
            endIndent: 10,
            indent: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton.icon(
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all(likeButtonColor)),
                onPressed: _toggleLikeColor,
                label: const Text(
                  'Like',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                icon: const Icon(Icons.thumb_up_alt_outlined),
              ),
              TextButton.icon(
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all(commentButtonColor)),
                onPressed: _toggleCommentColor,
                label: const Text(
                  'Comments',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                icon: const Icon(Icons.comment_outlined),
              ),
              TextButton.icon(
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all(shareButtonColor)),
                onPressed: _toggleShareColor,
                label: const Text(
                  'Share',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                icon: const Icon(Icons.share_outlined),
              )
            ],
          )
        ],
      ),
    );
  }
}
