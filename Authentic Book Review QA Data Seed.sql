use bookreviewqa;
-- Authentic Book Reviews QA Database - Total 17 Tables
SELECT * FROM `books`;
SELECT * FROM `cache`; -- Laravel's Creation
SELECT * FROM `cache_locks`; -- Laravel's Creation
SELECT * FROM `failed_jobs`; -- Laravel's Creation
SELECT * FROM `jobs`; -- Laravel's Creation
SELECT * FROM `job_batches`; -- Laravel's Creation
SELECT * FROM `libraries`;
SELECT * FROM `migrations`; -- Laravel's Creation
SELECT * FROM `options`;
SELECT * FROM `password_reset_tokens`; -- Laravel's Creation
SELECT * FROM `payments`;
SELECT * FROM `reminders`;
SELECT * FROM `reviews`;
SELECT * FROM `sessions`; -- Laravel's Creation
SELECT * FROM `subscriptions`;
SELECT * FROM `users`;
SELECT * FROM `promotes`;


-- Dumping data for Table: 'users' 
INSERT INTO `users` (`id`, `name`, `email`, `role`, `email_verified_at`, `active`, `password`, `amazon_pen_name`, `wallet_points`, `points_distribution`, `country`, `how_you_heard_about_us`, `cardholder_name`, `credit_card_number`, `expiration_date`, `security_code`, `billing_address`, `remember_token`, `unsubscribe_token`, `created_at`, `updated_at`) VALUES
(2, 'Rayhan', 'rah@gmail.com', 'user', '2024-10-03 07:15:08', 1, '$2y$12$', 'Pen Name: Rayhan', 100, null, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'juxXV8gJdtx','2024-10-03 07:14:34', '2024-11-11 16:09:55');

-- Dumping data for Table: 'books' 
INSERT INTO `books` (`id`, `user_id`, `title`, `subtitle`, `author`, `amazon_pricing`, `amazon_ebook_link`, `cover_image`, `genre`, `genre_2`, `pages`, `summary`, `review_requested`, `point_reserved`, `created_at`, `updated_at`) VALUES
(1, 1, 'Fairy Tale', 'Living in a World Filled with Magic', 'Faria Afrin', '100', 'https://www.amazon.com/Harry', 'coverimage.jpg', 'History', 'Entertainment', 300, 'This is Summary', 1, 10, '2024-10-03 13:23:08', '2024-11-09 14:36:23');

-- Dumping data for Table: 'libraries' 
INSERT INTO `libraries` (`id`, `book_id`, `review_id`, `request_date`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2024-10-03', '2024-10-03 07:25:07', '2024-10-07 11:53:56');

-- Dumping data for Table: 'options' 
INSERT INTO `options` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'welcome_point', '4', '2024-10-06 17:54:15', '2024-11-07 05:16:16');

-- Dumping data for Table: 'payments' 
INSERT INTO payments (`id`, `payment_id`, `payment_type`, `amount`, `currency`, `payer_name`, `payer_email`, `payment_status`, `payment_method`, `user_id`, `created_at`, `updated_at`)  VALUES 
(1, 'PAY123456', 'Subscription', '100.00', 'USD', 'Faria Afrin', 'fa@example.com', 'Completed', 'Credit Card', 'USER789', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- Dumping data for Table: 'reminders' 
INSERT INTO `reminders` (`id`, `review_id`, `deadline`, `overdue`, `overdue_notification_date`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-10-14', 1, '2024-11-17', '2024-11-17 08:16:29', '2024-11-17 08:17:25');

-- Dumping data for Table: 'reviews' 
INSERT INTO `reviews` (`id`, `book_id`, `author_id`, `reviewer_id`, `points`, `request_id`, `request_date`, `start_date`, `deadline`, `amazon_submission_date`, `amazon_rating`, `amazon_review_text`, `amazon_review_date`, `amazon_review_link`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 50, 1, '2024-10-04', '2024-10-04', '2024-10-07', '2024-10-04', 3.5, 'Informative Book.', '2024-10-04', 'https://www.amazon.com/gp/customer-reviews', 'completed', '2024-10-04 13:27:14', '2024-10-04 13:28:39');

-- Dumping data for Table: 'subscriptions' 
INSERT INTO `subscriptions` (`id`, `user_id`, `type`, `start`, `end`, `created_at`, `updated_at`) VALUES
(1, 1, 'Free plan until 2025', '2024-10-03', '2024-12-31', '2024-10-03 07:15:15', '2024-10-03 07:15:15');

-- Dumping data for Table: 'promotes' 
INSERT INTO `promotes` (`id`, `promotion_type`, `start_date`, `end_date`, `banner_image`, `created_at`, `updated_at`) VALUES
(1, 'half', '2024-11-27', '2024-12-04', 'banner.png', '2024-11-27 10:36:58', '2024-11-27 10:36:58');


-- Dumping data for Table: 'cache' 
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('admin@example.com|15.9.12.12', 'i:1;', 178771);

-- Dumping data for Table: `cache_locks`
-- Dumping data for Table: `failed_jobs`
-- Dumping data for Table: `jobs`
-- Dumping data for Table: `job_batches`

-- Dumping data for Table: `migrations`
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(11, '0001_01_01_000000_create_users_table', 1);

-- Dumping data for Table: `password_reset_tokens`
INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('faria@gmail.com', '$2y$12$TyAfPAJrbRu18SoD.xoSuGi9m', '2024-10-23 03:41:58');

-- Dumping data for Table: `sessions`
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('ivUF8zrE0q8xwkK6L', NULL, '1.7.10.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/57.3 (KHTML, like Gecko) Chrome/92.0.415.107 Safari/37.36', 'YTo0OntzOjY6Il90b2tlbiI7ciO2Ep7fXM6MzoibmV3IjthOjA6e319fQ==', 1733959);


