import 'dart:async';
import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  static Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'appTitle': 'Task Manager',
      'home': 'Home',
      'tasks': 'Tasks',
      'profile': 'Profile',
      'addTask': 'Add Task',
      'deleteTask': 'Delete Task',
      'areYouSure': 'Are you sure?',
      'cancel': 'Cancel',
      'confirm': 'Confirm',
      'noTasks': 'No tasks found',
      'totalTasks': 'Total Tasks',
      'completed': 'Completed',
      'pending': 'Pending',
      'taskTitle': 'Task Title',
      'taskDescription': 'Description',
      'dueDate': 'Due Date',
      'priority': 'Priority',
      'save': 'Save',
      'errorLoadingTasks': 'Error loading tasks',
      'retry': 'Retry',
      'low': 'Low',
      'medium': 'Medium',
      'high': 'High',
      'deleteConfirmation': 'Are you sure you want to delete this task?',
      'taskAdded': 'Task added successfully',
      'taskUpdated': 'Task updated successfully',
      'taskDeleted': 'Task deleted successfully',
    },
    'fr': {
      'appTitle': 'Gestionnaire de Tâches',
      'home': 'Accueil',
      'tasks': 'Tâches',
      'profile': 'Profil',
      'addTask': 'Ajouter une tâche',
      'deleteTask': 'Supprimer la tâche',
      'areYouSure': 'Êtes-vous sûr ?',
      'cancel': 'Annuler',
      'confirm': 'Confirmer',
      'noTasks': 'Aucune tâche trouvée',
      'totalTasks': 'Total des tâches',
      'completed': 'Terminées',
      'pending': 'En attente',
      'taskTitle': 'Titre de la tâche',
      'taskDescription': 'Description',
      'dueDate': 'Date d\'échéance',
      'priority': 'Priorité',
      'save': 'Enregistrer',
      'errorLoadingTasks': 'Erreur lors du chargement des tâches',
      'retry': 'Réessayer',
      'low': 'Basse',
      'medium': 'Moyenne',
      'high': 'Haute',
      'deleteConfirmation': 'Êtes-vous sûr de vouloir supprimer cette tâche ?',
      'taskAdded': 'Tâche ajoutée avec succès',
      'taskUpdated': 'Tâche mise à jour avec succès',
      'taskDeleted': 'Tâche supprimée avec succès',
    },
  };

  String translate(String key) {
    return _localizedValues[locale.languageCode]?[key] ?? key;
  }
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'fr'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    return AppLocalizations(locale);
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<AppLocalizations> old) {
    return false;
  }
}