ALTER TABLE reservations DROP KEY event_id_and_sheet_id_idx;
ALTER TABLE reservations ADD KEY event_id_and_sheet_id_idx (event_id, sheet_id);
ALTER TABLE `reservations` ADD INDEX `ud` (`user_id`, `canceled_at`, `reserved_at`);
ALTER TABLE `reservations` ADD INDEX `event_cancel` (`event_id`, `canceled_at`);
ALTER TABLE `reservations` ADD INDEX `res` (`user_id`, `event_id`, `canceled_at`, `reserved_at`);
