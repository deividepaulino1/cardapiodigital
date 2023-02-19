import 'package:cardapio/shared/custom_colors/colors.dart';
import 'package:cardapio/shared/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ProductInfoPage extends StatefulWidget {
  const ProductInfoPage({super.key});

  @override
  State<ProductInfoPage> createState() => _ProductInfoPageState();
}

class _ProductInfoPageState extends State<ProductInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.maxFinite,
          height: 5.h,
          decoration: BoxDecoration(
            color: DigiColors.secondary,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.sp),
              topRight: Radius.circular(10.sp),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10.sp),
                child: Text(
                  'Detalhes do produto',
                  style: TextStyle(color: DigiColors.tertiary, fontSize: 10.sp),
                ),
              )
            ],
          ),
        ),
        Image.network(
          'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=999&q=80',
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;
            return Center(
              child: CircularProgressIndicator(
                color: DigiColors.primary,
              ),
            );
          },
        ),
        SizedBox(
          child: Padding(
            padding: EdgeInsets.all(8.sp),
            child: Text(
              'Nome do produto',
              style: TextStyle(fontSize: 15.sp, color: DigiColors.primary),
            ),
          ),
        ),
        SizedBox(
          height: 30.h,
          child: Padding(
            padding: EdgeInsets.all(8.sp),
            child: Text(
              'Mussum Ipsum, cacilds vidis litro abertis. Mé faiz elementum girarzis, nisi eros vermeio.Viva Forevis aptent taciti sociosqu ad litora torquent.Si num tem leite então bota uma pinga aí cumpadi!Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque, eget.',
              style: TextStyle(fontSize: 10.sp),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.sp),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'R\$',
                    style: TextStyle(
                      fontSize: 10.sp,
                      color: Colors.grey.shade700,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 1.w,
                  ),
                  Text(
                    '19,90',
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: Colors.green.shade800,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Container(
                width: 60.sp,
                height: 30.sp,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(5.sp),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 20.sp,
                      height: 20.sp,
                      color: Colors.grey.shade400,
                      child: Icon(
                        Icons.remove,
                        color: DigiColors.secondary,
                      ),
                    ),
                    Container(
                      width: 20.sp,
                      height: 20.sp,
                      color: Colors.grey.shade400,
                      child: Center(
                        child: Text(
                          '1',
                          style: TextStyle(
                            fontSize: 10.sp,
                            color: Colors.grey.shade700,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 20.sp,
                      height: 20.sp,
                      color: Colors.grey.shade400,
                      child: Icon(
                        Icons.add,
                        color: DigiColors.secondary,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                  height: 5.h,
                  width: 50.w,
                  child: DigiButton(
                      onPressed: () {}, child: const Text('Adicionar')))
            ],
          ),
        ),
      ],
    );
  }
}
