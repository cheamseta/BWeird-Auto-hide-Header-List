BWeird Auto hide Header List!

Hi! From a Weirder
I created a simple app showing a simple way to hide listview header while scrolling down and show while scrolling up



# Structure

  Column(
          children: [
            ScrollToHide(
                controller: scrollController,
                child: Container(
                  color:Colors.blueGrey,
                  child: Center(child: Text("Auto hide on scroll")),
                )),
            Expanded(
                child: ListView.builder(
              itemCount: items.length,
              controller: scrollController,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(items[index]),
                );
              },
            )),
          ],
        ));
	


## Screenshot

![enter image description here](https://firebasestorage.googleapis.com/v0/b/firebase-lindana.appspot.com/o/assets%2FVID_20211008_000802.gif?alt=media&token=f03b95d8-e382-4c5a-8835-d9582bea4f75)
