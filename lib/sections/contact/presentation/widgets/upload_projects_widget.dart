import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/sections/projects/presentation/bloc/projects_bloc.dart';
import 'package:pankaj_portfolio/sections/projects/presentation/bloc/projects_state.dart';

class UploadProjectsWidget extends StatelessWidget {
  const UploadProjectsWidget({super.key, required this.onUploadProjects});
  final VoidCallback onUploadProjects;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectsBloc, ProjectsState>(
        builder: (context, state) {
          if (state is ProjectsLoading) {
            return const Center(child: CircularProgressIndicator(),);
          }else{
            return ElevatedButton(
              onPressed: onUploadProjects,
              child: Text('Upload Projects',
                style: TextStyle(color: AppColors.whiteColor),),
            );
          }
        });
  }
}
