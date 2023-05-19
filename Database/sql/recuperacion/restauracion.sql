PGDMP         	                {            proyec    15.2    15.2 �               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    17319    proyec    DATABASE     |   CREATE DATABASE proyec WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE proyec;
                postgres    false                        3079    17320 	   uuid-ossp 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;
    DROP EXTENSION "uuid-ossp";
                   false                       0    0    EXTENSION "uuid-ossp"    COMMENT     W   COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';
                        false    2                       1255    17347    deleteamount(integer)    FUNCTION     �   CREATE FUNCTION public.deleteamount(p_idamount integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
    DELETE FROM "Amount" WHERE "idAmount" = P_idAmount;
END;$$;
 7   DROP FUNCTION public.deleteamount(p_idamount integer);
       public          postgres    false                       1255    17348    deleteblogs(integer)    FUNCTION     �   CREATE FUNCTION public.deleteblogs(p_idblogs integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
    DELETE FROM "Blogs" WHERE "idBlogs" = P_idBlogs;
END;$$;
 5   DROP FUNCTION public.deleteblogs(p_idblogs integer);
       public          postgres    false                       1255    17349    deletecity(integer)    FUNCTION     �   CREATE FUNCTION public.deletecity(p_idcity integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
    DELETE FROM "City" WHERE "idCity" = P_idCity;
END;$$;
 3   DROP FUNCTION public.deletecity(p_idcity integer);
       public          postgres    false                       1255    17350    deletedeforest_type(integer)    FUNCTION     �   CREATE FUNCTION public.deletedeforest_type(p_iddeforest integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
    DELETE FROM "Deforest_type" WHERE "idDeforest" = P_idDeforest;
END;$$;
 @   DROP FUNCTION public.deletedeforest_type(p_iddeforest integer);
       public          postgres    false                       1255    17351    deletedonation(integer)    FUNCTION     �   CREATE FUNCTION public.deletedonation(p_iddonation integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
    DELETE FROM "Donations" WHERE "idDonation" = P_idDonation;
END;$$;
 ;   DROP FUNCTION public.deletedonation(p_iddonation integer);
       public          postgres    false            	           1255    17352    deleteentity_user(integer)    FUNCTION     �   CREATE FUNCTION public.deleteentity_user(p_identityus integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
    DELETE FROM "entity_user" WHERE "idEntityus" = P_idEntityus;
END;$$;
 >   DROP FUNCTION public.deleteentity_user(p_identityus integer);
       public          postgres    false            
           1255    17353    deletefrecuency(integer)    FUNCTION     �   CREATE FUNCTION public.deletefrecuency(p_idfrecuency integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
    DELETE FROM "Frecuency" WHERE "idFrecuency" = P_idFrecuency;
END;$$;
 =   DROP FUNCTION public.deletefrecuency(p_idfrecuency integer);
       public          postgres    false                       1255    17354    deletegender(integer)    FUNCTION     �   CREATE FUNCTION public.deletegender(p_idgender integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
    DELETE FROM "Gender" WHERE "idGender" = P_idGender;
END;$$;
 7   DROP FUNCTION public.deletegender(p_idgender integer);
       public          postgres    false                       1255    17355     deletegovernment_entity(integer)    FUNCTION     �   CREATE FUNCTION public.deletegovernment_entity(p_idgoverenty integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
    DELETE FROM "Government_entity" WHERE "idGoverenty" = P_idGoverenty;
END;$$;
 E   DROP FUNCTION public.deletegovernment_entity(p_idgoverenty integer);
       public          postgres    false                       1255    17356    deletegradeaffectation(integer)    FUNCTION     �   CREATE FUNCTION public.deletegradeaffectation(p_idaffectation integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
    DELETE FROM "GradeAffectation" WHERE "idAffectation" = P_idAffectation;
END;$$;
 F   DROP FUNCTION public.deletegradeaffectation(p_idaffectation integer);
       public          postgres    false                       1255    17357    deletelocations(integer)    FUNCTION     �   CREATE FUNCTION public.deletelocations(p_idlocations integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
    DELETE FROM "locations" WHERE "idlocations" = P_idlocations;
END;$$;
 =   DROP FUNCTION public.deletelocations(p_idlocations integer);
       public          postgres    false                       1255    17358    deletepayment(integer)    FUNCTION     �   CREATE FUNCTION public.deletepayment(p_idpayment integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
    DELETE FROM "Payment" WHERE "idPayment" = P_idPayment;
END;$$;
 9   DROP FUNCTION public.deletepayment(p_idpayment integer);
       public          postgres    false                       1255    17359    deletephone(integer)    FUNCTION     �   CREATE FUNCTION public.deletephone(p_idphone integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
    DELETE FROM "Phone" WHERE "idPhone" = P_idPhone;
END;$$;
 5   DROP FUNCTION public.deletephone(p_idphone integer);
       public          postgres    false                       1255    17360    deletereport(integer)    FUNCTION     �   CREATE FUNCTION public.deletereport(p_idreport integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
    DELETE FROM "Report" WHERE "idReport" = P_idReport;
END;$$;
 7   DROP FUNCTION public.deletereport(p_idreport integer);
       public          postgres    false                       1255    17361    deleteuser(integer)    FUNCTION     �   CREATE FUNCTION public.deleteuser(p_iduser integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
    DELETE FROM "User" WHERE "idUser" = P_idUser;
END;
$$;
 3   DROP FUNCTION public.deleteuser(p_iduser integer);
       public          postgres    false                       1255    17362    deleteuser_type(integer)    FUNCTION     �   CREATE FUNCTION public.deleteuser_type(p_iduser_type integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
    DELETE FROM "user_type" WHERE "idUser_type" = P_idUser_type;
END;
$$;
 =   DROP FUNCTION public.deleteuser_type(p_iduser_type integer);
       public          postgres    false                       1255    17363    insertamount(money)    FUNCTION     �   CREATE FUNCTION public.insertamount(p_quantity money) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN

INSERT INTO public."Amount"(

	"Quantity"

)VALUES (

	p_Quantity

	);

END;
$$;
 5   DROP FUNCTION public.insertamount(p_quantity money);
       public          postgres    false                       1255    17364 }   insertblogs(character varying, character varying, timestamp without time zone, timestamp without time zone, boolean, integer)    FUNCTION     �  CREATE FUNCTION public.insertblogs(p_title character varying, p_content character varying, p_created_at timestamp without time zone, p_update_at timestamp without time zone, p_published boolean, p_iduser integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN


INSERT INTO public."Blogs"(

	"Title",
	"content",
	"created_at",
	"updated_at",
	"published",
	"idUser"

)VALUES (

	p_Title,
	p_Content,
	p_created_at,
	p_update_at,
	p_published,
	p_idUser

	);

END;
$$;
 �   DROP FUNCTION public.insertblogs(p_title character varying, p_content character varying, p_created_at timestamp without time zone, p_update_at timestamp without time zone, p_published boolean, p_iduser integer);
       public          postgres    false                       1255    17365 0   insertcity(character varying, character varying)    FUNCTION     �   CREATE FUNCTION public.insertcity(p_name character varying, p_addres character varying) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN


INSERT INTO public."City"(

	"Name",
    "addres"

)VALUES (

	p_Name,
    p_addres

	);

END
$$;
 W   DROP FUNCTION public.insertcity(p_name character varying, p_addres character varying);
       public          postgres    false                       1255    17366 &   insertdeforest_type(character varying)    FUNCTION     �   CREATE FUNCTION public.insertdeforest_type(p_name character varying) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN


INSERT INTO public."Deforest_type"(

	"Name"

)VALUES (

	p_Name

	);

END;
$$;
 D   DROP FUNCTION public.insertdeforest_type(p_name character varying);
       public          postgres    false                       1255    17367 F   insertdonations(character varying, integer, integer, integer, integer)    FUNCTION     �  CREATE FUNCTION public.insertdonations(p_name character varying, p_iduser integer, p_idpayment integer, p_idfrecuency integer, p_idamount integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN


INSERT INTO public."Donations"(

	"Name",
	"iduser",
	"idpayment",
	"idfrecuency",
	"idAmount"

)VALUES (

	p_Name,
	p_iduser,
	p_idpayment,
	p_idfrecuency,
	p_idAmount

	);

END;
$$;
 �   DROP FUNCTION public.insertdonations(p_name character varying, p_iduser integer, p_idpayment integer, p_idfrecuency integer, p_idamount integer);
       public          postgres    false                       1255    17368 #   insertentity_user(integer, integer)    FUNCTION       CREATE FUNCTION public.insertentity_user(p_idgoverenty integer, p_iduser integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN


INSERT INTO public."entity_user"(

	"idGoverenty",
    "idUser"

)VALUES (

	p_idGoverenty,
    p_idUser
	);

END;
$$;
 Q   DROP FUNCTION public.insertentity_user(p_idgoverenty integer, p_iduser integer);
       public          postgres    false                       1255    17369 "   insertfrecuency(character varying)    FUNCTION     �   CREATE FUNCTION public.insertfrecuency(p_name character varying) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN


INSERT INTO public."Frecuency"(

	"Name"

)VALUES (

	p_Name
	);

END;
$$;
 @   DROP FUNCTION public.insertfrecuency(p_name character varying);
       public          postgres    false                       1255    17370    insertgender(character varying)    FUNCTION     �   CREATE FUNCTION public.insertgender(p_category character varying) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN


INSERT INTO public."Gender"(

	"Category"

)VALUES (

	p_Category
	);

END;
$$;
 A   DROP FUNCTION public.insertgender(p_category character varying);
       public          postgres    false                       1255    17371 *   insertgovernment_entity(character varying)    FUNCTION     �   CREATE FUNCTION public.insertgovernment_entity(p_name character varying) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN


INSERT INTO public."Government_entity"(

	"Name"

)VALUES (

	p_Name
	);

END;
$$;
 H   DROP FUNCTION public.insertgovernment_entity(p_name character varying);
       public          postgres    false                       1255    17372 <   insertgradeaffectation(character varying, character varying)    FUNCTION     !  CREATE FUNCTION public.insertgradeaffectation(p_name character varying, p_description character varying) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN


INSERT INTO public."GradeAffectation"(

	"Name",
	"Description"

)VALUES (

	p_Name,
	p_Description

	);

END;
$$;
 h   DROP FUNCTION public.insertgradeaffectation(p_name character varying, p_description character varying);
       public          postgres    false                        1255    17373 =   insertlocations(numeric, numeric, character varying, integer)    FUNCTION     �  CREATE FUNCTION public.insertlocations(p_latitude numeric, p_longitude numeric, p_namelocation character varying, p_idreport integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN


INSERT INTO public."locations"(

	"latitude",
	"longitude",
	"nameLocation",
	"idReport"

)VALUES (

	p_latitude,
    p_longitude,
    p_nameLocation,
    p_idReport

	);

END;
$$;
 �   DROP FUNCTION public.insertlocations(p_latitude numeric, p_longitude numeric, p_namelocation character varying, p_idreport integer);
       public          postgres    false            !           1255    17374     insertpayment(character varying)    FUNCTION     �   CREATE FUNCTION public.insertpayment(p_name character varying) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN


INSERT INTO public."Payment"(

	"Name"

)VALUES (

	p_Name
	);

END;
$$;
 >   DROP FUNCTION public.insertpayment(p_name character varying);
       public          postgres    false            "           1255    17375    insertphone(character varying)    FUNCTION     �   CREATE FUNCTION public.insertphone(p_number character varying) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN


INSERT INTO public."Phone"(

	"Number"

)VALUES (

	p_Number

	);

END;
$$;
 >   DROP FUNCTION public.insertphone(p_number character varying);
       public          postgres    false            '           1255    17376 W   insertreport(character varying, timestamp without time zone, integer, integer, integer)    FUNCTION     �  CREATE FUNCTION public.insertreport(p_report character varying, p_datetime timestamp without time zone, p_iddeforest integer, p_idaffectation integer, p_idcity integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN


INSERT INTO public."Report"(

	"Report",
	"Datetime",
	"idDeforest",
	"idAffectation",
    "idCity"

)VALUES (

    p_Report,
	p_Datetime,
	p_idDeforest,
    p_idAffectation,
	p_idCity
	);

END;
$$;
 �   DROP FUNCTION public.insertreport(p_report character varying, p_datetime timestamp without time zone, p_iddeforest integer, p_idaffectation integer, p_idcity integer);
       public          postgres    false            0           1255    17377 �   insertuser(character varying, character varying, character varying, character varying, character varying, character varying, integer, integer, integer, integer)    FUNCTION     �  CREATE FUNCTION public.insertuser(p_first_name character varying, p_second_name character varying, p_first_surname character varying, p_second_surname character varying, p_email character varying, p_password character varying, p_idcity integer, p_idphone integer, p_idgender integer, p_iduser_type integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN


INSERT INTO public."User"(

	"First_Name",
	"Second_Name",
	"First_surname",
	"Second_surname",
	"Email",
	"Password",
	"idCity",
	"idPhone",
	"idGender",
	"idUser_type"

)VALUES (

	p_First_Name,
	p_Second_Name,
	p_First_surname,
	p_Second_surname,
	p_Email,
	p_Password,
	p_idCity,
	p_idPhone,
	p_idGender,
	p_idUser_type

	);

END;
$$;
 2  DROP FUNCTION public.insertuser(p_first_name character varying, p_second_name character varying, p_first_surname character varying, p_second_surname character varying, p_email character varying, p_password character varying, p_idcity integer, p_idphone integer, p_idgender integer, p_iduser_type integer);
       public          postgres    false            1           1255    17378 "   insertuser_type(character varying)    FUNCTION     �   CREATE FUNCTION public.insertuser_type(p_type character varying) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN


INSERT INTO public."user_type"(

	"Type"

)VALUES (
    p_Type
	);

END;
$$;
 @   DROP FUNCTION public.insertuser_type(p_type character varying);
       public          postgres    false            2           1255    17379    queryamount()    FUNCTION     �   CREATE FUNCTION public.queryamount() RETURNS TABLE(quantity money)
    LANGUAGE plpgsql
    AS $$
BEGIN
    RETURN QUERY SELECT

    amt."Quantity"
    FROM "Amount" amt
    ORDER BY "idAmount" asc;
END;
$$;
 $   DROP FUNCTION public.queryamount();
       public          postgres    false            3           1255    17380    queryblogs()    FUNCTION     �  CREATE FUNCTION public.queryblogs() RETURNS TABLE(p_title character varying, p_content character varying, p_created_at timestamp without time zone, p_updated_at timestamp without time zone, p_published boolean, p_iduser text)
    LANGUAGE plpgsql
    AS $$
BEGIN
     RETURN QUERY SELECT

    B."Title" as Title,
    B."content" as Content,
    B."created_at" as Create_at,
    B."updated_at" as Update_at,
    B."published" as published_at,
    concat("First_Name", ' ',"Second_Name",' ',"First_Name",' ',"Second_surname") as username

    FROM "Blogs" B
    JOIN "User" u ON B."idUser" = u."idUser"
    ORDER BY "idBlogs" ASC ;


END
$$;
 #   DROP FUNCTION public.queryblogs();
       public          postgres    false            4           1255    17381    querycity()    FUNCTION     
  CREATE FUNCTION public.querycity() RETURNS TABLE(p_name character varying, p_addres character varying)
    LANGUAGE plpgsql
    AS $$
BEGIN
     RETURN QUERY SELECT

    c."Name" as City,
    c.addres as Addres
    FROM "City" c
    ORDER BY "idCity" ASC;

END;
$$;
 "   DROP FUNCTION public.querycity();
       public          postgres    false            5           1255    17382    querydeforest_type()    FUNCTION     �   CREATE FUNCTION public.querydeforest_type() RETURNS TABLE(p_name character varying)
    LANGUAGE plpgsql
    AS $$
BEGIN
     RETURN QUERY SELECT

    Dtyp."Name" as Type
    FROM "Deforest_type" Dtyp
    ORDER BY "idDeforest" ASC;

END;
$$;
 +   DROP FUNCTION public.querydeforest_type();
       public          postgres    false            6           1255    17383    querydonations()    FUNCTION     �  CREATE FUNCTION public.querydonations() RETURNS TABLE(p_name character varying, p_iduser text, p_idpayment character varying, p_idfrecuency character varying, p_idamount money)
    LANGUAGE plpgsql
    AS $$
BEGIN
    RETURN QUERY SELECT
        D."Name" as Donationame,
        concat("First_Name", ' ',"Second_Name",' ',"First_Name",' ',"Second_surname") as username,
        p."Name" as paymentmethod,
        f."Name" as frecuency,
        a."Quantity"

    FROM "Donations" D

    JOIN "User" u ON D."iduser" = u."idUser"
    JOIN "Payment" p ON D."idpayment" = p."idPayment"
    JOIN "Frecuency" f ON  D."idfrecuency" = f."idFrecuency"
    JOIN "Amount" a ON D."idAmount" = a."idAmount"
    ORDER BY "idDonation" ASC ;
END
$$;
 '   DROP FUNCTION public.querydonations();
       public          postgres    false            7           1255    17384    queryentity_user()    FUNCTION     �   CREATE FUNCTION public.queryentity_user() RETURNS TABLE(p_idgoverenty integer, p_iduser integer)
    LANGUAGE plpgsql
    AS $$
BEGIN
    RETURN QUERY SELECT
    Eu."idGoverenty",
    Eu."idUser"

    FROM "entity_user" Eu;

END;
$$;
 )   DROP FUNCTION public.queryentity_user();
       public          postgres    false            8           1255    17385    queryfrecuency()    FUNCTION     �   CREATE FUNCTION public.queryfrecuency() RETURNS TABLE(p_name character varying)
    LANGUAGE plpgsql
    AS $$
BEGIN
    RETURN QUERY SELECT
    F."Name"

    FROM "Frecuency" F
    ORDER BY "idFrecuency" ASC ;

END;
$$;
 '   DROP FUNCTION public.queryfrecuency();
       public          postgres    false            9           1255    17386    querygender()    FUNCTION     �   CREATE FUNCTION public.querygender() RETURNS TABLE(p_category character varying)
    LANGUAGE plpgsql
    AS $$
BEGIN
    RETURN QUERY SELECT
    G."Category"

    FROM "Gender" G
    ORDER BY "idGender" ASC;

END;
$$;
 $   DROP FUNCTION public.querygender();
       public          postgres    false            :           1255    17387    querygovernment_entity()    FUNCTION     �   CREATE FUNCTION public.querygovernment_entity() RETURNS TABLE(p_name character varying)
    LANGUAGE plpgsql
    AS $$
BEGIN
    RETURN QUERY SELECT
    Ge."Name"

    FROM "Government_entity" Ge
    ORDER BY "idGoverenty" ASC;

END;
$$;
 /   DROP FUNCTION public.querygovernment_entity();
       public          postgres    false            ;           1255    17388    querygradeaffectation()    FUNCTION     .  CREATE FUNCTION public.querygradeaffectation() RETURNS TABLE(p_name character varying, p_description character varying)
    LANGUAGE plpgsql
    AS $$
BEGIN
    RETURN QUERY SELECT
    ga."Name" as grade,
    ga."Description"

    FROM "GradeAffectation" ga
    ORDER BY "idAffectation" ASC;

END;
$$;
 .   DROP FUNCTION public.querygradeaffectation();
       public          postgres    false                       1255    17389    queryidamount(integer)    FUNCTION     �   CREATE FUNCTION public.queryidamount(p_idamount integer) RETURNS TABLE(quantity money)
    LANGUAGE plpgsql
    AS $$
BEGIN
    RETURN QUERY SELECT

    amt."Quantity"
    FROM "Amount" amt
    WHERE amt."idAmount" = P_idAmount;
END;
$$;
 8   DROP FUNCTION public.queryidamount(p_idamount integer);
       public          postgres    false            <           1255    17390    queryidblogs(integer)    FUNCTION     �  CREATE FUNCTION public.queryidblogs(p_idblogs integer) RETURNS TABLE(p_title character varying, p_content character varying, p_created_at timestamp without time zone, p_updated_at timestamp without time zone, p_published boolean, p_iduser text)
    LANGUAGE plpgsql
    AS $$
BEGIN

RETURN QUERY SELECT
    B."Title" as Title,
    B."content" as Content,
    B."created_at" as Create_at,
    B."updated_at" as Update_at,
    B."published" as published_at,
    concat("First_Name", ' ',"Second_Name",' ',"First_Name",' ',"Second_surname") as username

    FROM "Blogs" B
    JOIN "User" u ON B."idUser" = u."idUser"
    WHERE B."idBlogs" = P_idBlogs;

END
$$;
 6   DROP FUNCTION public.queryidblogs(p_idblogs integer);
       public          postgres    false            =           1255    17391    queryidcity(integer)    FUNCTION     )  CREATE FUNCTION public.queryidcity(p_idcity integer) RETURNS TABLE(p_name character varying, p_addres character varying)
    LANGUAGE plpgsql
    AS $$
BEGIN
    RETURN QUERY SELECT

    c."Name" as City,
    c.addres as Addres
    FROM "City" c
    WHERE c."idCity" = P_idCity;
END;
$$;
 4   DROP FUNCTION public.queryidcity(p_idcity integer);
       public          postgres    false            >           1255    17392    queryiddeforest_type(integer)    FUNCTION       CREATE FUNCTION public.queryiddeforest_type(p_iddeforest integer) RETURNS TABLE(p_name character varying)
    LANGUAGE plpgsql
    AS $$
BEGIN
    RETURN QUERY SELECT

    Dtyp."Name" as Type
    FROM "Deforest_type" Dtyp
    WHERE Dtyp."idDeforest" = P_idDeforest;
END;
$$;
 A   DROP FUNCTION public.queryiddeforest_type(p_iddeforest integer);
       public          postgres    false            ?           1255    17393    queryiddonations(integer)    FUNCTION     �  CREATE FUNCTION public.queryiddonations(p_iddonation integer) RETURNS TABLE(p_name character varying, p_iduser text, p_idpayment character varying, p_idfrecuency character varying, p_idamount money)
    LANGUAGE plpgsql
    AS $$
BEGIN
    RETURN QUERY SELECT
        D."Name" as Donationame,
        concat("First_Name", ' ',"Second_Name",' ',"First_Name",' ',"Second_surname") as username,
        p."Name" as paymentmethod,
        f."Name" as frecuency,
        a."Quantity"

    FROM "Donations" D

    JOIN "User" u ON D."iduser" = u."idUser"
    JOIN "Payment" p ON D."idpayment" = p."idPayment"
    JOIN "Frecuency" f ON  D."idfrecuency" = f."idFrecuency"
    JOIN "Amount" a ON D."idAmount" = a."idAmount"
    WHERE D."idDonation" = P_idDonation;
END
$$;
 =   DROP FUNCTION public.queryiddonations(p_iddonation integer);
       public          postgres    false            @           1255    17394    queryidentity_user(integer)    FUNCTION     0  CREATE FUNCTION public.queryidentity_user(p_identityus integer) RETURNS TABLE(p_idgoverenty integer, p_iduser integer)
    LANGUAGE plpgsql
    AS $$
BEGIN
    RETURN QUERY SELECT
    Eu."idGoverenty",
    Eu."idUser"

    FROM "entity_user" Eu
    WHERE Eu."idEntityus" = P_idEntityus;
END
$$;
 ?   DROP FUNCTION public.queryidentity_user(p_identityus integer);
       public          postgres    false            A           1255    17395    queryidfrecuency(integer)    FUNCTION       CREATE FUNCTION public.queryidfrecuency(p_idfrecuency integer) RETURNS TABLE(p_name character varying)
    LANGUAGE plpgsql
    AS $$
BEGIN
    RETURN QUERY SELECT
    F."Name"

    FROM "Frecuency" F
    WHERE F."idFrecuency" = P_idFrecuency;
END
$$;
 >   DROP FUNCTION public.queryidfrecuency(p_idfrecuency integer);
       public          postgres    false            B           1255    17396    queryidgender(integer)    FUNCTION     �   CREATE FUNCTION public.queryidgender(p_idgender integer) RETURNS TABLE(p_category character varying)
    LANGUAGE plpgsql
    AS $$
BEGIN
    RETURN QUERY SELECT
    G."Category"

    FROM "Gender" G
    WHERE G."idGender" = P_idGender;
END
$$;
 8   DROP FUNCTION public.queryidgender(p_idgender integer);
       public          postgres    false            C           1255    17397 !   queryidgovernment_entity(integer)    FUNCTION       CREATE FUNCTION public.queryidgovernment_entity(p_idgoverenty integer) RETURNS TABLE(p_name character varying)
    LANGUAGE plpgsql
    AS $$
BEGIN
    RETURN QUERY SELECT
    Ge."Name"

    FROM "Government_entity" Ge
    WHERE Ge."idGoverenty" = P_idGoverenty;
END
$$;
 F   DROP FUNCTION public.queryidgovernment_entity(p_idgoverenty integer);
       public          postgres    false            D           1255    17398     queryidgradeaffectation(integer)    FUNCTION     _  CREATE FUNCTION public.queryidgradeaffectation(p_idaffectation integer) RETURNS TABLE(p_name character varying, p_description character varying)
    LANGUAGE plpgsql
    AS $$
BEGIN
    RETURN QUERY SELECT
    ga."Name" as grade,
    ga."Description"

    FROM "GradeAffectation" ga

    WHERE ga."idAffectation" = P_idAffectation;
END;
$$;
 G   DROP FUNCTION public.queryidgradeaffectation(p_idaffectation integer);
       public          postgres    false            E           1255    17399    queryidlocations(integer)    FUNCTION     �  CREATE FUNCTION public.queryidlocations(p_idlocations integer) RETURNS TABLE(p_latitude numeric, p_longitude numeric, p_namelocation character varying, p_idreport character varying)
    LANGUAGE plpgsql
    AS $$
BEGIN
    RETURN QUERY SELECT
        L."latitude",
        L."longitude",
        L."nameLocation",
        R."Report"

    FROM "locations" L
    JOIN "Report" R ON L."idReport" = R."idReport"
    WHERE L."idlocations" = P_idlocations;
END
$$;
 >   DROP FUNCTION public.queryidlocations(p_idlocations integer);
       public          postgres    false            F           1255    17400    queryidpayment(integer)    FUNCTION       CREATE FUNCTION public.queryidpayment(p_idpayment integer) RETURNS TABLE(p_name character varying)
    LANGUAGE plpgsql
    AS $$
BEGIN
    RETURN QUERY SELECT

    Py."Name" as payment_method
    FROM "Payment" Py
    WHERE Py."idPayment" = P_idPayment;
END;
$$;
 :   DROP FUNCTION public.queryidpayment(p_idpayment integer);
       public          postgres    false            G           1255    17401    queryidphone(integer)    FUNCTION     �   CREATE FUNCTION public.queryidphone(p_idphone integer) RETURNS TABLE(p_number character varying)
    LANGUAGE plpgsql
    AS $$
BEGIN
    RETURN QUERY SELECT
    P."Number"

    FROM "Phone" P
    WHERE P."idPhone" = P_idPhone;
END;
$$;
 6   DROP FUNCTION public.queryidphone(p_idphone integer);
       public          postgres    false            H           1255    17402    queryidreport(integer)    FUNCTION       CREATE FUNCTION public.queryidreport(p_idreport integer) RETURNS TABLE(p_report character varying, p_datetime timestamp without time zone, p_deforest character varying, p_affectation character varying, p_description character varying, p_city character varying, p_addres character varying)
    LANGUAGE plpgsql
    AS $$
BEGIN
    RETURN QUERY SELECT
        R."Report",
        R."Datetime",
        Dt."Name" as Type,
        ga."Name" as Grade,
        ga."Description",
        c."Name" as City,
        c.addres as Addres

    FROM "Report" R
    JOIN "Deforest_type" Dt ON R."idDeforest" = Dt."idDeforest"
    JOIN "GradeAffectation" ga ON R."idAffectation" = ga."idAffectation"
    JOIN "City" c ON R."idCity" = c."idCity"

    WHERE R."idReport" = P_idReport;
END;
$$;
 8   DROP FUNCTION public.queryidreport(p_idreport integer);
       public          postgres    false            I           1255    17403    queryiduser(integer)    FUNCTION       CREATE FUNCTION public.queryiduser(p_iduser integer) RETURNS TABLE(p_first_name character varying, p_second_name character varying, p_first_surname character varying, p_second_surname character varying, p_email character varying, p_password character varying, p_city character varying, p_address character varying, p_phone character varying, p_gender character varying, p_user_type character varying)
    LANGUAGE plpgsql
    AS $$
BEGIN
    RETURN QUERY SELECT
        U."First_Name",
        U."Second_Name",
        U."First_surname",
        U."Second_surname",
        U."Email",
        U."Password",
        c."Name" as City,
        c.addres as Addres,
        p."Number" as Phone,
        g."Category" as Gender,
        utyp."Type" as Type
    FROM "User" U
    JOIN "City" c ON U."idCity" = c."idCity"
    JOIN "Phone" p ON U."idPhone" = p."idPhone"
    JOIN "Gender" g ON U."idGender" = g."idGender"
    JOIN "user_type" utyp ON U."idUser_type" = utyp."idUser_type"
    WHERE U."idUser" = P_idUser;
END;
$$;
 4   DROP FUNCTION public.queryiduser(p_iduser integer);
       public          postgres    false                       1255    17404    queryiduser_type(integer)    FUNCTION       CREATE FUNCTION public.queryiduser_type(p_iduser_type integer) RETURNS TABLE(p_type character varying)
    LANGUAGE plpgsql
    AS $$
BEGIN
    RETURN QUERY SELECT

        Utyp."Type"

    FROM "user_type" Utyp
    WHERE Utyp."idUser_type" = P_idUser_type;
END;
$$;
 >   DROP FUNCTION public.queryiduser_type(p_iduser_type integer);
       public          postgres    false            .           1255    17405    querylocations()    FUNCTION     �  CREATE FUNCTION public.querylocations() RETURNS TABLE(p_latitude numeric, p_longitude numeric, p_namelocation character varying, p_idreport character varying)
    LANGUAGE plpgsql
    AS $$
BEGIN
    RETURN QUERY SELECT
        L."latitude",
        L."longitude",
        L."nameLocation",
        R."Report"

    FROM "locations" L
    JOIN "Report" R ON L."idReport" = R."idReport"
    ORDER BY idlocations ASC;
END
$$;
 '   DROP FUNCTION public.querylocations();
       public          postgres    false                       1255    17406    querypayment()    FUNCTION     �   CREATE FUNCTION public.querypayment() RETURNS TABLE(p_name character varying)
    LANGUAGE plpgsql
    AS $$
BEGIN
    RETURN QUERY SELECT

    Py."Name" as payment_method
    FROM "Payment" Py
    ORDER BY "idPayment" ASC;
END;
$$;
 %   DROP FUNCTION public.querypayment();
       public          postgres    false                       1255    17407    queryphone()    FUNCTION     �   CREATE FUNCTION public.queryphone() RETURNS TABLE(p_number character varying)
    LANGUAGE plpgsql
    AS $$
BEGIN
    RETURN QUERY SELECT
    P."Number"

    FROM "Phone" P
    ORDER BY "idPhone" ASC ;
END;
$$;
 #   DROP FUNCTION public.queryphone();
       public          postgres    false            J           1255    17408    queryreport()    FUNCTION     �  CREATE FUNCTION public.queryreport() RETURNS TABLE(p_report character varying, p_datetime timestamp without time zone, p_deforest character varying, p_affectation character varying, p_description character varying, p_city character varying, p_addres character varying)
    LANGUAGE plpgsql
    AS $$
BEGIN
    RETURN QUERY SELECT
        R."Report",
        R."Datetime",
        Dt."Name" as Type,
        ga."Name" as Grade,
        ga."Description",
        c."Name" as City,
        c.addres as Addres

    FROM "Report" R
    JOIN "Deforest_type" Dt ON R."idDeforest" = Dt."idDeforest"
    JOIN "GradeAffectation" ga ON R."idAffectation" = ga."idAffectation"
    JOIN "City" c ON R."idCity" = c."idCity"
    ORDER BY "idReport" ASC;

END;
$$;
 $   DROP FUNCTION public.queryreport();
       public          postgres    false            K           1255    17409    queryuser()    FUNCTION     �  CREATE FUNCTION public.queryuser() RETURNS TABLE(p_first_name character varying, p_second_name character varying, p_first_surname character varying, p_second_surname character varying, p_email character varying, p_password character varying, p_city character varying, p_address character varying, p_phone character varying, p_gender character varying, p_user_type character varying)
    LANGUAGE plpgsql
    AS $$
BEGIN
     RETURN QUERY SELECT
        U."First_Name",
        U."Second_Name",
        U."First_surname",
        U."Second_surname",
        U."Email",
        U."Password",
        c."Name" as City,
        c.addres as Addres,
        p."Number" as Phone,
        g."Category" as Gender,
        utyp."Type" as Type
    FROM "User" U
    JOIN "City" c ON U."idCity" = c."idCity"
    JOIN "Phone" p ON U."idPhone" = p."idPhone"
    JOIN "Gender" g ON U."idGender" = g."idGender"
    JOIN "user_type" utyp ON U."idUser_type" = utyp."idUser_type"
    ORDER BY "idUser" ASC;

END;
$$;
 "   DROP FUNCTION public.queryuser();
       public          postgres    false            L           1255    17410    queryuser_type()    FUNCTION     �   CREATE FUNCTION public.queryuser_type() RETURNS TABLE(p_type character varying)
    LANGUAGE plpgsql
    AS $$
BEGIN
     RETURN QUERY SELECT

        Utyp."Type"

        FROM "user_type" Utyp;

END;
$$;
 '   DROP FUNCTION public.queryuser_type();
       public          postgres    false            M           1255    17411    updateamount(integer, money)    FUNCTION     �   CREATE FUNCTION public.updateamount(p_idamount integer, p_quantity money) RETURNS void
    LANGUAGE plpgsql
    AS $$
    BEGIN
    UPDATE public."Amount" SET
       "Quantity" = p_quantity
        where "idAmount" = P_idAmount;

END;
$$;
 I   DROP FUNCTION public.updateamount(p_idamount integer, p_quantity money);
       public          postgres    false            N           1255    17412 �   updateblogs(integer, character varying, character varying, timestamp without time zone, timestamp without time zone, boolean, integer)    FUNCTION       CREATE FUNCTION public.updateblogs(p_idblogs integer, p_title character varying, p_content character varying, p_created_at timestamp without time zone, p_update_at timestamp without time zone, p_published boolean, p_iduser integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN


UPDATE public."Blogs" SET

	"Title" = p_Title,
	"content" = p_Content,
	"created_at" = p_created_at,
	"updated_at" = p_update_at,
	"published" = p_published,
	"idUser" = p_idUser

	WHERE "idBlogs" = P_idBlogs;

END;
$$;
 �   DROP FUNCTION public.updateblogs(p_idblogs integer, p_title character varying, p_content character varying, p_created_at timestamp without time zone, p_update_at timestamp without time zone, p_published boolean, p_iduser integer);
       public          postgres    false            O           1255    17413 9   updatecity(integer, character varying, character varying)    FUNCTION       CREATE FUNCTION public.updatecity(p_idcity integer, p_name character varying, p_addres character varying) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN


UPDATE public."City" SET

	"Name" = p_Name,
    "addres" = p_addres

	WHERE "idCity" = P_idCity;

END;
$$;
 i   DROP FUNCTION public.updatecity(p_idcity integer, p_name character varying, p_addres character varying);
       public          postgres    false            P           1255    17414 /   updatedeforest_type(integer, character varying)    FUNCTION     �   CREATE FUNCTION public.updatedeforest_type(p_iddeforest integer, p_name character varying) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN


UPDATE public."Deforest_type" SET

	"Name" = p_Name

	WHERE "idDeforest" = P_idDeforest;

END;
$$;
 Z   DROP FUNCTION public.updatedeforest_type(p_iddeforest integer, p_name character varying);
       public          postgres    false            Q           1255    17415 O   updatedonations(integer, character varying, integer, integer, integer, integer)    FUNCTION     �  CREATE FUNCTION public.updatedonations(p_iddonation integer, p_name character varying, p_iduser integer, p_idpayment integer, p_idfrecuency integer, p_idamount integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN


UPDATE public."Donations" SET

	"Name" = p_Name,
	"iduser" = p_iduser,
	"idpayment" = p_idpayment,
	"idfrecuency" = p_idfrecuency,
	"idAmount" = p_idAmount

	WHERE "idDonation" = P_idDonation;

END;
$$;
 �   DROP FUNCTION public.updatedonations(p_iddonation integer, p_name character varying, p_iduser integer, p_idpayment integer, p_idfrecuency integer, p_idamount integer);
       public          postgres    false            R           1255    17416 ,   updateentity_user(integer, integer, integer)    FUNCTION     -  CREATE FUNCTION public.updateentity_user(p_identityus integer, p_idgoverenty integer, p_iduser integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN


UPDATE public."entity_user" SET

	"idGoverenty" = p_idGoverenty,
	"idUser" = p_idUser

	WHERE "idEntityus" = P_idEntityus;

END;
$$;
 g   DROP FUNCTION public.updateentity_user(p_identityus integer, p_idgoverenty integer, p_iduser integer);
       public          postgres    false            S           1255    17417 +   updatefrecuency(integer, character varying)    FUNCTION     �   CREATE FUNCTION public.updatefrecuency(p_idfrecuency integer, p_name character varying) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN


UPDATE public."Frecuency" SET

	"Name" = p_Name

	WHERE "idFrecuency" = P_idFrecuency;

END;
$$;
 W   DROP FUNCTION public.updatefrecuency(p_idfrecuency integer, p_name character varying);
       public          postgres    false            T           1255    17418 (   updategender(integer, character varying)    FUNCTION     �   CREATE FUNCTION public.updategender(p_idgender integer, p_category character varying) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN


UPDATE public."Gender" SET

	"Category" = p_Category

	WHERE "idGender" = P_idGender;

END;
$$;
 U   DROP FUNCTION public.updategender(p_idgender integer, p_category character varying);
       public          postgres    false            U           1255    17419 3   updategovernment_entity(integer, character varying)    FUNCTION       CREATE FUNCTION public.updategovernment_entity(p_idgoverenty integer, p_name character varying) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN


UPDATE public."Government_entity" SET

	"Name" = p_Name

	WHERE "idGoverenty" = P_idGoverenty;

END;
$$;
 _   DROP FUNCTION public.updategovernment_entity(p_idgoverenty integer, p_name character varying);
       public          postgres    false            V           1255    17420 E   updategradeaffectation(integer, character varying, character varying)    FUNCTION     N  CREATE FUNCTION public.updategradeaffectation(p_idaffectation integer, p_name character varying, p_description character varying) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN


UPDATE public."GradeAffectation" SET

	"Name" = p_Name,
	"Description" = p_Description

	WHERE "idAffectation" = P_idAffectation;

END;
$$;
 �   DROP FUNCTION public.updategradeaffectation(p_idaffectation integer, p_name character varying, p_description character varying);
       public          postgres    false            W           1255    17421 F   updatelocations(integer, numeric, numeric, character varying, integer)    FUNCTION     �  CREATE FUNCTION public.updatelocations(p_idlocations integer, p_latitude numeric, p_longitude numeric, p_namelocation character varying, p_idreport integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN


UPDATE public."locations" SET

	"latitude" =  p_latitude ,
	"longitude" = p_longitude,
	"nameLocation" = p_nameLocation,
	"idReport" = p_idReport

	WHERE "idlocations" = P_idlocations;

END;
$$;
 �   DROP FUNCTION public.updatelocations(p_idlocations integer, p_latitude numeric, p_longitude numeric, p_namelocation character varying, p_idreport integer);
       public          postgres    false            X           1255    17422 )   updatepayment(integer, character varying)    FUNCTION     �   CREATE FUNCTION public.updatepayment(p_idpayment integer, p_name character varying) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN


UPDATE public."Payment" SET

	"Name" = p_Name
    WHERE "idPayment"= P_idPayment;

END;
$$;
 S   DROP FUNCTION public.updatepayment(p_idpayment integer, p_name character varying);
       public          postgres    false            Y           1255    17423 '   updatephone(integer, character varying)    FUNCTION     �   CREATE FUNCTION public.updatephone(p_idphone integer, p_number character varying) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN

UPDATE public."Phone" SET

	"Number" = p_Number
    WHERE "idPhone" = p_idPhone;

END;
$$;
 Q   DROP FUNCTION public.updatephone(p_idphone integer, p_number character varying);
       public          postgres    false            Z           1255    17424 `   updatereport(integer, character varying, timestamp without time zone, integer, integer, integer)    FUNCTION     �  CREATE FUNCTION public.updatereport(p_idreport integer, p_report character varying, p_datetime timestamp without time zone, p_iddeforest integer, p_idaffectation integer, p_idcity integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN


UPDATE public."Report" SET

    "Report" = p_Report,
    "Datetime"= p_Datetime,
    "idDeforest"= p_idDeforest,
    "idAffectation" = p_idAffectation,
	"idCity" = p_idCity

	WHERE "idReport" = P_idReport;

END;
$$;
 �   DROP FUNCTION public.updatereport(p_idreport integer, p_report character varying, p_datetime timestamp without time zone, p_iddeforest integer, p_idaffectation integer, p_idcity integer);
       public          postgres    false            [           1255    17425 �   updateuser(integer, character varying, character varying, character varying, character varying, character varying, character varying, integer, integer, integer, integer)    FUNCTION     �  CREATE FUNCTION public.updateuser(p_iduser integer, p_first_name character varying, p_second_name character varying, p_first_surname character varying, p_second_surname character varying, p_email character varying, p_password character varying, p_idcity integer, p_idphone integer, p_idgender integer, p_iduser_type integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN


UPDATE public."User" SET

	"First_Name" = p_First_Name,
	"Second_Name" = p_Second_Name,
	"First_surname" = p_First_surname,
	"Second_surname" = p_Second_surname,
	"Email" = p_Email,
	"Password" = p_Password,
	"idCity" = p_idCity,
	"idPhone" = p_idPhone,
	"idGender" = p_idGender,
	"idUser_type" = p_idUser_type

	WHERE "idUser" = P_idUser;

END;
$$;
 D  DROP FUNCTION public.updateuser(p_iduser integer, p_first_name character varying, p_second_name character varying, p_first_surname character varying, p_second_surname character varying, p_email character varying, p_password character varying, p_idcity integer, p_idphone integer, p_idgender integer, p_iduser_type integer);
       public          postgres    false            \           1255    17426 +   updateuser_type(integer, character varying)    FUNCTION     �   CREATE FUNCTION public.updateuser_type(p_iduser_type integer, p_type character varying) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN

UPDATE public."user_type" SET

	"Type" = p_Type

	WHERE "idUser_type" = P_idUser_type;

END;
$$;
 W   DROP FUNCTION public.updateuser_type(p_iduser_type integer, p_type character varying);
       public          postgres    false            �            1259    17427    GradeAffectation    TABLE     �   CREATE TABLE public."GradeAffectation" (
    "idAffectation" integer NOT NULL,
    "Name" character varying(60) NOT NULL,
    "Description" character varying(100)
);
 &   DROP TABLE public."GradeAffectation";
       public         heap    postgres    false            �            1259    17430    Affectation_idAffectation_seq    SEQUENCE     �   CREATE SEQUENCE public."Affectation_idAffectation_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."Affectation_idAffectation_seq";
       public          postgres    false    216                       0    0    Affectation_idAffectation_seq    SEQUENCE OWNED BY     j   ALTER SEQUENCE public."Affectation_idAffectation_seq" OWNED BY public."GradeAffectation"."idAffectation";
          public          postgres    false    217            �            1259    17431    Amount    TABLE     a   CREATE TABLE public."Amount" (
    "idAmount" integer NOT NULL,
    "Quantity" money NOT NULL
);
    DROP TABLE public."Amount";
       public         heap    postgres    false            �            1259    17434    Amount_idAmount_seq    SEQUENCE     �   CREATE SEQUENCE public."Amount_idAmount_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Amount_idAmount_seq";
       public          postgres    false    218                       0    0    Amount_idAmount_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Amount_idAmount_seq" OWNED BY public."Amount"."idAmount";
          public          postgres    false    219            �            1259    17435    Blogs    TABLE     0  CREATE TABLE public."Blogs" (
    "idBlogs" integer NOT NULL,
    "Title" character varying NOT NULL,
    content character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    published boolean NOT NULL,
    "idUser" integer
);
    DROP TABLE public."Blogs";
       public         heap    postgres    false            �            1259    17440    City    TABLE     �   CREATE TABLE public."City" (
    "idCity" integer NOT NULL,
    "Name" character varying(30) NOT NULL,
    addres character varying(300) NOT NULL
);
    DROP TABLE public."City";
       public         heap    postgres    false            �            1259    17443    City_idCity_seq    SEQUENCE     �   CREATE SEQUENCE public."City_idCity_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."City_idCity_seq";
       public          postgres    false    221                       0    0    City_idCity_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."City_idCity_seq" OWNED BY public."City"."idCity";
          public          postgres    false    222            �            1259    17444    Deforest_type    TABLE     w   CREATE TABLE public."Deforest_type" (
    "idDeforest" integer NOT NULL,
    "Name" character varying(100) NOT NULL
);
 #   DROP TABLE public."Deforest_type";
       public         heap    postgres    false            �            1259    17447    Deforest_type_idDeforest_seq    SEQUENCE     �   CREATE SEQUENCE public."Deforest_type_idDeforest_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public."Deforest_type_idDeforest_seq";
       public          postgres    false    223                       0    0    Deforest_type_idDeforest_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."Deforest_type_idDeforest_seq" OWNED BY public."Deforest_type"."idDeforest";
          public          postgres    false    224            �            1259    17448 	   Donations    TABLE     �   CREATE TABLE public."Donations" (
    "idDonation" integer NOT NULL,
    "Name" character varying(100) NOT NULL,
    iduser integer,
    idpayment integer,
    idfrecuency integer,
    "idAmount" integer
);
    DROP TABLE public."Donations";
       public         heap    postgres    false            �            1259    17451    Donations_idDonation_seq    SEQUENCE     �   CREATE SEQUENCE public."Donations_idDonation_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."Donations_idDonation_seq";
       public          postgres    false    225                       0    0    Donations_idDonation_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."Donations_idDonation_seq" OWNED BY public."Donations"."idDonation";
          public          postgres    false    226            �            1259    17452 	   Frecuency    TABLE     s   CREATE TABLE public."Frecuency" (
    "idFrecuency" integer NOT NULL,
    "Name" character varying(20) NOT NULL
);
    DROP TABLE public."Frecuency";
       public         heap    postgres    false            �            1259    17455    Frecuency_idFrecuency_seq    SEQUENCE     �   CREATE SEQUENCE public."Frecuency_idFrecuency_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."Frecuency_idFrecuency_seq";
       public          postgres    false    227                       0    0    Frecuency_idFrecuency_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."Frecuency_idFrecuency_seq" OWNED BY public."Frecuency"."idFrecuency";
          public          postgres    false    228            �            1259    17456    Gender    TABLE     q   CREATE TABLE public."Gender" (
    "idGender" integer NOT NULL,
    "Category" character varying(30) NOT NULL
);
    DROP TABLE public."Gender";
       public         heap    postgres    false            �            1259    17459    Gender_idGender_seq    SEQUENCE     �   CREATE SEQUENCE public."Gender_idGender_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Gender_idGender_seq";
       public          postgres    false    229                       0    0    Gender_idGender_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Gender_idGender_seq" OWNED BY public."Gender"."idGender";
          public          postgres    false    230            �            1259    17460    Government_entity    TABLE     {   CREATE TABLE public."Government_entity" (
    "idGoverenty" integer NOT NULL,
    "Name" character varying(30) NOT NULL
);
 '   DROP TABLE public."Government_entity";
       public         heap    postgres    false            �            1259    17463 !   Government_entity_idGoverenty_seq    SEQUENCE     �   CREATE SEQUENCE public."Government_entity_idGoverenty_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public."Government_entity_idGoverenty_seq";
       public          postgres    false    231                       0    0 !   Government_entity_idGoverenty_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public."Government_entity_idGoverenty_seq" OWNED BY public."Government_entity"."idGoverenty";
          public          postgres    false    232            �            1259    17464    Payment    TABLE     o   CREATE TABLE public."Payment" (
    "idPayment" integer NOT NULL,
    "Name" character varying(30) NOT NULL
);
    DROP TABLE public."Payment";
       public         heap    postgres    false            �            1259    17467    Payment_idPayment_seq    SEQUENCE     �   CREATE SEQUENCE public."Payment_idPayment_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."Payment_idPayment_seq";
       public          postgres    false    233                       0    0    Payment_idPayment_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."Payment_idPayment_seq" OWNED BY public."Payment"."idPayment";
          public          postgres    false    234            �            1259    17468    Phone    TABLE     m   CREATE TABLE public."Phone" (
    "idPhone" integer NOT NULL,
    "Number" character varying(30) NOT NULL
);
    DROP TABLE public."Phone";
       public         heap    postgres    false            �            1259    17471    Phone_idPhone_seq    SEQUENCE     �   CREATE SEQUENCE public."Phone_idPhone_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."Phone_idPhone_seq";
       public          postgres    false    235                       0    0    Phone_idPhone_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Phone_idPhone_seq" OWNED BY public."Phone"."idPhone";
          public          postgres    false    236            �            1259    17472    Report    TABLE       CREATE TABLE public."Report" (
    "idReport" integer NOT NULL,
    "Report" character varying(230) NOT NULL,
    "Datetime" timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "idDeforest" integer,
    "idAffectation" integer NOT NULL,
    "idCity" integer NOT NULL
);
    DROP TABLE public."Report";
       public         heap    postgres    false            �            1259    17476    Report_idReport_seq    SEQUENCE     �   CREATE SEQUENCE public."Report_idReport_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Report_idReport_seq";
       public          postgres    false    237                       0    0    Report_idReport_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Report_idReport_seq" OWNED BY public."Report"."idReport";
          public          postgres    false    238            �            1259    17477    User    TABLE       CREATE TABLE public."User" (
    "idUser" integer NOT NULL,
    "First_Name" character varying(15) NOT NULL,
    "Second_Name" character varying(15),
    "First_surname" character varying(15) NOT NULL,
    "Second_surname" character varying(15),
    "Email" character varying(200) NOT NULL,
    "Password" character varying(300) NOT NULL,
    "idCity" integer,
    "idPhone" integer,
    "idGender" integer,
    "idUser_type" integer,
    activated boolean,
    activation_token uuid,
    reset_password_token uuid,
    carated_om date
);
    DROP TABLE public."User";
       public         heap    postgres    false            �            1259    17482    User_idUser_seq    SEQUENCE     �   CREATE SEQUENCE public."User_idUser_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."User_idUser_seq";
       public          postgres    false    239                       0    0    User_idUser_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."User_idUser_seq" OWNED BY public."User"."idUser";
          public          postgres    false    240            �            1259    17483    blogs_idBlogs_seq    SEQUENCE     �   CREATE SEQUENCE public."blogs_idBlogs_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."blogs_idBlogs_seq";
       public          postgres    false    220                       0    0    blogs_idBlogs_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."blogs_idBlogs_seq" OWNED BY public."Blogs"."idBlogs";
          public          postgres    false    241            �            1259    17484    entity_user    TABLE     x   CREATE TABLE public.entity_user (
    "idEntityus" integer NOT NULL,
    "idGoverenty" integer,
    "idUser" integer
);
    DROP TABLE public.entity_user;
       public         heap    postgres    false            �            1259    17487    entity_user_idEntityus_seq    SEQUENCE     �   CREATE SEQUENCE public."entity_user_idEntityus_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."entity_user_idEntityus_seq";
       public          postgres    false    242                       0    0    entity_user_idEntityus_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."entity_user_idEntityus_seq" OWNED BY public.entity_user."idEntityus";
          public          postgres    false    243            �            1259    17488 	   locations    TABLE     �   CREATE TABLE public.locations (
    latitude numeric(10,8),
    longitude numeric(11,8),
    "nameLocation" character varying,
    "idReport" integer,
    idlocations integer NOT NULL
);
    DROP TABLE public.locations;
       public         heap    postgres    false            �            1259    17493    locations_idlocations_seq    SEQUENCE     �   CREATE SEQUENCE public.locations_idlocations_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.locations_idlocations_seq;
       public          postgres    false    244                       0    0    locations_idlocations_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.locations_idlocations_seq OWNED BY public.locations.idlocations;
          public          postgres    false    245            �            1259    17331    user    TABLE     |  CREATE TABLE public."user" (
    id uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    name character varying NOT NULL,
    email character varying NOT NULL,
    password character varying NOT NULL,
    active boolean DEFAULT false NOT NULL,
    activation_token uuid NOT NULL,
    reset_password_token uuid,
    created_on timestamp without time zone DEFAULT now() NOT NULL
);
    DROP TABLE public."user";
       public         heap    postgres    false    2            �            1259    17494 	   user_type    TABLE     m   CREATE TABLE public.user_type (
    "idUser_type" integer NOT NULL,
    "Type" character varying NOT NULL
);
    DROP TABLE public.user_type;
       public         heap    postgres    false            �            1259    17499    user_type_idUser_type_seq    SEQUENCE     �   CREATE SEQUENCE public."user_type_idUser_type_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."user_type_idUser_type_seq";
       public          postgres    false    246                       0    0    user_type_idUser_type_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."user_type_idUser_type_seq" OWNED BY public.user_type."idUser_type";
          public          postgres    false    247                       2604    17500    Amount idAmount    DEFAULT     x   ALTER TABLE ONLY public."Amount" ALTER COLUMN "idAmount" SET DEFAULT nextval('public."Amount_idAmount_seq"'::regclass);
 B   ALTER TABLE public."Amount" ALTER COLUMN "idAmount" DROP DEFAULT;
       public          postgres    false    219    218                       2604    17501    Blogs idBlogs    DEFAULT     t   ALTER TABLE ONLY public."Blogs" ALTER COLUMN "idBlogs" SET DEFAULT nextval('public."blogs_idBlogs_seq"'::regclass);
 @   ALTER TABLE public."Blogs" ALTER COLUMN "idBlogs" DROP DEFAULT;
       public          postgres    false    241    220                       2604    17502    City idCity    DEFAULT     p   ALTER TABLE ONLY public."City" ALTER COLUMN "idCity" SET DEFAULT nextval('public."City_idCity_seq"'::regclass);
 >   ALTER TABLE public."City" ALTER COLUMN "idCity" DROP DEFAULT;
       public          postgres    false    222    221                       2604    17503    Deforest_type idDeforest    DEFAULT     �   ALTER TABLE ONLY public."Deforest_type" ALTER COLUMN "idDeforest" SET DEFAULT nextval('public."Deforest_type_idDeforest_seq"'::regclass);
 K   ALTER TABLE public."Deforest_type" ALTER COLUMN "idDeforest" DROP DEFAULT;
       public          postgres    false    224    223                       2604    17504    Donations idDonation    DEFAULT     �   ALTER TABLE ONLY public."Donations" ALTER COLUMN "idDonation" SET DEFAULT nextval('public."Donations_idDonation_seq"'::regclass);
 G   ALTER TABLE public."Donations" ALTER COLUMN "idDonation" DROP DEFAULT;
       public          postgres    false    226    225                       2604    17505    Frecuency idFrecuency    DEFAULT     �   ALTER TABLE ONLY public."Frecuency" ALTER COLUMN "idFrecuency" SET DEFAULT nextval('public."Frecuency_idFrecuency_seq"'::regclass);
 H   ALTER TABLE public."Frecuency" ALTER COLUMN "idFrecuency" DROP DEFAULT;
       public          postgres    false    228    227                       2604    17506    Gender idGender    DEFAULT     x   ALTER TABLE ONLY public."Gender" ALTER COLUMN "idGender" SET DEFAULT nextval('public."Gender_idGender_seq"'::regclass);
 B   ALTER TABLE public."Gender" ALTER COLUMN "idGender" DROP DEFAULT;
       public          postgres    false    230    229                       2604    17507    Government_entity idGoverenty    DEFAULT     �   ALTER TABLE ONLY public."Government_entity" ALTER COLUMN "idGoverenty" SET DEFAULT nextval('public."Government_entity_idGoverenty_seq"'::regclass);
 P   ALTER TABLE public."Government_entity" ALTER COLUMN "idGoverenty" DROP DEFAULT;
       public          postgres    false    232    231                       2604    17508    GradeAffectation idAffectation    DEFAULT     �   ALTER TABLE ONLY public."GradeAffectation" ALTER COLUMN "idAffectation" SET DEFAULT nextval('public."Affectation_idAffectation_seq"'::regclass);
 Q   ALTER TABLE public."GradeAffectation" ALTER COLUMN "idAffectation" DROP DEFAULT;
       public          postgres    false    217    216                       2604    17509    Payment idPayment    DEFAULT     |   ALTER TABLE ONLY public."Payment" ALTER COLUMN "idPayment" SET DEFAULT nextval('public."Payment_idPayment_seq"'::regclass);
 D   ALTER TABLE public."Payment" ALTER COLUMN "idPayment" DROP DEFAULT;
       public          postgres    false    234    233                       2604    17510    Phone idPhone    DEFAULT     t   ALTER TABLE ONLY public."Phone" ALTER COLUMN "idPhone" SET DEFAULT nextval('public."Phone_idPhone_seq"'::regclass);
 @   ALTER TABLE public."Phone" ALTER COLUMN "idPhone" DROP DEFAULT;
       public          postgres    false    236    235                       2604    17511    Report idReport    DEFAULT     x   ALTER TABLE ONLY public."Report" ALTER COLUMN "idReport" SET DEFAULT nextval('public."Report_idReport_seq"'::regclass);
 B   ALTER TABLE public."Report" ALTER COLUMN "idReport" DROP DEFAULT;
       public          postgres    false    238    237                       2604    17512    User idUser    DEFAULT     p   ALTER TABLE ONLY public."User" ALTER COLUMN "idUser" SET DEFAULT nextval('public."User_idUser_seq"'::regclass);
 >   ALTER TABLE public."User" ALTER COLUMN "idUser" DROP DEFAULT;
       public          postgres    false    240    239                        2604    17513    entity_user idEntityus    DEFAULT     �   ALTER TABLE ONLY public.entity_user ALTER COLUMN "idEntityus" SET DEFAULT nextval('public."entity_user_idEntityus_seq"'::regclass);
 G   ALTER TABLE public.entity_user ALTER COLUMN "idEntityus" DROP DEFAULT;
       public          postgres    false    243    242            !           2604    17514    locations idlocations    DEFAULT     ~   ALTER TABLE ONLY public.locations ALTER COLUMN idlocations SET DEFAULT nextval('public.locations_idlocations_seq'::regclass);
 D   ALTER TABLE public.locations ALTER COLUMN idlocations DROP DEFAULT;
       public          postgres    false    245    244            "           2604    17515    user_type idUser_type    DEFAULT     �   ALTER TABLE ONLY public.user_type ALTER COLUMN "idUser_type" SET DEFAULT nextval('public."user_type_idUser_type_seq"'::regclass);
 F   ALTER TABLE public.user_type ALTER COLUMN "idUser_type" DROP DEFAULT;
       public          postgres    false    247    246            �          0    17431    Amount 
   TABLE DATA           :   COPY public."Amount" ("idAmount", "Quantity") FROM stdin;
    public          postgres    false    218   �V      �          0    17435    Blogs 
   TABLE DATA           k   COPY public."Blogs" ("idBlogs", "Title", content, created_at, updated_at, published, "idUser") FROM stdin;
    public          postgres    false    220   @W      �          0    17440    City 
   TABLE DATA           :   COPY public."City" ("idCity", "Name", addres) FROM stdin;
    public          postgres    false    221   �^      �          0    17444    Deforest_type 
   TABLE DATA           ?   COPY public."Deforest_type" ("idDeforest", "Name") FROM stdin;
    public          postgres    false    223   da      �          0    17448 	   Donations 
   TABLE DATA           g   COPY public."Donations" ("idDonation", "Name", iduser, idpayment, idfrecuency, "idAmount") FROM stdin;
    public          postgres    false    225   �a      �          0    17452 	   Frecuency 
   TABLE DATA           <   COPY public."Frecuency" ("idFrecuency", "Name") FROM stdin;
    public          postgres    false    227   'd      �          0    17456    Gender 
   TABLE DATA           :   COPY public."Gender" ("idGender", "Category") FROM stdin;
    public          postgres    false    229   ed      �          0    17460    Government_entity 
   TABLE DATA           D   COPY public."Government_entity" ("idGoverenty", "Name") FROM stdin;
    public          postgres    false    231   �d      �          0    17427    GradeAffectation 
   TABLE DATA           T   COPY public."GradeAffectation" ("idAffectation", "Name", "Description") FROM stdin;
    public          postgres    false    216   #e      �          0    17464    Payment 
   TABLE DATA           8   COPY public."Payment" ("idPayment", "Name") FROM stdin;
    public          postgres    false    233   /f      �          0    17468    Phone 
   TABLE DATA           6   COPY public."Phone" ("idPhone", "Number") FROM stdin;
    public          postgres    false    235   vf      �          0    17472    Report 
   TABLE DATA           m   COPY public."Report" ("idReport", "Report", "Datetime", "idDeforest", "idAffectation", "idCity") FROM stdin;
    public          postgres    false    237   tg                 0    17477    User 
   TABLE DATA           �   COPY public."User" ("idUser", "First_Name", "Second_Name", "First_surname", "Second_surname", "Email", "Password", "idCity", "idPhone", "idGender", "idUser_type", activated, activation_token, reset_password_token, carated_om) FROM stdin;
    public          postgres    false    239   [k                0    17484    entity_user 
   TABLE DATA           L   COPY public.entity_user ("idEntityus", "idGoverenty", "idUser") FROM stdin;
    public          postgres    false    242   �p                0    17488 	   locations 
   TABLE DATA           a   COPY public.locations (latitude, longitude, "nameLocation", "idReport", idlocations) FROM stdin;
    public          postgres    false    244   �q      �          0    17331    user 
   TABLE DATA           w   COPY public."user" (id, name, email, password, active, activation_token, reset_password_token, created_on) FROM stdin;
    public          postgres    false    215   �s                0    17494 	   user_type 
   TABLE DATA           :   COPY public.user_type ("idUser_type", "Type") FROM stdin;
    public          postgres    false    246   �s                  0    0    Affectation_idAffectation_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."Affectation_idAffectation_seq"', 56, true);
          public          postgres    false    217            !           0    0    Amount_idAmount_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Amount_idAmount_seq"', 33, true);
          public          postgres    false    219            "           0    0    City_idCity_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."City_idCity_seq"', 32, true);
          public          postgres    false    222            #           0    0    Deforest_type_idDeforest_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."Deforest_type_idDeforest_seq"', 11, true);
          public          postgres    false    224            $           0    0    Donations_idDonation_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."Donations_idDonation_seq"', 30, true);
          public          postgres    false    226            %           0    0    Frecuency_idFrecuency_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."Frecuency_idFrecuency_seq"', 5, true);
          public          postgres    false    228            &           0    0    Gender_idGender_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Gender_idGender_seq"', 3, true);
          public          postgres    false    230            '           0    0 !   Government_entity_idGoverenty_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."Government_entity_idGoverenty_seq"', 7, true);
          public          postgres    false    232            (           0    0    Payment_idPayment_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Payment_idPayment_seq"', 4, true);
          public          postgres    false    234            )           0    0    Phone_idPhone_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Phone_idPhone_seq"', 31, true);
          public          postgres    false    236            *           0    0    Report_idReport_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Report_idReport_seq"', 33, true);
          public          postgres    false    238            +           0    0    User_idUser_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."User_idUser_seq"', 31, true);
          public          postgres    false    240            ,           0    0    blogs_idBlogs_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."blogs_idBlogs_seq"', 68, true);
          public          postgres    false    241            -           0    0    entity_user_idEntityus_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."entity_user_idEntityus_seq"', 32, true);
          public          postgres    false    243            .           0    0    locations_idlocations_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.locations_idlocations_seq', 19, true);
          public          postgres    false    245            /           0    0    user_type_idUser_type_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."user_type_idUser_type_seq"', 4, true);
          public          postgres    false    247            .           2606    17517    Amount Amount_pk 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Amount"
    ADD CONSTRAINT "Amount_pk" PRIMARY KEY ("idAmount");
 >   ALTER TABLE ONLY public."Amount" DROP CONSTRAINT "Amount_pk";
       public            postgres    false    218            2           2606    17519    City City_pk 
   CONSTRAINT     T   ALTER TABLE ONLY public."City"
    ADD CONSTRAINT "City_pk" PRIMARY KEY ("idCity");
 :   ALTER TABLE ONLY public."City" DROP CONSTRAINT "City_pk";
       public            postgres    false    221            4           2606    17521    Deforest_type Deforest_pk 
   CONSTRAINT     e   ALTER TABLE ONLY public."Deforest_type"
    ADD CONSTRAINT "Deforest_pk" PRIMARY KEY ("idDeforest");
 G   ALTER TABLE ONLY public."Deforest_type" DROP CONSTRAINT "Deforest_pk";
       public            postgres    false    223            6           2606    17523    Donations Donation_pk 
   CONSTRAINT     a   ALTER TABLE ONLY public."Donations"
    ADD CONSTRAINT "Donation_pk" PRIMARY KEY ("idDonation");
 C   ALTER TABLE ONLY public."Donations" DROP CONSTRAINT "Donation_pk";
       public            postgres    false    225            8           2606    17525    Frecuency Frecuency_pk 
   CONSTRAINT     c   ALTER TABLE ONLY public."Frecuency"
    ADD CONSTRAINT "Frecuency_pk" PRIMARY KEY ("idFrecuency");
 D   ALTER TABLE ONLY public."Frecuency" DROP CONSTRAINT "Frecuency_pk";
       public            postgres    false    227            :           2606    17527    Gender Gender_pk 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Gender"
    ADD CONSTRAINT "Gender_pk" PRIMARY KEY ("idGender");
 >   ALTER TABLE ONLY public."Gender" DROP CONSTRAINT "Gender_pk";
       public            postgres    false    229            <           2606    17529    Government_entity Goverenty_pk 
   CONSTRAINT     k   ALTER TABLE ONLY public."Government_entity"
    ADD CONSTRAINT "Goverenty_pk" PRIMARY KEY ("idGoverenty");
 L   ALTER TABLE ONLY public."Government_entity" DROP CONSTRAINT "Goverenty_pk";
       public            postgres    false    231            ,           2606    17531 $   GradeAffectation GradeAffectation_pk 
   CONSTRAINT     s   ALTER TABLE ONLY public."GradeAffectation"
    ADD CONSTRAINT "GradeAffectation_pk" PRIMARY KEY ("idAffectation");
 R   ALTER TABLE ONLY public."GradeAffectation" DROP CONSTRAINT "GradeAffectation_pk";
       public            postgres    false    216            $           2606    17340 #   user PK_cace4a159ff9f2512dd42373760 
   CONSTRAINT     e   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT "PK_cace4a159ff9f2512dd42373760" PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public."user" DROP CONSTRAINT "PK_cace4a159ff9f2512dd42373760";
       public            postgres    false    215            >           2606    17533    Payment Payment_pk 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Payment"
    ADD CONSTRAINT "Payment_pk" PRIMARY KEY ("idPayment");
 @   ALTER TABLE ONLY public."Payment" DROP CONSTRAINT "Payment_pk";
       public            postgres    false    233            @           2606    17535    Phone Phone_pk 
   CONSTRAINT     W   ALTER TABLE ONLY public."Phone"
    ADD CONSTRAINT "Phone_pk" PRIMARY KEY ("idPhone");
 <   ALTER TABLE ONLY public."Phone" DROP CONSTRAINT "Phone_pk";
       public            postgres    false    235            B           2606    17537    Report Report_pk 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Report"
    ADD CONSTRAINT "Report_pk" PRIMARY KEY ("idReport");
 >   ALTER TABLE ONLY public."Report" DROP CONSTRAINT "Report_pk";
       public            postgres    false    237            &           2606    17344 #   user UQ_1f2c31911e3b5b4681fbc04971a 
   CONSTRAINT     n   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT "UQ_1f2c31911e3b5b4681fbc04971a" UNIQUE (activation_token);
 Q   ALTER TABLE ONLY public."user" DROP CONSTRAINT "UQ_1f2c31911e3b5b4681fbc04971a";
       public            postgres    false    215            (           2606    17346 #   user UQ_5b494fc54a2e3d122f17b393598 
   CONSTRAINT     r   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT "UQ_5b494fc54a2e3d122f17b393598" UNIQUE (reset_password_token);
 Q   ALTER TABLE ONLY public."user" DROP CONSTRAINT "UQ_5b494fc54a2e3d122f17b393598";
       public            postgres    false    215            *           2606    17342 #   user UQ_e12875dfb3b1d92d7d7c5377e22 
   CONSTRAINT     c   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT "UQ_e12875dfb3b1d92d7d7c5377e22" UNIQUE (email);
 Q   ALTER TABLE ONLY public."user" DROP CONSTRAINT "UQ_e12875dfb3b1d92d7d7c5377e22";
       public            postgres    false    215            D           2606    17539    User User_pk 
   CONSTRAINT     T   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_pk" PRIMARY KEY ("idUser");
 :   ALTER TABLE ONLY public."User" DROP CONSTRAINT "User_pk";
       public            postgres    false    239            0           2606    17541    Blogs blogs_pk 
   CONSTRAINT     U   ALTER TABLE ONLY public."Blogs"
    ADD CONSTRAINT blogs_pk PRIMARY KEY ("idBlogs");
 :   ALTER TABLE ONLY public."Blogs" DROP CONSTRAINT blogs_pk;
       public            postgres    false    220            F           2606    17543    entity_user entityus_pk 
   CONSTRAINT     _   ALTER TABLE ONLY public.entity_user
    ADD CONSTRAINT entityus_pk PRIMARY KEY ("idEntityus");
 A   ALTER TABLE ONLY public.entity_user DROP CONSTRAINT entityus_pk;
       public            postgres    false    242            H           2606    17545    locations locations_pk 
   CONSTRAINT     ]   ALTER TABLE ONLY public.locations
    ADD CONSTRAINT locations_pk PRIMARY KEY (idlocations);
 @   ALTER TABLE ONLY public.locations DROP CONSTRAINT locations_pk;
       public            postgres    false    244            J           2606    17547    user_type user_type_pk 
   CONSTRAINT     _   ALTER TABLE ONLY public.user_type
    ADD CONSTRAINT user_type_pk PRIMARY KEY ("idUser_type");
 @   ALTER TABLE ONLY public.user_type DROP CONSTRAINT user_type_pk;
       public            postgres    false    246            L           2606    17548    Donations Amount__fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Donations"
    ADD CONSTRAINT "Amount__fk" FOREIGN KEY ("idAmount") REFERENCES public."Amount"("idAmount");
 B   ALTER TABLE ONLY public."Donations" DROP CONSTRAINT "Amount__fk";
       public          postgres    false    218    3374    225            M           2606    17553    Donations Frecuency__fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Donations"
    ADD CONSTRAINT "Frecuency__fk" FOREIGN KEY (idfrecuency) REFERENCES public."Frecuency"("idFrecuency");
 E   ALTER TABLE ONLY public."Donations" DROP CONSTRAINT "Frecuency__fk";
       public          postgres    false    227    225    3384            P           2606    17558    Report IdAffectation___fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Report"
    ADD CONSTRAINT "IdAffectation___fk" FOREIGN KEY ("idAffectation") REFERENCES public."GradeAffectation"("idAffectation");
 G   ALTER TABLE ONLY public."Report" DROP CONSTRAINT "IdAffectation___fk";
       public          postgres    false    3372    216    237            N           2606    17563    Donations Payment__fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Donations"
    ADD CONSTRAINT "Payment__fk" FOREIGN KEY (idpayment) REFERENCES public."Payment"("idPayment");
 C   ALTER TABLE ONLY public."Donations" DROP CONSTRAINT "Payment__fk";
       public          postgres    false    233    225    3390            Q           2606    17568 )   Report Report_Deforest_type_idDeforest_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Report"
    ADD CONSTRAINT "Report_Deforest_type_idDeforest_fk" FOREIGN KEY ("idDeforest") REFERENCES public."Deforest_type"("idDeforest");
 W   ALTER TABLE ONLY public."Report" DROP CONSTRAINT "Report_Deforest_type_idDeforest_fk";
       public          postgres    false    3380    223    237            O           2606    17573    Donations User__fk    FK CONSTRAINT     {   ALTER TABLE ONLY public."Donations"
    ADD CONSTRAINT "User__fk" FOREIGN KEY (iduser) REFERENCES public."User"("idUser");
 @   ALTER TABLE ONLY public."Donations" DROP CONSTRAINT "User__fk";
       public          postgres    false    239    3396    225            S           2606    17578 "   User User_user_type_idUser_type_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_user_type_idUser_type_fk" FOREIGN KEY ("idUser_type") REFERENCES public.user_type("idUser_type");
 P   ALTER TABLE ONLY public."User" DROP CONSTRAINT "User_user_type_idUser_type_fk";
       public          postgres    false    246    239    3402            K           2606    17583    Blogs blogs_User_idUser_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Blogs"
    ADD CONSTRAINT "blogs_User_idUser_fk" FOREIGN KEY ("idUser") REFERENCES public."User"("idUser");
 H   ALTER TABLE ONLY public."Blogs" DROP CONSTRAINT "blogs_User_idUser_fk";
       public          postgres    false    3396    220    239            T           2606    17588    User idCity___fk    FK CONSTRAINT     {   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "idCity___fk" FOREIGN KEY ("idCity") REFERENCES public."City"("idCity");
 >   ALTER TABLE ONLY public."User" DROP CONSTRAINT "idCity___fk";
       public          postgres    false    221    3378    239            R           2606    17593    Report idCity___fk    FK CONSTRAINT     }   ALTER TABLE ONLY public."Report"
    ADD CONSTRAINT "idCity___fk" FOREIGN KEY ("idCity") REFERENCES public."City"("idCity");
 @   ALTER TABLE ONLY public."Report" DROP CONSTRAINT "idCity___fk";
       public          postgres    false    221    3378    237            U           2606    17598    User idGender___fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "idGender___fk" FOREIGN KEY ("idGender") REFERENCES public."Gender"("idGender");
 @   ALTER TABLE ONLY public."User" DROP CONSTRAINT "idGender___fk";
       public          postgres    false    229    3386    239            W           2606    17603    entity_user idGoverenty___fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.entity_user
    ADD CONSTRAINT "idGoverenty___fk" FOREIGN KEY ("idGoverenty") REFERENCES public."Government_entity"("idGoverenty");
 H   ALTER TABLE ONLY public.entity_user DROP CONSTRAINT "idGoverenty___fk";
       public          postgres    false    231    3388    242            V           2606    17608    User idPhone___fk    FK CONSTRAINT        ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "idPhone___fk" FOREIGN KEY ("idPhone") REFERENCES public."Phone"("idPhone");
 ?   ALTER TABLE ONLY public."User" DROP CONSTRAINT "idPhone___fk";
       public          postgres    false    3392    239    235            X           2606    17613    entity_user iduser___fk    FK CONSTRAINT     ~   ALTER TABLE ONLY public.entity_user
    ADD CONSTRAINT iduser___fk FOREIGN KEY ("idUser") REFERENCES public."User"("idUser");
 A   ALTER TABLE ONLY public.entity_user DROP CONSTRAINT iduser___fk;
       public          postgres    false    242    239    3396            Y           2606    17618 &   locations locations_Report_idReport_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.locations
    ADD CONSTRAINT "locations_Report_idReport_fk" FOREIGN KEY ("idReport") REFERENCES public."Report"("idReport");
 R   ALTER TABLE ONLY public.locations DROP CONSTRAINT "locations_Report_idReport_fk";
       public          postgres    false    237    3394    244            �   �   x�=��C!DcS�������afV��ۃyK�>�Z�+2��r�E� ������{����E����.���4�Ѹ��D�so:R�HHO���Vu$�Ŷ�ڇ���Ƨ�1X�/0Z�Kk!Ú֙�k��&'�����[�}|0�	� 3{*��O�S�Y�1�)=��1��>>      �   4  x��X�r�<�_�`�|��7Y3���jW�9��h	c�����{g��S��D8���n������RU$�
+��_ٽ���܉䃗�q�n���	τu����&Z�	�|w�>)��k�{��[+X��ۜ5��ﭻc?j�,q�u�ٷ��⑲a�N��I^�V����^��`_�u:cJ�t}#�c%�"�{)]Z��q��]R�e�����dy���Cϊ]~ޕ���K�iU&O�;��b���S�o�W�H�'4�eƬn[��|#��"�x���p^&^�˘�� z���6" ��+ÜT�l�� ���-0F�EE��e:��ܕ���\ҪB:�#R�[v�x�͢�ՋTB��Q�- ���3��u�����MX���Vޱ����Y�-���Li5~���M*nP%߶�����[�����- �1ά���Q�Ⴡ�:���n�]Q�E�(�aY��L�}�7o�����u��� l�'���]�h4*w�I�7
%��{�F� �G*�� �;�0[��FTY���!� $�^�"f���ϯ@���*:ϊ��E�+V��|��d�����r{���ԕ��gY�J��Q����!���6DG��êc��r�<Z�<?m��F:m(R@��܅�Ⱥ����&U��햊�Q72�pB��]�ˁ�i�qWl�9��i��04��%c�L�%�}!�����E���%�}F��_��Z�3���p�ģ�M����^�aZ���4�A�������.cꃪ�����zQ�P�m ��*Z���|��'I�3d���G.j�g��!�A냘�$v��vK�y\U1��|%?�j"�.5�a#(��WnghH�#	p�F.�Ck�}1��A�4�Z�#y��P-��)�e��+p��%�.����3�M�{n9�s#�f�Ի��q
cd��H�Z��J�����\�(��E�&^eM/�&���v
�+6}G�wZa~J��d��}����4����Ɓ����m�e����ߧ���x��g#t�>����j��K �^�/�lTWJ���r��k�tLt�y%�7�3�!8����6� Zhڱ"!�V7��D_�.�x�e�i{ǖ���� ��r�x/�Tm��G���5@|J~��^��h�󯂪F��6��"����n�H̥��h��r�U� P]�����tP�$��dp(�Py��0�d��H��Q�v� ��|�{D||���q%ȃH�w�Z>P�K�����Q;��A+gt�ӏ�Q��<�Hi���o�ߊ.Uz�H�������!���&���ֻ��E��.��ق���o��f�	B����Q�?�)��z��7��<-����";�Y6�f�"\
p\�����D+V���J(^�B٣���ta�(��m1p��� #�(g�@�C��$
Ѽj4���5�,92���>�x�e4�a2�����8�C��n(� _*�W�b���,�Eٌ�xѐc2��*?�+�$C֠z�A�2@	β3x Z7ȪkS˱v����b���'#��wZF�MSX(�Q�\���	G���	�<���Z�i�)�R�N�L�dQ��&)�a߉.�2��E�%e��@�aۯ���'˗o�55�y�4��)!N`���~��[�}P�lfE4=y����3��J�gs �6�A�x��<yz8'���~���5�C#%��X����oq�Ayޖt��"����Y���a�B�G�F��[���\,eW��c�̬~���*7�f9�9Պ9yz��W�;��M�ǟ�F\_^�����Wc��E0�	����)�V�)It����g_��>���.M�� +C��      �   �  x�ES�r�D�[_�U�P��������ϰ�n���4��;�q�f���d��WWEHz���!�Kh^�5���ׯl���qRQ����*�Ǖ��Q��u$��-C,��3q��#�<i�d���i��x���"+�̫�ـ;�=5*�����^=������	������#�q�&����~a�O�Y\=}�c����)n{e��pC~GS������@�)W����n���F��?|f�[��ҹ�8Z���&�AYgu�L�1hz��������PUV��٘#�Ha�����Ӎ�:faz�B�3i�*����A٨!`K{v���-���<���	��DH؍��+�w��Y���Dd�3�s!ڮ#�����=����9��5���J\+
�qXQ��������,n�W*$b�i�������·�ۙ��gQ�&*~� :(x]?]E4JTpNW�<�1̲_�e�^i5��y9]۩��y��>$2��d�m4A]�r&&��D
XC6+�R��]_,��%$Rqz���8�[���x�ze6��^i�UK�3��	A�8-sx���sA.k\����_�I�;��(p��z���s=��q?c�L������.B�J�PԺ;�G}	���2�������m���J��9���Y�٦V�ǃ�C^UY���~��b��a
��؎u�!!��U��n���3g��4�D�_���E���U�$�6R`      �   �   x�%ʻ1 �ڞ" N�[_�(N���Ɨd)gKN(`���B���@J��}�p��m�l��Tp�i���Qڬ��A�]wp�T^��=�)SH��G�\�[BO�(b���Dî��F�$V�͜K�߽.��1O      �     x�=SMk�0<?�
���Dr����4i�JS({���DT�ve9��~G6->kx�y3cE/�^-��b�k�x��>.6]��O�4���bRkRxt)
��7>������� %�T�8Z'����H�Hgp&J���Y#�&^9�.��i)Po�������Q�\,�W`猬��%�H�Y"��X���:g��ܙh�q��Y���B��w{�;�I�G}j! �0=rӷ�P���ؔ�C�����D�dHӣ;E�G#�m�BH/�N�G:Y�.������Z���`.�Q!�I��K>�BF2�jA[ga�G ]�1c�jIs�{�>�>��3�ό�D��k8���d���r���kX��F��s��歧E����3B�]^]�:�k�bTZ��,7�|�GO�cL�6B� w3�'z�1��3��er����~��9�$�)���⼤��:�a�) R��ҍ[+jT�ϩ�մ5�۹��M4Cg}X���Ъ+�*_���Ŵ�zΣ{4�n.�K>�N����#Ɣ�qo���?~�Ո      �   .   x�3��M�+.M��2�)��M-.)r�9�SalN�<��=... ur\      �   (   x�3��M,N.�����2�tK�M�1�9�K��b���� �4	�      �   v   x�U�;B!�ᚳ
V`⻾���X�HD��E��~�g��R=!s��#G�ņhk�Fx��9S���?!?8�(;3%����8�/	/z�a�7V�g6�Ѹ�jݬ���6��JD��11      �   �   x�m�;N1�k�s ��>PP�JK�Ǟ�������N�#�bx�֐�����f�[���,�������+�?��@S̲w��Ofs�`��f*�&��8�k�=}�PO�BA�x ��p��J$��p(<������xfz�T���Wm�L��f��u2fbS�˅=���N� 1(2�ؼ�t�Y������8�XX����{�q�w���obi<'V�?�Z�>�Y�������0sG�J�GM{^h+Ȅ����ˠ���
��      �   7   x�3�I,�J-I�2�(N�2�t��+�L�KL����2�tN,�HJL������ R+�      �   �   x���0k&O#`��?GH�B�pg�j��zW��I�$<-kT�ϟE��Nz����+��"=
��+|�@gA�����{9N�>�sҺ+ߎ�:O�Jqw7�i��U���tR��β�}�5����ĥ6�@-�9GG6�Z�����y���A�f��a<�x�[y�i�ʙ쾳%��:�:34o��ԈM	���$R���1v�8&ޥ5��}_,O�i���XO�uTj�ۿw��M      �   �  x��Vˮ�6\�_���zX�HZ��-d�-�:,(Q��@�W���X��lI�,
��MΙ�3����N^u���v�Kc�GD�ۢ�
^���!?IK8�iE~���9��?1�`�j8�����>�q��y�U8a͘+wEYe���~�5����A{��l����;D�y!v;��"8m�g@��h��\n{�p��Uj����]:���CԞɞM��%���� �#5᜞�g}�#��{S`��ȼ���X�`�'�\�N�*���x��v�w��(RN�Xpx�w�d�h����m�lVnm�Ħh��H�v�%a����ٟ��V��(AAu�� ��uW�&;1����\�B�=��(��7g�?P�,s���jHB���Ju�8��0/J�G'�9�)q�P
��}EyE>��h`�^�,��`-�e�1Gsדt+=����[�ؓ�ªB�z�!��P2d<Yn4_��ZR^�{�<�a�ˣaZ"@VC~�Q7�i0$����9�r>�1�-��`�����Е�����4
�ze��nzX��x[�L	?����7�k�Ȅ�W�B$���D������0�i�w�M��>��K�m��� '��p&6�/��QQ"dvY��$���A��TD\���,��=��N�C��T���B�vR=���X��As��$�A�s|c���S��=�FTT�体95��bN�Q�&����1Ƞ��O7 `�_��T<܄�<�XNM6�߁����h�q��ūt}��8��nl�&�F�tv�� a���� ��y�u)��2hR���t8��	��t���W�N�5�d�l�h�s�R��_c'{v������Y*Ŷ��nMsJR�����x���Q�%j]�'���7��c�έ�\�����q�@��X��I����{\Ai���([��E�7o�  Olv*��i�\M
�}�&� h���>M�e���,�:�)�����:�����\5����_�J          �  x�mV]S�8|��Wu��ruq��9	�� ��]��E�[D��$'ؿ�Z6l]�������Rh(�+t�D�il�J%'7I+�"�I��8��3mR*��\���!�O-|������Ms~�����rNk���*!h��TT�:�~{����39,���)�S@�#�]�=�$�f�F��.�V�\�C;�e�騈��ը�#��.}u] �إ��2�@�7��24�,�F��"��E���SI��]�>��No �pA׺ĩ�Ka�J�2�i���e�"ɝV�'�i7|�:��&���]mf&;�V�:'d� �$��9
��Q���$3��>\�qd?غ���������W�z\l���.M��45h�,͙1ZJ�Y��B���p�s��f㧱?� p��h��)�pM-��d2gZ;�M�$����=K���n�p����:�uN��Z�u!���*�KR���b��B��Y��^��yk؛�o����E7�+F�"�fBʒ;hY�蔘}�Xhc�U�ax܈,鏃�uDA���� ��|d�Ri�В3߹��1
S�1j5bt���
2�,|�l���_Fl��Ah�Һ86�}�}�3��񤠋Mt�ٯz��[��c�h*�Nԙa��+A���Ia)�M��5����8��?P��Ş��K#�4�
����o�޲�Jf,M	��hr����3�M��2N�f��uA��/�����h���%�����5�&�
�+�`O�3�o����Py�ϙ̻�1 x6c��4;h��>{����mͯ_��i�&���E��F@<b��+/hGwp0�
�,d�K}�LX��Fr-/�γ�#�j7�0z؊��۫�	z�Q�n
�[�eE���D�j�j5m��;q��;�\��Hc\s���R��$ϡ�;�Ơ�E��Ə�o�>t��n��V`��ʫ��w������d�����Y~���p��9�TЃP	�=3�]3�]Be,�4����8LZ~��Pj�m�Y=���ۘ',E#.q�%hEk&����o�<�a9�ި�w�y�V��Au0V���S�V���6� ��Ӕ	aJa�R���|��W�¬Hy�s��oq*V��P�{�zO�O���u!��͘����p��) �4�A� {O��w���|Y������)�~����@��(�<�gt��>�B̋�5�x+&��b{�*6��B{~`:&�4x���$\��о|O_�DQo���J�k5\��#(�)Rz�͹�Ua-���S���	1ەV���m5��\-����,>N8�aJ�u��$��3F�~j�:�СΝ�oy�/��}\"g�l �)V�T�D�=)3�ۨI\�R0�bfVMU�YTSybY��M�����ҕ�ȯs���0��d��������R3�`?�>}��;7w         �   x�%N�0��azcLv��s�_�CF�.:�ȁ=l��!�lt���u���BA#hPC	�X�{�.X3��c>z;m����g�Uk�	ј�6	r���.�*�<��M��tRםt˳�F����׾ ?��         1  x�ER�N1<�_��_~�&$PP��K.k`��4;"_�vkn������1#3$�2�T�0���/�8?�oK�"�V�9	)�x�E
 ��.���ݸ�M͈!+�H̠`� 2���rY���vm��j�a�|�zt��n7յ�ysWun���<�$@IY�ǀ���SvW˼ׯ���2N�al���"���}L����>m;KT��/	c��Y����1��h�t:՛�Q�$;`���@�7��ߊ��Y�m��>)U�-��TR醋���Q��V�ˋ�Q��n����h���w��R!L��w����:=�y��n�(�J�	8*X���Wfr�u\���tt��|jF׃�u'���%z��@��]����r:6����-�uSg�,��@����$(��P��}nk��or0d{�tVԘO� ����&w]׳aѠX!�P���%s��R��~�xh��:�[]w�k��`��h��ֆ��H(h^����q����@��#g�s�Q��
t#�����E�Ox;&��{	�~���}�F��[k� [X�s      �      x������ � �         J   x�3�LL����,.)JL�/�2�-.M,���2�L�+�LIL�O/MJ-�K��s�L8KS�*�K�S��b���� 1��     