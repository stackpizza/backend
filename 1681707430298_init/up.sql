SET check_function_bodies = false;
CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;
COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';
CREATE TABLE public.pizza_menu (
    id integer NOT NULL,
    image text NOT NULL,
    weight numeric NOT NULL,
    title text NOT NULL,
    ingredients text NOT NULL,
    price numeric NOT NULL
);
CREATE SEQUENCE public.pizza_menu_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.pizza_menu_id_seq OWNED BY public.pizza_menu.id;
ALTER TABLE ONLY public.pizza_menu ALTER COLUMN id SET DEFAULT nextval('public.pizza_menu_id_seq'::regclass);
ALTER TABLE ONLY public.pizza_menu
    ADD CONSTRAINT pizza_menu_pkey PRIMARY KEY (id);
