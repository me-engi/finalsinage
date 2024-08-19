// import 'package:flutter_bloc/flutter_bloc.dart' hide Transition;
// import 'package:get/route_manager.dart';
// import 'package:penseum/view/screens/calculus_guide/calculus_guide.dart';
// import 'package:penseum/view/screens/chat/chatscreen.dart';
// import 'package:penseum/view/screens/flashCards_screen/viewModel/flashCards_bloc/flash_cards_bloc.dart';
// import 'package:penseum/view/screens/folder_screen/folder_screen.dart';
// import 'package:penseum/view/screens/folder_screen/viewModel/folder_bloc/folder_bloc.dart';
// import 'package:penseum/view/screens/folder_screen/viewModel/saveOffline_folder/saveOffline_cubit.dart';
// import 'package:penseum/view/screens/forgot_password/forgot_password.dart';
// import 'package:penseum/view/screens/forgot_password/view_model/resetpassword_bloc.dart/resetpassword_bloc.dart';
// import 'package:penseum/view/screens/get_solutions/body/get_solultion_history.dart';
// import 'package:penseum/view/screens/login_screen/ViewModel/resned_otp_bloc/resendOtpVerification_bloc.dart';
// import 'package:penseum/view/screens/profile_screen/view/choose_language.dart';
// import 'package:penseum/view/screens/study_guide/viewmodel/flashStatus_menu/flashStatus_bloc.dart';
// import 'package:penseum/view/screens/study_guide/viewmodel/statusbloc_menu/status_bloc.dart';
// import '../view/screens/calculus_guide/viewmodel/get_course_by_id_cubit.dart';
// import '../view/screens/calculus_hub_pod/ViewModel/addmember_bloc/add_members_bloc.dart';
// import '../view/screens/calculus_hub_pod/ViewModel/calculus_by_podId_cubit.dart';
// import '../view/screens/calculus_hub_pod/ViewModel/calculus_pod_main/calculus_pod_main_bloc.dart';
// import '../view/screens/calculus_hub_pod/ViewModel/getEmail_cubi/get_email_cubit.dart';
// import '../view/screens/calculus_hub_pod/ViewModel/pod_popmenu_bloc/pod_pop_bloc.dart';
// import '../view/screens/calculus_hub_pod/body/managemember.dart';
// import '../view/screens/calculus_hub_pod/view/calculus_hub_pod.dart';
// import '../view/screens/chat/view_model/chat_cubit.dart';
// import '../view/screens/dashboard/dashboard.dart';
// import '../view/screens/flashCards_screen/view/flashCards_screen.dart';
// import '../view/screens/flashCards_screen/viewModel/flashEdit_bloc/flashEdit_bloc.dart';
// import '../view/screens/flashCards_screen/viewModel/flashcards_count_bloc/count_bloc.dart';
// import '../view/screens/forgot_password/view_model/forgot_bloc/forgot_bloc.dart';
// import '../view/screens/get_solutions/view/get_solution_by_id.dart';
// import '../view/screens/get_solutions/viewmodel/getSolution_by_cubit/get_solution_by_id_cubit.dart';
// import '../view/screens/home/ViewModel/courses_bloc/courses_bloc.dart';
// import '../view/screens/home/ViewModel/popupMenu_bloc/popup_menu_bloc.dart';
// import '../view/screens/login_screen/ViewModel/login_bloc/login_bloc.dart';
// import '../view/screens/login_screen/ViewModel/password_visibility_bloc/password_visibility_bloc.dart';
// import '../view/screens/login_screen/ViewModel/signup_bloc/signup_bloc.dart';
// import '../view/screens/login_screen/login_screen.dart';
// import '../view/screens/pods/viewModel/pod_creation_bloc/pod_bloc.dart';
// import '../view/screens/question/view/question_screen.dart';
// import '../view/screens/question/viewModel/Question_bloc/question_Bloc.dart';
// import '../view/screens/question/viewModel/answer_bloc/answer_bloc.dart';
// import '../view/screens/question/viewModel/hint_cubit/hint_bloc.dart';
// import '../view/screens/question/viewModel/question_count_bloc/question_count_bloc.dart';
// import '../view/screens/study_guide/view/study_guide_screen.dart';
// import '../view/screens/study_guide/viewmodel/get_lession_cubit.dart';

