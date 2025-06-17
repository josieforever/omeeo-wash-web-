import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'
    show FontAwesomeIcons;
import 'package:omeeoweb/widgets/colors.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color? textColor;
  final double? textSize;
  final FontWeight? textWeight;
  final TextAlign? textAlign;
  final int? textMaxLines;
  final TextOverflow? textOverflow;

  const CustomText({
    super.key,
    required this.text,
    this.textColor,
    this.textSize,
    this.textWeight,
    this.textAlign,
    this.textMaxLines,
    this.textOverflow,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: textMaxLines,
      overflow: textOverflow ?? TextOverflow.visible,
      softWrap: true,
      style: TextStyle(
        color: textColor ?? Colors.black,
        fontSize: textSize ?? 16,
        fontWeight: textWeight ?? FontWeight.normal,
      ),
    );
  }
}

class RegularButton extends StatefulWidget {
  final dynamic textWidget;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final BoxBorder? border;
  final double borderRadius;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  const RegularButton({
    super.key,
    required this.onPressed,
    this.backgroundColor,
    this.padding,
    this.margin,
    this.textWidget,
    this.border,
    required this.borderRadius,
  });

  @override
  State<RegularButton> createState() => _RegularButtonState();
}

class _RegularButtonState extends State<RegularButton> {
  bool _isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: WidgetStateMouseCursor.clickable,
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedScale(
        scale: _isHovered ? 1.05 : 1.0,
        duration: const Duration(milliseconds: 100),
        child: GestureDetector(
          onTap: widget.onPressed,
          child: Container(
            decoration: BoxDecoration(
              color: widget.backgroundColor,
              borderRadius: BorderRadius.circular(widget.borderRadius),
              border: widget.border,
            ),
            // fixed height
            padding: widget.padding,
            margin: widget.margin,
            child: Center(child: widget.textWidget),
          ),
        ),
      ),
    );
  }
}

class FeatureCard extends StatefulWidget {
  final Icon icon;
  final dynamic title;
  final dynamic subtitle;
  final Color iconColor;

  const FeatureCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.iconColor,
  });

  @override
  State<FeatureCard> createState() => _FeatureCardState();
}

class _FeatureCardState extends State<FeatureCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedScale(
        scale: _isHovered ? 1.05 : 1.0,
        duration: const Duration(milliseconds: 200),
        child: Container(
          height: 220,
          width: 290,
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: AppColors.primaryPurple),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(widget.icon.icon, size: 50, color: widget.iconColor),
              const SizedBox(height: 12),
              widget.title,
              const SizedBox(height: 8),
              widget.subtitle,
            ],
          ),
        ),
      ),
    );
  }
}

class ServiceCard extends StatefulWidget {
  final bool isPremium;
  final dynamic customText;
  final Icon icon;
  final String subtitle;
  final Color iconColor;
  final List<String>? services;

  const ServiceCard({
    super.key,
    required this.icon,
    required this.subtitle,
    required this.iconColor,
    this.services,
    this.customText,
    required this.isPremium,
  });

  @override
  State<ServiceCard> createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedScale(
        scale: _isHovered ? 1.05 : 1.0,
        duration: const Duration(milliseconds: 200),
        child: Container(
          width: 350,
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border:
                widget.isPremium
                    ? Border.all(color: AppColors.primaryPurple, width: 2)
                    : Border.all(color: AppColors.textTetiary),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              widget.isPremium
                  ? Container(
                    decoration: BoxDecoration(
                      color: AppColors.primaryPurple,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    child: CustomText(
                      text: 'Most Popular',
                      textColor: AppColors.white,
                    ),
                  )
                  : const SizedBox(),
              const SizedBox(height: 12),
              widget.icon,
              const SizedBox(height: 12),
              widget.customText,
              const SizedBox(height: 8),

              for (var service in widget.services!)
                Padding(
                  padding: const EdgeInsets.all(6),
                  child: Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.solidCircle,
                        size: 10,
                        color: AppColors.primaryPurple,
                      ),
                      const SizedBox(width: 15),
                      CustomText(
                        text: service,
                        textColor: AppColors.textSecondary,
                      ),
                    ],
                  ),
                ),
              const SizedBox(height: 8),
              RegularButton(
                textWidget: CustomText(
                  text: 'Get Quote',

                  textWeight: FontWeight.w600,
                ),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                backgroundColor: AppColors.white,
                borderRadius: 5,
                border: Border.all(color: AppColors.textTetiary),
                onPressed: () {},
              ),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}

class PrincipleCard extends StatelessWidget {
  final dynamic title;
  final dynamic subTitle;
  final Icon? icon;
  const PrincipleCard({
    super.key,
    customText,
    this.icon,
    this.title,
    this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          const SizedBox(height: 20),
          CircleAvatar(
            backgroundColor:
                AppColors.accentPurple, // or any background you prefer
            radius: 40, // adjust as needed
            child: icon,
          ),
          const SizedBox(height: 20),
          title,

          subTitle,
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}

class HoverButton extends StatefulWidget {
  final Widget text;
  final VoidCallback onPressed;

  const HoverButton({super.key, required this.text, required this.onPressed});

  @override
  State<HoverButton> createState() => _HoverButtonState();
}

class _HoverButtonState extends State<HoverButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedScale(
        scale: _isHovered ? 1.05 : 1.0,
        duration: const Duration(milliseconds: 100),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryPurple,
            minimumSize: const Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          onPressed: widget.onPressed,
          child: widget.text,
        ),
      ),
    );
  }
}

class HoverButtonLoading extends StatefulWidget {
  final Widget text;
  final VoidCallback onPressed;
  final bool isLoading;
  final Color? backgroundColor;
  final Color? loaderColor;

  const HoverButtonLoading({
    super.key,
    required this.text,
    required this.onPressed,
    required this.isLoading,
    this.backgroundColor,
    this.loaderColor,
  });

  @override
  State<HoverButtonLoading> createState() => _HoverButtonLoadingState();
}

class _HoverButtonLoadingState extends State<HoverButtonLoading> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedScale(
        scale: _isHovered && !widget.isLoading ? 1.05 : 1.0,
        duration: const Duration(milliseconds: 150),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: widget.backgroundColor ?? AppColors.primaryPurple,
            minimumSize: const Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          onPressed: widget.isLoading ? null : widget.onPressed,
          child:
              widget.isLoading
                  ? SizedBox(
                    width: 22,
                    height: 22,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: widget.loaderColor ?? Colors.white,
                    ),
                  )
                  : widget.text,
        ),
      ),
    );
  }
}
