DROP TABLE IF EXISTS test.public.user_test;
-- clean up anything existing
CREATE TABLE IF NOT EXISTS test.public.user_test (
    username text not null default ''::text,
    password text not null,
    constraint users_pkey primary key (username),
    constraint users_username_key unique (username),
    constraint users_password_check check (
      (
        length(
          trim(
            both
            from
              password
          )
        ) > 1
      )
    ),
    constraint users_username_check check (
      (
        length(
          trim(
            both
            from
              username
          )
        ) > 1
      )
    )
  );