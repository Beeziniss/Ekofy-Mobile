import 'package:ekofy_mobile/core/di/injector.dart';

import '../../../../core/configs/assets/app_images.dart';
import '../../../../core/configs/assets/app_vectors.dart';
import '../../../../core/configs/routes/app_route.dart';
import '../../../../core/configs/theme/app_colors.dart';
import '../../../../core/widgets/button/custom_button.dart';
import '../../../../core/widgets/button/gradient_border_text_field.dart';
import '../../../../features/auth/presentation/widgets/remember_me_section.dart';
import '../../../../features/auth/presentation/screens/register_screen.dart';
import '../../../../core/utils/validators.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

// Import auth provider
import '../providers/auth_provider.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController(text: '');
  final _passwordController = TextEditingController(text: '');
  final GlobalKey _tooltipIconKey = GlobalKey();
  bool _obscurePassword = true;
  OverlayEntry? _tooltipOverlay;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _hideTooltip();
    super.dispose();
  }

  void _handleLogin() {
    //info: handle login
    ref
        .read(authProvider.notifier)
        .login(
          email: _emailController.text,
          password: _passwordController.text,
        );
  }

  void _handleRetry() {
    //info: reset state
    ref.read(authProvider.notifier).reset();
  }

  @override
  Widget build(BuildContext context) {
    // listen to auth state changes
    ref.listen<AuthState>(authProvider, (previous, next) {
      switch (next) {
        case AuthLoginSuccess():
          // trigger authenticate --> login success
          ref.read(authProvider.notifier).authenticate();
          break;
        case AuthAuthenticateSuccess():
          context.go(RouteName.home);
          break;
        default:
          break;
      }
    });

    //watch auth state, like BlocBuilder
    final authState = ref.watch(authProvider);

    Widget buildInitialWidget() {
      return Positioned.fill(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(AppVectors.logo),
                ),
                const SizedBox(height: 40),
                _welcomeBackTitle(),
                const SizedBox(height: 80),
                _emailFieldInput(),
                const SizedBox(height: 20),
                _passwordFieldInput(),
                const SizedBox(height: 20),
                RememberMeSection(),
                const SizedBox(height: 20),
                _loginButton(),
                const SizedBox(height: 20),
                _signUpNavigationText(),
                const SizedBox(height: 20),
                SvgPicture.asset(AppVectors.orSplit),
                const SizedBox(height: 20),
                _loginWithGoogleButton(),
              ],
            ),
          ),
        ),
      );
    }

    Widget inProgressLoginWidget() {
      return Center(
        child: Image.asset(AppImages.loader, gaplessPlayback: true),
      );
    }

    Widget buildFailureLoginWidget(String message) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(
              16,
            ), // Thêm padding để không gian giữa text và border rộng hơn
            decoration: BoxDecoration(
              color: Colors.transparent, // Màu nền của container
              borderRadius: BorderRadius.circular(12), // Bo tròn các góc
              border: Border.all(
                color: Colors.white,
                width: 2,
              ), // Border đỏ với độ dày là 2
            ),
            child: Text(
              message,
              style: TextStyle(
                color: Colors.red,
                fontSize: 16,
                height: 1.5, // Tăng khoảng cách giữa các dòng
              ),
              textAlign: TextAlign.center, // Căn đều chữ
            ),
          ),
          const SizedBox(height: 24),
          FilledButton.icon(
            onPressed: _handleRetry,
            label: Text('Retry'),
            icon: Icon(Icons.refresh),
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(
                AppColors.deepBlue,
              ), // Đổi màu nền của button
              foregroundColor: WidgetStateProperty.all(
                Colors.white,
              ), // Màu chữ trên button
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    8,
                  ), // Bo tròn góc của button
                ),
              ),
            ),
          ),
        ],
      );
    }

    //*: SWITCH STATE
    final loginWidget = switch (authState) {
      AuthInitial() => buildInitialWidget(),
      AuthLoginInProgress() => inProgressLoginWidget(),
      AuthLoginFailure(message: final msg) => buildFailureLoginWidget(msg),
      AuthLoginSuccess() => inProgressLoginWidget(), // Đang authenticate
      _ => buildInitialWidget(),
    };

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(AppImages.backgroundLogin),
                ),
              ),
            ),
            Container(color: Colors.black.withOpacity(0.8)),
            loginWidget,
          ],
        ),
      ),
    );
  }

  Widget _welcomeBackTitle() {
    return const Text(
      'Welcome Back!',
      style: TextStyle(
        fontSize: 30,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _signUpNavigationText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Don’t have an account? ',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontFamily: 'Poppins',
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const RegisterScreen()),
            );
          },
          child: const Text(
            'Sign up to Ekofy.',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontFamily: 'Poppins',
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }

  Widget _emailFieldInput() {
    return GradientBorderTextField(
      label: 'Email',
      gradientColors: [AppColors.deepBlue, AppColors.violet],
      controller: _emailController,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'Enter your email',
        hintStyle: const TextStyle(color: Colors.white70),
        border: InputBorder.none,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 13,
          vertical: 10,
        ),
      ),
      validator: Validators.isEmailValid,
    );
  }

  Widget _passwordFieldInput() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Text(
              'Password',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
            const SizedBox(width: 6),
            GestureDetector(
              key: _tooltipIconKey,
              onTap: () => _showTooltip(context),
              child: SvgPicture.asset('assets/vectors/tooltip_icon.svg'),
            ),
          ],
        ),
        const SizedBox(height: 5),
        GradientBorderTextField(
          label: '',
          gradientColors: [AppColors.deepBlue, AppColors.violet],
          controller: _passwordController,
          obscureText: _obscurePassword,
          keyboardType: TextInputType.visiblePassword,
          decoration: InputDecoration(
            hintText: 'Enter your password',
            hintStyle: const TextStyle(color: Colors.white70),
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 13,
              vertical: 12,
            ),
            suffixIcon: IconButton(
              icon: Icon(
                _obscurePassword ? Icons.visibility_off : Icons.visibility,
                color: Colors.white70,
              ),
              onPressed: () {
                setState(() {
                  _obscurePassword = !_obscurePassword;
                });
              },
            ),
          ),
          validator: Validators.isPasswordValid,
        ),
      ],
    );
  }

  Widget _loginButton() {
    return CustomButton(
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          _handleLogin();
        }
      },
      title: 'Log in',
      height: 45,
      gradientColors: [AppColors.deepBlue, AppColors.violet],
    );
  }

  Widget _loginWithGoogleButton() {
    return CustomButton(
      onPressed: () {
        ref.read(authProvider.notifier).loginWithGoogle();
      },
      title: 'Continue with Google',
      height: 45,
      gradientColors: [
        const Color.fromARGB(120, 44, 44, 44),
        const Color.fromARGB(120, 44, 44, 44),
      ],
      assetPath: AppVectors.googleLogo,
    );
  }

  void _showTooltip(BuildContext context) {
    _hideTooltip();

    final renderBox =
        _tooltipIconKey.currentContext?.findRenderObject() as RenderBox?;
    if (renderBox == null) return;

    final position = renderBox.localToGlobal(Offset.zero);

    _tooltipOverlay = OverlayEntry(
      builder: (context) => Stack(
        children: [
          Positioned.fill(
            child: GestureDetector(
              onTap: _hideTooltip,
              child: Container(color: Colors.transparent),
            ),
          ),
          Positioned(
            left: position.dx - 75,
            top: position.dy - 110,
            child: Material(
              color: Colors.transparent,
              child: SvgPicture.asset(
                'assets/vectors/password_tooltip.svg',
                width: 350,
              ),
            ),
          ),
        ],
      ),
    );

    Overlay.of(context).insert(_tooltipOverlay!);
  }

  void _hideTooltip() {
    _tooltipOverlay?.remove();
    _tooltipOverlay = null;
  }
}
