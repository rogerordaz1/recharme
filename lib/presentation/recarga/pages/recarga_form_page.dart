import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:recharme/core/utils/colors.dart';

import '../widgets/widgets.dart';

class RecargaFormPage extends StatelessWidget {
  static const String name = 'recargaFormPage';
  const RecargaFormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_rounded),
            onPressed: () => context.pop()),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Añadir Recarga',
          style: TextStyle(fontSize: 20.sp),
        ),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 10.w),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search_rounded,
                  size: 30.h,
                ),
              ))
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const InfoCardsGridView(),
                Text(
                  'Añadir Recarga',
                  style: TextStyle(fontSize: 20.sp),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: CustomTextWidget(
                        hintText: 'Nombre del cliente',
                        labelText: 'Nombre',
                        icon: const Icon(Icons.people_alt_outlined),
                        onChanged: (value) {},
                        validator: (value) {
                          return null;
                        },
                        keyboardType: TextInputType.name,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: CustomTextWidget(
                        hintText: 'Numero de telefono',
                        labelText: 'Telefono',
                        icon: const Icon(Icons.people_alt_outlined),
                        onChanged: (value) {},
                        validator: (value) {
                          return null;
                        },
                        keyboardType: TextInputType.phone,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.contact_page_outlined,
                        size: 40,
                        color: colorGreen,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: CustomTextWidget(
                        hintText: 'Monto',
                        labelText: 'Monto',
                        icon: const Icon(Icons.attach_money_outlined),
                        onChanged: (value) {},
                        validator: (value) {
                          return null;
                        },
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: CustomTextWidget(
                        onTap: () async {
                          FocusScope.of(context).requestFocus(FocusNode());
                          DateTime? dateTime = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2020),
                              lastDate: DateTime.now());

                          if (dateTime != null) {
                            // TODO: hacer para actualizar el campo de texto;
                          }
                        },
                        hintText: 'Fecha',
                        labelText: 'Fecha',
                        icon: const Icon(Icons.date_range),
                        onChanged: (value) {},
                        validator: (value) {
                          return null;
                        },
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                MaterialButton(
                  color: colorGreen,
                  textColor: Colors.white,
                  onPressed: () {},
                  child: const Text('Confirmar'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({
    super.key,
    required this.onChanged,
    this.validator,
    this.keyboardType,
    required this.hintText,
    required this.labelText,
    this.icon,
    this.onTap,
  });
  final ValueChanged onChanged;
  final VoidCallback? onTap;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final String hintText;
  final String labelText;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      cursorColor: colorGreen,
      onChanged: onChanged,
      validator: validator,
      keyboardType: keyboardType,
      decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          hintText: hintText,
          labelText: labelText,
          prefixIcon: icon),
    );
  }
}
