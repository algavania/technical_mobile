import 'dart:io';

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:technical_mobile/core/color_values.dart';
import 'package:technical_mobile/core/styles.dart';
import 'package:technical_mobile/features/home/presentation/bloc/user_bloc.dart';
import 'package:technical_mobile/injector/injector.dart';
import 'package:technical_mobile/l10n/l10n.dart';
import 'package:technical_mobile/util/extensions.dart';
import 'package:technical_mobile/util/image_util.dart';
import 'package:technical_mobile/util/validator.dart';
import 'package:technical_mobile/widgets/custom_button.dart';
import 'package:technical_mobile/widgets/custom_text_field.dart';

@RoutePage()
class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final _bloc = Injector.instance<UserBloc>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _picker = ImagePicker();

  @override
  void initState() {
    final user = _bloc.state.getMyProfileStatus.maybeMap(
      data: (data) => data.data,
      orElse: () => null,
    );
    if (user != null) {
      _nameController.text = user.name ?? '';
      _emailController.text = user.email ?? '';
      _descriptionController.text = user.description ?? '';
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserBloc, UserState>(
      bloc: _bloc,
      listenWhen: (previous, current) =>
          previous.updateUserStatus != current.updateUserStatus,
      listener: (context, state) {
        state.updateUserStatus.maybeMap(
          orElse: () {},
          loading: (_) {
            context.loaderOverlay.show();
          },
          error: (e) {
            context.loaderOverlay.hide();
            context.showSnackBar(message: e.message, isSuccess: false);
          },
          data: (_) {
            context.loaderOverlay.hide();
            context.showSnackBar(message: context.l10n.updateProfileSuccess);
          },
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(context.l10n.editProfile),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(Styles.defaultPadding),
            child: Form(
              key: _formKey,
              child: Column(
                spacing: Styles.defaultSpacing,
                children: [
                  _buildAvatarWidget(),
                  Styles.defaultSpacing.vertical,
                  _buildNameFieldWidget(),
                  _buildEmailFieldWidget(),
                  _buildDescriptionFieldWidget(),
                  Styles.defaultSpacing.vertical,
                  _buildSaveButtonWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNameFieldWidget() {
    return CustomTextField(
      controller: _nameController,
      label: context.l10n.yourName,
      hint: context.l10n.enterName,
      validator: Validator(context: context).emptyValidator,
    );
  }

  Widget _buildEmailFieldWidget() {
    return CustomTextField(
      controller: _emailController,
      label: context.l10n.yourEmail,
      textInputType: TextInputType.emailAddress,
      hint: context.l10n.enterEmail,
      validator: Validator(context: context).emailValidator,
    );
  }

  Widget _buildDescriptionFieldWidget() {
    return CustomTextField(
      controller: _descriptionController,
      label: context.l10n.yourDescription,
      hint: context.l10n.descriptionHint,
      isRequired: false,
      textInputType: TextInputType.multiline,
      minLines: 3,
      maxLines: null,
    );
  }

  Widget _buildSaveButtonWidget() {
    return CustomButton(
      buttonText: context.l10n.save,
      onPressed: () {
        if (_formKey.currentState?.validate() ?? false) {
          final name = _nameController.text.trim();
          final email = _emailController.text.trim();
          final description = _descriptionController.text.trim();
          final image = _bloc.state.pickedImageStatus.maybeMap(
            data: (data) => data.data,
            orElse: () => null,
          );
          _bloc.add(UserEvent.updateUser(name, description, email, image));
        }
      },
    );
  }

  ImageProvider _buildImageWidget() {
    return _bloc.state.getMyProfileStatus.maybeMap(
      data: (data) => data.data.imageUrl == null
          ? const AssetImage('assets/images/avatar.webp')
          : NetworkImage(data.data.imageUrl!),
      orElse: () => const AssetImage('assets/images/avatar.webp'),
    );
  }

  Widget _buildAvatarWidget() {
    return BlocBuilder<UserBloc, UserState>(
      bloc: _bloc,
      buildWhen: (prev, curr) =>
          prev.pickedImageStatus != curr.pickedImageStatus ||
          prev.getMyProfileStatus != curr.getMyProfileStatus,
      builder: (context, state) {
        return Stack(
          children: [
            GestureDetector(
              onTap: _pickFile,
              child: CircleAvatar(
                radius: 50,
                backgroundImage: state.pickedImageStatus.maybeMap(
                  data: (data) => data.data == null
                      ? _buildImageWidget()
                      : FileImage(data.data!),
                  orElse: _buildImageWidget,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: IconButton(
                icon: const Icon(Icons.edit, color: ColorValues.primary50,),
                onPressed: _pickFile,
              ),
            ),
          ],
        );
      },
    );
  }

  Future<void> _pickFile() async {
    final pickedFile = await _picker.pickImage(
      source: ImageSource.gallery,
    );
    if (pickedFile != null) {
      final file = await ImageUtil.cropImage(pickedFile.path);
      if (file != null) {
        _bloc.add(
          UserEvent.changePickedImage(file),
        );
      }
    }
  }
}
