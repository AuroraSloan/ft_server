<?php
/**
 * https://wordpress.org/support/article/editing-wp-config-php/

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'ft_server_db' );

/** MySQL database username */
define( 'DB_USER', 'reviewer' );

/** MySQL database password */
define( 'DB_PASSWORD', 'password' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 */
define('AUTH_KEY',         '%Hakelf]I Pl>M}X7X-UxvTvr(2RR-v)S{H?7 ~3 Q8v}Gpm5kz>bh,noQV@J?0|');
define('SECURE_AUTH_KEY',  'OCzj8~|W:{UF5HwgDN$LMF).Rytb^#xnyi`6G67_rJ^Y$2{J@HB.dj5zOHw_-BK7');
define('LOGGED_IN_KEY',    'Kbi<&:R,{Na21m%=HnWCYSa0Bn2DA3>+N`,0*O;IHzA[}HjG/q-ViIQ4+5NFI:8J');
define('NONCE_KEY',        'o4~E{n3<dlzbo3qb{x4)PV~-6|1J1+EM[4LA;pIO,&|o&+<7!n-v5PK9Wd5|3|H[');
define('AUTH_SALT',        'K!VQJc,BP_sjp(6QT%>,QR&~WD3@<E:|Njy@84ul<ZA#Ygytw<qj:e-*c^O-gdJv');
define('SECURE_AUTH_SALT', 'sSMS[gD_k*dP h!R>7Hb%+4d9-q~<^[rsUB=0M#4>4s=@_Fc,glpx1nNk+&n8*-4');
define('LOGGED_IN_SALT',   'c)%G=@`k5.B-9Oc<{94+p}eR5$Dg-~tf?+e-[HiQ1H<+iGDyK^&H[`>FBpo?v|n{');
define('NONCE_SALT',       'X<fuEU8iq~m3H>Q-{ZX `apo-Nx4n+c+_~~|n m3AzX>ps<+Elq|tcs`3VpCbx!?');
/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'ft_server_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
