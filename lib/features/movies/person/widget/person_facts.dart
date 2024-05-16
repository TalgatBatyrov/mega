import 'package:flutter/material.dart';
import 'package:mega/features/movies/person/repository/model/person_model.dart';
import 'package:mega/ui/colors/movie_colors.dart';
import 'package:mega/ui/widgets/title_widget.dart';

class PersonFacts extends StatelessWidget {
  final PersonModel person;
  const PersonFacts({
    super.key,
    required this.person,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (person.facts.isNotEmpty) const TittleWidget(title: 'Факты'),
        const SizedBox(height: 10),
        ...person.facts.map(
          (fact) => Container(
            margin: const EdgeInsets.only(bottom: 12),
            padding: const EdgeInsets.all(8),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: MovieColors.textColor,
              border: Border.all(
                color: MovieColors.grey,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              fact.value,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: MovieColors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
