
# SpotfiyClone

<div style="display: flex;">
  <img src="https://github.com/nurllhk/SpotfiyClone/assets/79688257/d8db58e7-bf5f-4a4b-8c3c-4ffcad779e16" alt="Simulator Screen Shot - iPhone 14 Pro - 2023-06-30 at 20 05 41" style="width: 40%; object-fit: contain;">
  <img src="https://github.com/nurllhk/SpotfiyClone/assets/79688257/3ec67f8c-6ad4-4337-b27c-730ed692fdbf" alt="Simulator Screen Shot - iPhone 14 Pro - 2023-06-30 at 20 05 48" style="width: 40%; object-fit: contain;">
</div>




https://github.com/nurllhk/SpotfiyClone/assets/79688257/0c793f1b-2c95-4506-9841-4a76d045aa34



# Album card

```sh 
 Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Row(
              children: [
                Padding(
                  padding:
                  const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                  child: Image(
                    image: image,
                    width: 140,
                    height: 140,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: Palet.heightPadding,
            child: Text(lable,style: Theme.of(context).textTheme.labelLarge,),
          ),
        ],
      )
 
 ```

