import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:intermediate_final_project/core/theme/theme_manager/theme_extensions.dart';
import 'package:intermediate_final_project/core/utils/app_icons.dart';
import 'package:intermediate_final_project/features/nav_bar/presentation/manager/nav_bar_cubit/nav_bar_cubit.dart';
import 'package:intermediate_final_project/generated/l10n.dart';

class CustomBottomNavBar extends StatelessWidget {
  CustomBottomNavBar({super.key});

  final List<Widget> views = [
    Container(),
    Container(),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavBarCubit(),
      child: BlocBuilder<NavBarCubit, NavBarState>(
        builder: (context, state) {
          final cubit = context.read<NavBarCubit>();

          return Scaffold(
            body: views[cubit.selectIndex],
            bottomNavigationBar: Padding(
              padding: EdgeInsets.only(bottom: 24.h, right: 16.w, left: 16.w),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32.r),
                  color: context.customAppColors.grey0,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.w,
                    vertical: 12.h,
                  ),
                  child: GNav(
                    onTabChange: (index) => cubit.changeCurrentIndex(index),
                    selectedIndex: cubit.selectIndex,
                    tabBorderRadius: 20.r,
                    duration: const Duration(milliseconds: 400),
                    gap: 5.w,
                    color: Colors.grey,
                    activeColor: context.customAppColors.primary800,
                    iconSize: 22.sp,
                    tabBackgroundColor: context.customAppColors.primary400,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 6,
                    ),
                    tabs: [
                      GButton(
                        leading: SvgPicture.asset(
                          AppIcons.homeInactive,
                          height: 20.h,
                          width: 20.h,
                          colorFilter: ColorFilter.mode(
                            cubit.selectIndex == 0
                                ? context.customAppColors.primary800
                                : Colors.grey,
                            BlendMode.srcIn,
                          ),
                        ),
                        text: S.of(context).home,
                        icon: Icons.home,
                      ),
                      GButton(
                        icon: Icons.school,
                        leading: SvgPicture.asset(
                          AppIcons.teacherInactive,
                          colorFilter: ColorFilter.mode(
                            cubit.selectIndex == 1
                                ? context.customAppColors.primary800
                                : Colors.grey,
                            BlendMode.srcIn,
                          ),
                          height: 20.h,
                          width: 20.h,
                        ),
                        text: S.of(context).roadMap,
                      ),
                      GButton(
                        icon: Icons.note,
                        leading: SvgPicture.asset(
                          AppIcons.noteInactive,
                          colorFilter: ColorFilter.mode(
                            cubit.selectIndex == 2
                                ? context.customAppColors.primary800
                                : Colors.grey,
                            BlendMode.srcIn,
                          ),
                          height: 20.h,
                          width: 20.h,
                        ),
                        text: S.of(context).notes,
                      ),
                      GButton(
                        icon: Icons.settings,
                        leading: SvgPicture.asset(
                          AppIcons.settingInactive,
                          colorFilter: ColorFilter.mode(
                            cubit.selectIndex == 3
                                ? context.customAppColors.primary800
                                : Colors.grey,
                            BlendMode.srcIn,
                          ),
                          height: 20.h,
                          width: 20.h,
                        ),
                        text: S.of(context).settings,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
