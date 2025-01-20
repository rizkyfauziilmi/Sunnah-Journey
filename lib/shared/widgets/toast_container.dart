import 'package:flutter/material.dart';
import 'package:flutter_counter/shared/types/response_result.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showToast({
  required ResponseResult response,
  required FToast fToast,
  ToastGravity position = ToastGravity.BOTTOM,
  VoidCallback? onClose,
}) {
  final iconMap = {
    ResponseType.success: Icons.check_circle,
    ResponseType.warning: Icons.warning_rounded,
    ResponseType.error: Icons.error,
  };

  final colorMap = {
    ResponseType.success: Colors.green.shade600,
    ResponseType.warning: Colors.orange.shade600,
    ResponseType.error: Colors.red.shade600,
  };

  final textColor = Colors.white;

  // Widget toast
  Widget toast = Container(
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
    decoration: BoxDecoration(
      color: colorMap[response.responseType] ?? Colors.grey,
      borderRadius: BorderRadius.circular(12.0),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.2),
          blurRadius: 8,
          offset: const Offset(0, 2),
        ),
      ],
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          iconMap[response.responseType],
          color: textColor,
        ),
        const SizedBox(width: 12.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                response.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: textColor,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                response.message,
                style: TextStyle(
                  color: textColor.withValues(alpha: 0.9),
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
        if (onClose != null)
          IconButton(
            onPressed: onClose,
            icon: const Icon(Icons.close, color: Colors.white),
            iconSize: 18,
          ),
      ],
    ),
  );

  // Tampilkan toast menggunakan FToast
  fToast.showToast(child: toast, gravity: position);
}
