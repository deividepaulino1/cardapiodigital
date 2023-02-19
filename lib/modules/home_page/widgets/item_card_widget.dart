import 'package:cardapio/modules/home_page/product_info_page/product_info_page.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ItemCardWidget extends StatefulWidget {
  const ItemCardWidget({Key? key}) : super(key: key);

  @override
  State<ItemCardWidget> createState() => _ItemCardWidgetState();
}

class _ItemCardWidgetState extends State<ItemCardWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.sp),
            ),
            context: context,
            builder: (context) => ProductInfoPage());
      },
      child: Column(
        children: [
          Container(
            height: 15.0.h,
            width: 80.0.w,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: NetworkImage(
                    'data:image/jpeg;base64,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'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(4.w),
            ),
          ),
          SizedBox(height: 2.0.h),
          Padding(
            padding: EdgeInsets.only(right: 10.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Nome do produto',
                  style: TextStyle(
                    fontSize: 3.5.w,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'R\$ 15,00',
                      style: TextStyle(
                        fontSize: 2.5.w,
                        fontWeight: FontWeight.w100,
                        decoration: TextDecoration.lineThrough,
                        color: Colors.grey.shade600,
                      ),
                    ),
                    SizedBox(width: 5.0.w),
                    Text(
                      'R\$ 10,00',
                      style: TextStyle(
                        fontSize: 3.0.w,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
