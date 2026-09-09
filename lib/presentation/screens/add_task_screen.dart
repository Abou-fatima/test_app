import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:task_manager_app/data/models/task.dart';
import 'package:task_manager_app/data/providers/task_provider.dart';
import 'package:task_manager_app/core/utils/validators.dart';
import 'package:task_manager_app/l10n/app_localizations.dart';

class AddTaskScreen extends HookWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final titleController = useTextEditingController();
    final descriptionController = useTextEditingController();
    final priority = useState(TaskPriority.medium);
    final dueDate = useState<DateTime?>(null);
    final isSubmitting = useState(false);
    final formKey = useMemoized(() => GlobalKey<FormState>());

    final appLocalizations = AppLocalizations.of(context);

    Future<void> _selectDate(BuildContext context) async {
      final picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(const Duration(days: 365)),
      );
      if (picked != null) {
        dueDate.value = picked;
      }
    }

    Future<void> _submitTask() async {
      if (!formKey.currentState!.validate()) return;

      isSubmitting.value = true;
      final task = Task(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        title: titleController.text.trim(),
        description: descriptionController.text.trim(),
        priority: priority.value,
        dueDate: dueDate.value,
        createdAt: DateTime.now(),
      );

      final success =
          await Provider.of<TaskProvider>(context, listen: false).addTask(task);

      isSubmitting.value = false;

      if (success) {
        if (context.mounted) {
          Navigator.pop(context, true);
        }
      } else {
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Failed to add task')),
          );
        }
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(appLocalizations?.translate('addTask') ?? 'Add Task'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              TextFormField(
                controller: titleController,
                decoration: InputDecoration(
                  labelText:
                      appLocalizations?.translate('taskTitle') ?? 'Task Title',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  prefixIcon: const Icon(Icons.title),
                ),
                validator: Validators.validateTaskTitle,
              ),
              const SizedBox(height: 16),

              // Description
              TextFormField(
                controller: descriptionController,
                decoration: InputDecoration(
                  labelText: appLocalizations?.translate('taskDescription') ??
                      'Description',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  prefixIcon: const Icon(Icons.description),
                  alignLabelWithHint: true,
                ),
                maxLines: 3,
                validator: Validators.validateTaskDescription,
              ),
              const SizedBox(height: 16),

              // Priority
              DropdownButtonFormField<TaskPriority>(
                value: priority.value,
                decoration: InputDecoration(
                  labelText:
                      appLocalizations?.translate('priority') ?? 'Priority',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  prefixIcon: const Icon(Icons.flag),
                ),
                items: TaskPriority.values.map((p) {
                  return DropdownMenuItem(
                    value: p,
                    child: Row(
                      children: [
                        Container(
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                            color: p.color,
                            shape: BoxShape.circle,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(appLocalizations
                                ?.translate(p.label.toLowerCase()) ??
                            p.label),
                      ],
                    ),
                  );
                }).toList(),
                onChanged: (value) {
                  if (value != null) priority.value = value;
                },
              ),
              const SizedBox(height: 16),

              // Due Date
              InkWell(
                onTap: () => _selectDate(context),
                child: InputDecorator(
                  decoration: InputDecoration(
                    labelText:
                        appLocalizations?.translate('dueDate') ?? 'Due Date',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    prefixIcon: const Icon(Icons.calendar_today),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        dueDate.value != null
                            ? '${dueDate.value!.day}/${dueDate.value!.month}/${dueDate.value!.year}'
                            : 'Select date',
                        style: TextStyle(
                          color: dueDate.value != null ? null : Colors.grey,
                        ),
                      ),
                      if (dueDate.value != null)
                        IconButton(
                          icon: const Icon(Icons.clear, size: 20),
                          onPressed: () => dueDate.value = null,
                        ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // Submit Button
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: isSubmitting.value ? null : _submitTask,
                  child: isSubmitting.value
                      ? const SizedBox(
                          width: 24,
                          height: 24,
                          child: CircularProgressIndicator(
                            color: Colors.white,
                            strokeWidth: 2,
                          ),
                        )
                      : Text(appLocalizations?.translate('save') ?? 'Save'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
