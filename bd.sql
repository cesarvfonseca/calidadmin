ALTER TABLE `formatos` ADD `visible` BOOLEAN NOT NULL DEFAULT TRUE AFTER `area`, ADD `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP AFTER `visible`, ADD `updated_by` VARCHAR(15) NOT NULL AFTER `updated_at`, ADD `status` BOOLEAN NOT NULL DEFAULT TRUE AFTER `updated_by`;
ALTER TABLE `its` ADD `visible` BOOLEAN NOT NULL DEFAULT TRUE AFTER `fecha`, ADD `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP AFTER `visible`, ADD `updated_by` VARCHAR(15) NOT NULL AFTER `updated_at`, ADD `status` BOOLEAN NOT NULL DEFAULT TRUE AFTER `updated_by`;
ALTER TABLE `pacs` ADD `visible` BOOLEAN NOT NULL DEFAULT TRUE AFTER `fecha`, ADD `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP AFTER `visible`, ADD `updated_by` VARCHAR(15) NOT NULL AFTER `updated_at`, ADD `status` BOOLEAN NOT NULL DEFAULT TRUE AFTER `updated_by`;
ALTER TABLE `macs` ADD `visible` BOOLEAN NOT NULL DEFAULT TRUE AFTER `fecha`, ADD `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP AFTER `visible`, ADD `updated_by` VARCHAR(15) NOT NULL AFTER `updated_at`, ADD `status` BOOLEAN NOT NULL DEFAULT TRUE AFTER `updated_by`;