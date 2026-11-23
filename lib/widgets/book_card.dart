import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../models/book.dart';

class BookCard extends StatelessWidget {
  const BookCard({super.key, required this.book, required this.onTap});

  final Book book;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
            color: const Color(0xFFE8CBA8),
                child: Image.asset(
  book.image,
  width: double.infinity,
  height: 220,
  fit: BoxFit.contain,
),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.tr('books.${book.id}.title'),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: textTheme.titleMedium,
                  ),
                  Text(
                    context.tr('books.${book.id}.author'),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                   style: const TextStyle(color: Color(0xFF806044)),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    context.tr(
                      'book.price',
                      namedArgs: {'price': book.price.toStringAsFixed(2)},
                    ),
                 style: const TextStyle(
  color: Color(0xFFA64F2B),
  fontWeight: FontWeight.bold,

                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}