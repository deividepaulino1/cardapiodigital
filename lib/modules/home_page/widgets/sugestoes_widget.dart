import 'package:cardapio/shared/custom_colors/colors.dart';
import 'package:cardapio/shared/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SugestoesWidget extends StatefulWidget {
  const SugestoesWidget({Key? key}) : super(key: key);

  @override
  State<SugestoesWidget> createState() => _SugestoesWidgetState();
}

class _SugestoesWidgetState extends State<SugestoesWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.sp,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: DigiColors.primary,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 3.w, top: 3.h),
              child: Text(
                'Sugestões',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.sp,
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(5.w),
                  child: CircleAvatar(
                    radius: 10.h,
                    backgroundImage: const NetworkImage(
                        'https://cdn.jornaldebrasilia.com.br/wp-content/uploads/2022/05/26154451/burguer2.jpg'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 3.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Triplo bacon',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.sp,
                        ),
                      ),
                      SizedBox(
                        height: 1.5.h,
                      ),
                      SizedBox(
                        width: 45.w,
                        height: 15.h,
                        child: Text(
                          'Mussum Ipsum, cacilds vidis litro abertis. Não sou faixa preta cumpadi, sou preto inteiris, inteiris.Mauris nec dolor in eros commodo tempor.',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontStyle: FontStyle.italic,
                            fontSize: 8.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 1.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: SizedBox(
                height: 5.h,
                width: double.maxFinite,
                child: DigiButton(
                  onPressed: () {},
                  child: Text('Aceitar Sugestão',
                      style: TextStyle(fontSize: 10.sp)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
