/* 
This file is auto generated by pgx.

The ordering of items is not stable, it is driven by a dependency graph.
*/

-- src/fixed_size.rs:5
-- custom_types::fixed_size::FixedF32Array
CREATE TYPE FixedF32Array;

-- src/fixed_size.rs:5
-- custom_types::fixed_size::fixedf32array_in
CREATE OR REPLACE FUNCTION "fixedf32array_in"(
	"input" cstring /* &std::ffi::c_str::CStr */
) RETURNS FixedF32Array /* pgx::datum::varlena::PgVarlena<custom_types::fixed_size::FixedF32Array> */
IMMUTABLE PARALLEL SAFE STRICT
LANGUAGE c /* Rust */
AS 'MODULE_PATHNAME', 'fixedf32array_in_wrapper';

-- src/fixed_size.rs:5
-- custom_types::fixed_size::fixedf32array_out
CREATE OR REPLACE FUNCTION "fixedf32array_out"(
	"input" FixedF32Array /* pgx::datum::varlena::PgVarlena<custom_types::fixed_size::FixedF32Array> */
) RETURNS cstring /* &std::ffi::c_str::CStr */
IMMUTABLE PARALLEL SAFE STRICT
LANGUAGE c /* Rust */
AS 'MODULE_PATHNAME', 'fixedf32array_out_wrapper';

-- src/fixed_size.rs:5
-- custom_types::fixed_size::FixedF32Array
CREATE TYPE FixedF32Array (
	INTERNALLENGTH = variable,
	INPUT = fixedf32array_in, /* custom_types::fixed_size::fixedf32array_in */
	OUTPUT = fixedf32array_out, /* custom_types::fixed_size::fixedf32array_out */
	STORAGE = extended
);

-- src/fixed_size.rs:33
-- custom_types::fixed_size::fixedf32array_distance
CREATE OR REPLACE FUNCTION "fixedf32array_distance"(
	"left" FixedF32Array, /* pgx::datum::varlena::PgVarlena<custom_types::fixed_size::FixedF32Array> */
	"right" FixedF32Array /* pgx::datum::varlena::PgVarlena<custom_types::fixed_size::FixedF32Array> */
) RETURNS double precision /* f64 */
IMMUTABLE PARALLEL SAFE STRICT
LANGUAGE c /* Rust */
AS 'MODULE_PATHNAME', 'fixedf32array_distance_wrapper';
-- src/fixed_size.rs:33
-- custom_types::fixed_size::fixedf32array_distance
CREATE OPERATOR <#> (
	PROCEDURE="fixedf32array_distance",
	LEFTARG=FixedF32Array, /* pgx::datum::varlena::PgVarlena<custom_types::fixed_size::FixedF32Array> */
	RIGHTARG=FixedF32Array /* pgx::datum::varlena::PgVarlena<custom_types::fixed_size::FixedF32Array> */

);

-- src/fixed_size.rs:43
-- custom_types::fixed_size::fixedf32array_add
CREATE OR REPLACE FUNCTION "fixedf32array_add"(
	"left" FixedF32Array, /* pgx::datum::varlena::PgVarlena<custom_types::fixed_size::FixedF32Array> */
	"right" FixedF32Array /* pgx::datum::varlena::PgVarlena<custom_types::fixed_size::FixedF32Array> */
) RETURNS FixedF32Array /* pgx::datum::varlena::PgVarlena<custom_types::fixed_size::FixedF32Array> */
IMMUTABLE PARALLEL SAFE STRICT
LANGUAGE c /* Rust */
AS 'MODULE_PATHNAME', 'fixedf32array_add_wrapper';
-- src/fixed_size.rs:43
-- custom_types::fixed_size::fixedf32array_add
CREATE OPERATOR + (
	PROCEDURE="fixedf32array_add",
	LEFTARG=FixedF32Array, /* pgx::datum::varlena::PgVarlena<custom_types::fixed_size::FixedF32Array> */
	RIGHTARG=FixedF32Array /* pgx::datum::varlena::PgVarlena<custom_types::fixed_size::FixedF32Array> */

);

-- src/complex.rs:10
-- custom_types::complex::Animals
CREATE TYPE Animals;

-- src/complex.rs:10
-- custom_types::complex::animals_in
CREATE OR REPLACE FUNCTION "animals_in"(
	"input" cstring /* &std::ffi::c_str::CStr */
) RETURNS Animals /* custom_types::complex::Animals */
IMMUTABLE PARALLEL SAFE STRICT
LANGUAGE c /* Rust */
AS 'MODULE_PATHNAME', 'animals_in_wrapper';

-- src/complex.rs:10
-- custom_types::complex::animals_out
CREATE OR REPLACE FUNCTION "animals_out"(
	"input" Animals /* custom_types::complex::Animals */
) RETURNS cstring /* &std::ffi::c_str::CStr */
IMMUTABLE PARALLEL SAFE STRICT
LANGUAGE c /* Rust */
AS 'MODULE_PATHNAME', 'animals_out_wrapper';

-- src/complex.rs:10
-- custom_types::complex::Animals
CREATE TYPE Animals (
	INTERNALLENGTH = variable,
	INPUT = animals_in, /* custom_types::complex::animals_in */
	OUTPUT = animals_out, /* custom_types::complex::animals_out */
	STORAGE = extended
);

-- src/complex.rs:16
-- custom_types::complex::known_animals
CREATE OR REPLACE FUNCTION "known_animals"() RETURNS Animals /* custom_types::complex::Animals */
STRICT
LANGUAGE c /* Rust */
AS 'MODULE_PATHNAME', 'known_animals_wrapper';

