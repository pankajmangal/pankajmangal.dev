import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pankaj_portfolio/core/utils/scroll_controller.dart';
import 'package:pankaj_portfolio/sections/contact/presentation/widgets/fetch_projects_widget.dart';
import 'package:pankaj_portfolio/sections/projects/data/model/project_model.dart';
import 'package:pankaj_portfolio/sections/projects/domain/entity/project_entity.dart';
import 'package:pankaj_portfolio/sections/projects/presentation/bloc/projects_bloc.dart';
import 'package:pankaj_portfolio/sections/projects/presentation/bloc/projects_event.dart';
import 'package:pankaj_portfolio/sections/projects/presentation/bloc/projects_state.dart';

class ProjectsSection extends StatefulWidget {
  const ProjectsSection({super.key});

  @override
  State<ProjectsSection> createState() => _ProjectsSectionState();
}

class _ProjectsSectionState extends State<ProjectsSection> {

  @override
  Widget build(BuildContext context) {
    return Container(
      key: ScrollManager.projectsKey,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Featured Projects',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'Apps I’ve built and deployed on Play Store & App Store with real users, payments, and live tracking systems.',
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 40),
          // UploadProjectsWidget(onUploadProjects: uploadProjects,),
          BlocBuilder<ProjectsBloc, ProjectsState>(
            builder: (context, state) {
              if (state is ProjectsLoading) {
                return const Center(child: CircularProgressIndicator());
              }

              if (state is ProjectsFetchLoaded) {
                return FetchProjectsWidget(projects: state.projects);
              }

              if (state is ProjectsError) {
                return Text(state.message);
              }

              return const SizedBox();
            },
          )
        ],
      ),
    );
  }

  Future<List<ProjectEntity>> loadProjects() async {
    final jsonString = await rootBundle.loadString('assets/json/projects_list.json');
    final List data = json.decode(jsonString);

    return data.map((e) => ProjectModel.fromJson(e)).toList();
  }

  void uploadProjects() async {
    final projects = await loadProjects();

    if (!mounted) return;
    context.read<ProjectsBloc>().add(
      PushProjectsEvent(projects),
    );
  }
}