// class Routes {
//   static final pages = [
//     GetPage(
//         name: '/',
//         page: () => MultiBlocProvider(providers: [
//               BlocProvider(
//                 create: (context) => LoginBloc(),
//               ),
//               BlocProvider(
//                 create: (context) => SignUpBloc(),
//               ),
//               BlocProvider(
//                 create: (context) => ResendOtpBloc(),
//               ),
//               BlocProvider(
//                 create: (context) => PasswordCubit(),
//               ),
//             ], child: const LoginScreen())),
//     GetPage(
//       name: '/forgotpassword',
//       page: () => MultiBlocProvider(providers: [
//         BlocProvider(create: (context) => ForgotBloc()),
//         BlocProvider(create: (context) => PasswordCubit()),
//         BlocProvider(create: (context) => ResetPasswordBloc())
//       ], child: const ForgotPassword()),
//     ),
//     GetPage(
//         name: '/dashboard',
//         page: () => MultiBlocProvider(
//               providers: [
//                 BlocProvider(create: (context) => PopupMenuBloc()),
//               ],
//               child: const BottomNavigationPage(),
//             ),
//         transition: Transition.noTransition),
//     // GetPage(name: '/flashcards', page: () => const FlashCardsScreen()),
//     GetPage(
//         name: '/studyguide',
//         page: () => MultiBlocProvider(
//               providers: [
//                 BlocProvider(
//                   create: (context) => GetLessionCubit(),
//                 ),
//                 BlocProvider(
//                   create: (context) => StatusBloc(),
//                 ),
//                 BlocProvider(
//                   create: (context) => FlasshStatusBloc(),
//                 ),
//               ],
//               child: const StudyGuideScreen(),
//             ),
//         transition: Transition.zoom),
//     GetPage(
//         name: '/flashcards',
//         page: () => MultiBlocProvider(providers: [
//               BlocProvider(
//                 create: (context) => FlashCardsBloc(),
//               ),
//               BlocProvider(
//                 create: (context) => FlashEditBloc(),
//               ),
//               BlocProvider(
//                   create: (context) => StatusBloc(),
//                 ),
//               BlocProvider(
//                 create: (context) => HintBloc(),
//               ),
//               BlocProvider(
//                   create: (context) => FlasshStatusBloc(),
//                 ),
//               BlocProvider(
//                 create: (context) => CountBloc(),
//               ),
//             ], child: const FlashCardsScreen()),
//         transition: Transition.zoom),
//     // GetPage(name: '/studyguide', page: () => const StudyGuideScreen()),
//     GetPage(
//         name: '/calculusguide',
//         page: () => BlocProvider(
//               create: (context) => GetCourseByIdCubit(),
//               child: const CalculusGuide(),
//             ),
//         transition: Transition.zoom),
//     GetPage(
//         name: '/myfolder',
//         page: () => MultiBlocProvider(
//           providers: [
//             BlocProvider(
//               create: (context) => GetFolderBloc(),),
//             BlocProvider(
//               create: (context) => SaveOfflineCubitFolderCubitFolder(),),
//           ],
//           child: const MyFolders(),
//         ),
//         transition: Transition.zoom),
//     GetPage(
//         name: '/calculushub',
//         page: () => MultiBlocProvider(
//           providers: [
//             BlocProvider(
//             create: (context) => GetPodByIdCubit(),),
//             BlocProvider(
//             create: (context) => CalculusPodMainBloc(),),
//             BlocProvider(
//             create: (context) => PodPopMenuBloc(),),
//             BlocProvider(
//             create: (context) => PodCreationBloc(),),
//             BlocProvider(
//             create: (context) => AddMemberBloc(),),
//             BlocProvider(
//             create: (context) => GetEmailCubit(),),
//           ],
//           child: const CalculusHubPods(),
//         ),
//         transition: Transition.zoom),
//     // GetPage(name: '/questions', page: () => QuestionScreen()),
//     GetPage(
//         name: '/chat',
//         page: () => BlocProvider(
//               create: (context) => ChatCubit(),
//               child: const ChatScreen(),
//             ),
//         transition: Transition.rightToLeft),

//     GetPage(
//         name: '/questions',
//         page: () => MultiBlocProvider(providers: [
//               BlocProvider(
//                 create: (context) => QuestionBloc(),
//               ),
//               BlocProvider(
//                   create: (context) => StatusBloc(),
//                 ),
//                 BlocProvider(
//                   create: (context) => FlasshStatusBloc(),
//                 ),
//               BlocProvider(
//                 create: (context) => HintBloc(),
//               ),
//               BlocProvider(
//                 create: (context) => AnswerBLoc(),
//               ),
//               BlocProvider(
//                 create: (context) => QuestionCountBloc(),
//               ),
//             ], child: const QuestionScreen()),
//         transition: Transition.zoom),
//     GetPage(
//         name: '/history',
//         page: () => BlocProvider(
//               create: (context) => GetCoursesBloc(),
//               child: const GetSolutionHistory(),
//             )),
//     GetPage(
//         name: '/getSolutionByID',
//         page: () => BlocProvider(
//               create: (context) => ByIdCubit(),
//               child: const GetSolutionByID(),
//             ),
//         transition: Transition.zoom),
//     GetPage(name: "/localize", page:()=> const Localize())
//     //UploadBloc ChangeBloc
//     /*    GetPage(name: '/pageViewScreen',
//          page: () =>  MultiBlocProvider(providers: [
//            BlocProvider(
//              create: (context) => ChangeBloc(),
//            ),
//            BlocProvider(
//              create: (context) => UploadBloc(),
//            ),
//          ],
//              child: const PageViewScreen()))*/
//   ];
// }