-- src/complex.rs:24
-- custom_types::complex::make_animals
CREATE OR REPLACE FUNCTION "make_animals"(
	"animals" text[], /* pgx::datum::array::Array<alloc::string::String> */
	"ages" integer[] /* pgx::datum::array::Array<i32> */
) RETURNS Animals /* custom_types::complex::Animals */
STRICT
LANGUAGE c /* Rust */
AS 'MODULE_PATHNAME', 'make_animals_wrapper';

-- src/complex.rs:42
-- custom_types::complex::add_animal
CREATE OR REPLACE FUNCTION "add_animal"(
	"animals" Animals, /* custom_types::complex::Animals */
	"name" text, /* alloc::string::String */
	"age" integer /* i32 */
) RETURNS Animals /* custom_types::complex::Animals */
STRICT
LANGUAGE c /* Rust */
AS 'MODULE_PATHNAME', 'add_animal_wrapper';

-- src/hstore_clone.rs:10
-- custom_types::hstore_clone::RustStore
CREATE TYPE RustStore;

-- src/hstore_clone.rs:10
-- custom_types::hstore_clone::ruststore_in
CREATE OR REPLACE FUNCTION "ruststore_in"(
	"input" cstring /* &std::ffi::c_str::CStr */
) RETURNS RustStore /* custom_types::hstore_clone::RustStore */
IMMUTABLE PARALLEL SAFE STRICT
LANGUAGE c /* Rust */
AS 'MODULE_PATHNAME', 'ruststore_in_wrapper';

-- src/hstore_clone.rs:10
-- custom_types::hstore_clone::ruststore_out
CREATE OR REPLACE FUNCTION "ruststore_out"(
	"input" RustStore /* custom_types::hstore_clone::RustStore */
) RETURNS cstring /* &std::ffi::c_str::CStr */
IMMUTABLE PARALLEL SAFE STRICT
LANGUAGE c /* Rust */
AS 'MODULE_PATHNAME', 'ruststore_out_wrapper';

-- src/hstore_clone.rs:10
-- custom_types::hstore_clone::RustStore
CREATE TYPE RustStore (
	INTERNALLENGTH = variable,
	INPUT = ruststore_in, /* custom_types::hstore_clone::ruststore_in */
	OUTPUT = ruststore_out, /* custom_types::hstore_clone::ruststore_out */
	STORAGE = extended
);

-- src/hstore_clone.rs:52
-- custom_types::hstore_clone::rstore_size
CREATE OR REPLACE FUNCTION "rstore_size"(
	"rstore" RustStore /* core::option::Option<custom_types::hstore_clone::RustStore> */
) RETURNS bigint /* i64 */
LANGUAGE c /* Rust */
AS 'MODULE_PATHNAME', 'rstore_size_wrapper';

-- src/hstore_clone.rs:19
-- custom_types::hstore_clone::rstore
CREATE OR REPLACE FUNCTION "rstore"(
	"key" text, /* alloc::string::String */
	"value" text /* alloc::string::String */
) RETURNS RustStore /* custom_types::hstore_clone::RustStore */
STRICT
LANGUAGE c /* Rust */
AS 'MODULE_PATHNAME', 'rstore_wrapper';

-- src/hstore_clone.rs:24
-- custom_types::hstore_clone::rstore_put
CREATE OR REPLACE FUNCTION "rstore_put"(
	"rstore" RustStore, /* core::option::Option<custom_types::hstore_clone::RustStore> */
	"key" text, /* alloc::string::String */
	"value" text /* alloc::string::String */
) RETURNS RustStore /* custom_types::hstore_clone::RustStore */
LANGUAGE c /* Rust */
AS 'MODULE_PATHNAME', 'rstore_put_wrapper';

-- src/hstore_clone.rs:36
-- custom_types::hstore_clone::rstore_remove
CREATE OR REPLACE FUNCTION "rstore_remove"(
	"rstore" RustStore, /* core::option::Option<custom_types::hstore_clone::RustStore> */
	"key" text /* alloc::string::String */
) RETURNS RustStore /* core::option::Option<custom_types::hstore_clone::RustStore> */
LANGUAGE c /* Rust */
AS 'MODULE_PATHNAME', 'rstore_remove_wrapper';

-- src/hstore_clone.rs:57
-- custom_types::hstore_clone::rstore_table
CREATE OR REPLACE FUNCTION "rstore_table"(
	"rstore" RustStore /* core::option::Option<custom_types::hstore_clone::RustStore> */
) RETURNS TABLE (
	"key" text,  /* alloc::string::String */
	"value" text  /* alloc::string::String */
)
LANGUAGE c /* Rust */
AS 'MODULE_PATHNAME', 'rstore_table_wrapper';

-- src/hstore_clone.rs:31
-- custom_types::hstore_clone::rstore_get
CREATE OR REPLACE FUNCTION "rstore_get"(
	"rstore" RustStore, /* core::option::Option<custom_types::hstore_clone::RustStore> */
	"key" text /* alloc::string::String */
) RETURNS text /* core::option::Option<alloc::string::String> */
LANGUAGE c /* Rust */
AS 'MODULE_PATHNAME', 'rstore_get_wrapper';

-- src/generic_enum.rs:8
-- custom_types::generic_enum::SomeValue
CREATE TYPE SomeValue AS ENUM (
	'One',
	'Two',
	'Three',
	'Four',
	'Five'
);

-- src/generic_enum.rs:29
-- custom_types::generic_enum::get_some_value_name
CREATE OR REPLACE FUNCTION "get_some_value_name"(
	"input" SomeValue /* custom_types::generic_enum::SomeValue */
) RETURNS text /* alloc::string::String */
STRICT
LANGUAGE c /* Rust */
AS 'MODULE_PATHNAME', 'get_some_value_name_wrapper';
