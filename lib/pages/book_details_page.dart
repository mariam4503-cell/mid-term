import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../models/book.dart';
import '../widgets/app_button.dart';

class BookDetailsPage extends StatelessWidget {
  const BookDetailsPage({super.key, required this.book});

  final Book book;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(title: Text(context.tr('books.${book.id}.title'))),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 220,
              decoration: BoxDecoration(
                color: colorScheme.surfaceContainerHighest,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset(
                book.image,
                width: double.infinity,
                height: 220,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              context.tr('books.${book.id}.title'),
              style: textTheme.headlineSmall,
            ),
            const SizedBox(height: 4),
            Text(
              context.tr('books.${book.id}.author'),
              style: TextStyle(color: colorScheme.onSurfaceVariant),
            ),
            const SizedBox(height: 12),
            Text(
              context.tr(
                'book.price',
                namedArgs: {'price': book.price.toStringAsFixed(2)},
              ),
              style: textTheme.titleLarge?.copyWith(
                color: colorScheme.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              context.tr('books.${book.id}.description'),
              style: textTheme.bodyLarge,
            ),
            const SizedBox(height: 32),
            AppButton(
              text: context.tr('book.back'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}