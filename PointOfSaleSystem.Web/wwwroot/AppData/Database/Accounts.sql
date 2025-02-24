PGDMP     *                    {            Accounts    15.1    15.1 �                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            !           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            "           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            #           1262    35756    Accounts    DATABASE     }   CREATE DATABASE "Accounts" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Kenya.1252';
    DROP DATABASE "Accounts";
                postgres    false            �            1259    36132    Accounts.Fiscal.FiscalPeriods    TABLE     1  CREATE TABLE public."Accounts.Fiscal.FiscalPeriods" (
    "fiscalPeriodID" integer NOT NULL,
    "fiscalPeriodNo" integer NOT NULL,
    "openDate" timestamp without time zone NOT NULL,
    "closeDate" timestamp without time zone NOT NULL,
    "isActive" integer NOT NULL,
    "isOpen" integer NOT NULL
);
 3   DROP TABLE public."Accounts.Fiscal.FiscalPeriods";
       public         heap    postgres    false            �            1259    36130 0   Accounts.Fiscal.FiscalPeriods_fiscalPeriodID_seq    SEQUENCE     �   CREATE SEQUENCE public."Accounts.Fiscal.FiscalPeriods_fiscalPeriodID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 I   DROP SEQUENCE public."Accounts.Fiscal.FiscalPeriods_fiscalPeriodID_seq";
       public          postgres    false    220            $           0    0 0   Accounts.Fiscal.FiscalPeriods_fiscalPeriodID_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."Accounts.Fiscal.FiscalPeriods_fiscalPeriodID_seq" OWNED BY public."Accounts.Fiscal.FiscalPeriods"."fiscalPeriodID";
          public          postgres    false    218            �            1259    36131 0   Accounts.Fiscal.FiscalPeriods_fiscalPeriodNo_seq    SEQUENCE     �   CREATE SEQUENCE public."Accounts.Fiscal.FiscalPeriods_fiscalPeriodNo_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 I   DROP SEQUENCE public."Accounts.Fiscal.FiscalPeriods_fiscalPeriodNo_seq";
       public          postgres    false    220            %           0    0 0   Accounts.Fiscal.FiscalPeriods_fiscalPeriodNo_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."Accounts.Fiscal.FiscalPeriods_fiscalPeriodNo_seq" OWNED BY public."Accounts.Fiscal.FiscalPeriods"."fiscalPeriodNo";
          public          postgres    false    219            �            1259    36871    Accounts.JV.AccountEntries    TABLE     5  CREATE TABLE public."Accounts.JV.AccountEntries" (
    "accountEntryID" integer NOT NULL,
    "creditAmount" double precision NOT NULL,
    "debitAmount" double precision NOT NULL,
    "creditSubAccountID" integer NOT NULL,
    "debitSubAccountID" integer NOT NULL,
    "journalVoucherID" integer NOT NULL
);
 0   DROP TABLE public."Accounts.JV.AccountEntries";
       public         heap    postgres    false            �            1259    36870 -   Accounts.JV.AccountEntries_accountEntryID_seq    SEQUENCE     �   CREATE SEQUENCE public."Accounts.JV.AccountEntries_accountEntryID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public."Accounts.JV.AccountEntries_accountEntryID_seq";
       public          postgres    false    240            &           0    0 -   Accounts.JV.AccountEntries_accountEntryID_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."Accounts.JV.AccountEntries_accountEntryID_seq" OWNED BY public."Accounts.JV.AccountEntries"."accountEntryID";
          public          postgres    false    239            �            1259    36854    Accounts.JV.JournalVouchers    TABLE     �  CREATE TABLE public."Accounts.JV.JournalVouchers" (
    "journalVoucherID" integer NOT NULL,
    description character varying(200) NOT NULL,
    "sourceReference" character varying(200) NOT NULL,
    amount double precision NOT NULL,
    "transactionDateTime" timestamp without time zone NOT NULL,
    "isAutomatic" integer NOT NULL,
    "isPosted" integer NOT NULL,
    "postedBySysUID" integer NOT NULL,
    "fiscalPeriodID" integer NOT NULL
);
 1   DROP TABLE public."Accounts.JV.JournalVouchers";
       public         heap    postgres    false            �            1259    36853 0   Accounts.JV.JournalVouchers_journalVoucherID_seq    SEQUENCE     �   CREATE SEQUENCE public."Accounts.JV.JournalVouchers_journalVoucherID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 I   DROP SEQUENCE public."Accounts.JV.JournalVouchers_journalVoucherID_seq";
       public          postgres    false    238            '           0    0 0   Accounts.JV.JournalVouchers_journalVoucherID_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."Accounts.JV.JournalVouchers_journalVoucherID_seq" OWNED BY public."Accounts.JV.JournalVouchers"."journalVoucherID";
          public          postgres    false    237            �            1259    35902    Accounts.Ledger.AccountClasses    TABLE     �   CREATE TABLE public."Accounts.Ledger.AccountClasses" (
    "accountClassID" integer NOT NULL,
    "className" character varying(255) NOT NULL,
    "accountTypeID" integer NOT NULL
);
 4   DROP TABLE public."Accounts.Ledger.AccountClasses";
       public         heap    postgres    false            �            1259    35901 1   Accounts.Ledger.AccountClasses_accountClassID_seq    SEQUENCE     �   CREATE SEQUENCE public."Accounts.Ledger.AccountClasses_accountClassID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 J   DROP SEQUENCE public."Accounts.Ledger.AccountClasses_accountClassID_seq";
       public          postgres    false    217            (           0    0 1   Accounts.Ledger.AccountClasses_accountClassID_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."Accounts.Ledger.AccountClasses_accountClassID_seq" OWNED BY public."Accounts.Ledger.AccountClasses"."accountClassID";
          public          postgres    false    216            �            1259    35893    Accounts.Ledger.AccountTypes    TABLE     �   CREATE TABLE public."Accounts.Ledger.AccountTypes" (
    "accountTypeID" integer NOT NULL,
    "accountTypeName" character varying(45) NOT NULL
);
 2   DROP TABLE public."Accounts.Ledger.AccountTypes";
       public         heap    postgres    false            �            1259    35892 .   Accounts.Ledger.AccountTypes_accountTypeID_seq    SEQUENCE     �   CREATE SEQUENCE public."Accounts.Ledger.AccountTypes_accountTypeID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 G   DROP SEQUENCE public."Accounts.Ledger.AccountTypes_accountTypeID_seq";
       public          postgres    false    215            )           0    0 .   Accounts.Ledger.AccountTypes_accountTypeID_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."Accounts.Ledger.AccountTypes_accountTypeID_seq" OWNED BY public."Accounts.Ledger.AccountTypes"."accountTypeID";
          public          postgres    false    214            �            1259    36244    Accounts.Ledger.Accounts    TABLE       CREATE TABLE public."Accounts.Ledger.Accounts" (
    "accountID" integer NOT NULL,
    "accountName" character varying(255) NOT NULL,
    "accountNo" integer,
    "isLocked" integer,
    "accountClassID" integer NOT NULL,
    "cashFlowCategoryID" integer
);
 .   DROP TABLE public."Accounts.Ledger.Accounts";
       public         heap    postgres    false            �            1259    36243 &   Accounts.Ledger.Accounts_accountID_seq    SEQUENCE     �   CREATE SEQUENCE public."Accounts.Ledger.Accounts_accountID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public."Accounts.Ledger.Accounts_accountID_seq";
       public          postgres    false    226            *           0    0 &   Accounts.Ledger.Accounts_accountID_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public."Accounts.Ledger.Accounts_accountID_seq" OWNED BY public."Accounts.Ledger.Accounts"."accountID";
          public          postgres    false    225            �            1259    36230 "   Accounts.Ledger.CashFlowCategories    TABLE     �   CREATE TABLE public."Accounts.Ledger.CashFlowCategories" (
    "cashFlowCategoryID" integer NOT NULL,
    "cashFlowCategoryName" character varying(255) NOT NULL,
    "cashFlowCategoryTypeID" integer NOT NULL
);
 8   DROP TABLE public."Accounts.Ledger.CashFlowCategories";
       public         heap    postgres    false            �            1259    36229 9   Accounts.Ledger.CashFlowCategories_cashFlowCategoryID_seq    SEQUENCE     �   CREATE SEQUENCE public."Accounts.Ledger.CashFlowCategories_cashFlowCategoryID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 R   DROP SEQUENCE public."Accounts.Ledger.CashFlowCategories_cashFlowCategoryID_seq";
       public          postgres    false    224            +           0    0 9   Accounts.Ledger.CashFlowCategories_cashFlowCategoryID_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."Accounts.Ledger.CashFlowCategories_cashFlowCategoryID_seq" OWNED BY public."Accounts.Ledger.CashFlowCategories"."cashFlowCategoryID";
          public          postgres    false    223            �            1259    36213 %   Accounts.Ledger.CashFlowCategoryTypes    TABLE     �   CREATE TABLE public."Accounts.Ledger.CashFlowCategoryTypes" (
    "cashFlowCategoryTypeID" integer NOT NULL,
    "cashFlowCategoryTypeName" character varying(255) NOT NULL
);
 ;   DROP TABLE public."Accounts.Ledger.CashFlowCategoryTypes";
       public         heap    postgres    false            �            1259    36212 ?   Accounts.Ledger.CashFlowCategoryType_cashFlowCategoryTypeID_seq    SEQUENCE     �   CREATE SEQUENCE public."Accounts.Ledger.CashFlowCategoryType_cashFlowCategoryTypeID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 X   DROP SEQUENCE public."Accounts.Ledger.CashFlowCategoryType_cashFlowCategoryTypeID_seq";
       public          postgres    false    222            ,           0    0 ?   Accounts.Ledger.CashFlowCategoryType_cashFlowCategoryTypeID_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."Accounts.Ledger.CashFlowCategoryType_cashFlowCategoryTypeID_seq" OWNED BY public."Accounts.Ledger.CashFlowCategoryTypes"."cashFlowCategoryTypeID";
          public          postgres    false    221            �            1259    36263    Accounts.Ledger.SubAccounts    TABLE     %  CREATE TABLE public."Accounts.Ledger.SubAccounts" (
    "subAccountID" integer NOT NULL,
    "subAccountName" character varying(255) NOT NULL,
    "currentBalance" double precision NOT NULL,
    "isActive" integer NOT NULL,
    "isLocked" integer NOT NULL,
    "accountID" integer NOT NULL
);
 1   DROP TABLE public."Accounts.Ledger.SubAccounts";
       public         heap    postgres    false            �            1259    36262 ,   Accounts.Ledger.SubAccounts_subAccountID_seq    SEQUENCE     �   CREATE SEQUENCE public."Accounts.Ledger.SubAccounts_subAccountID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public."Accounts.Ledger.SubAccounts_subAccountID_seq";
       public          postgres    false    228            -           0    0 ,   Accounts.Ledger.SubAccounts_subAccountID_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."Accounts.Ledger.SubAccounts_subAccountID_seq" OWNED BY public."Accounts.Ledger.SubAccounts"."subAccountID";
          public          postgres    false    227                        1259    45210 "   Inventory.Inventory.CustomerOrders    TABLE     W  CREATE TABLE public."Inventory.Inventory.CustomerOrders" (
    "customerOrderID" integer NOT NULL,
    "createdBySysUserID" integer NOT NULL,
    "dateTimeCreated" timestamp without time zone NOT NULL,
    "isOrderPaid" integer NOT NULL,
    "billIsPrinted" integer NOT NULL,
    "billNo" integer NOT NULL,
    "receiptNo" integer NOT NULL
);
 8   DROP TABLE public."Inventory.Inventory.CustomerOrders";
       public         heap    postgres    false                       1259    45258 -   Inventory.Inventory.CustomerOrders_billNo_seq    SEQUENCE     �   CREATE SEQUENCE public."Inventory.Inventory.CustomerOrders_billNo_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public."Inventory.Inventory.CustomerOrders_billNo_seq";
       public          postgres    false    256            .           0    0 -   Inventory.Inventory.CustomerOrders_billNo_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."Inventory.Inventory.CustomerOrders_billNo_seq" OWNED BY public."Inventory.Inventory.CustomerOrders"."billNo";
          public          postgres    false    258            �            1259    45209 6   Inventory.Inventory.CustomerOrders_customerOrderID_seq    SEQUENCE     �   CREATE SEQUENCE public."Inventory.Inventory.CustomerOrders_customerOrderID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 O   DROP SEQUENCE public."Inventory.Inventory.CustomerOrders_customerOrderID_seq";
       public          postgres    false    256            /           0    0 6   Inventory.Inventory.CustomerOrders_customerOrderID_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."Inventory.Inventory.CustomerOrders_customerOrderID_seq" OWNED BY public."Inventory.Inventory.CustomerOrders"."customerOrderID";
          public          postgres    false    255                       1259    45260 0   Inventory.Inventory.CustomerOrders_receiptNo_seq    SEQUENCE     �   CREATE SEQUENCE public."Inventory.Inventory.CustomerOrders_receiptNo_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 I   DROP SEQUENCE public."Inventory.Inventory.CustomerOrders_receiptNo_seq";
       public          postgres    false    256            0           0    0 0   Inventory.Inventory.CustomerOrders_receiptNo_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."Inventory.Inventory.CustomerOrders_receiptNo_seq" OWNED BY public."Inventory.Inventory.CustomerOrders"."receiptNo";
          public          postgres    false    259            �            1259    45042 "   Inventory.Inventory.ItemCategories    TABLE     �   CREATE TABLE public."Inventory.Inventory.ItemCategories" (
    "itemCategoryID" integer NOT NULL,
    "itemCategoryName" character varying(255) NOT NULL,
    description character varying(255) NOT NULL
);
 8   DROP TABLE public."Inventory.Inventory.ItemCategories";
       public         heap    postgres    false            �            1259    45051 !   Inventory.Inventory.ItemClassType    TABLE     �   CREATE TABLE public."Inventory.Inventory.ItemClassType" (
    "itemClassTypeID" integer NOT NULL,
    "itemClassTypeName" character varying(255)
);
 7   DROP TABLE public."Inventory.Inventory.ItemClassType";
       public         heap    postgres    false            �            1259    45156    Inventory.Inventory.Items    TABLE     �  CREATE TABLE public."Inventory.Inventory.Items" (
    "itemID" integer NOT NULL,
    "itemName" character varying(255) NOT NULL,
    "unitCost" double precision NOT NULL,
    "unitPrice" double precision NOT NULL,
    "totalQuantity" integer NOT NULL,
    "availableQuantity" integer NOT NULL,
    "reorderLevel" integer NOT NULL,
    "expiryDate" timestamp without time zone NOT NULL,
    "itemCode" character varying(255),
    barcode character varying(255),
    batch character varying(255),
    image character varying(255),
    weight integer,
    length integer,
    width integer,
    height integer,
    "showInPOS" integer NOT NULL,
    "isActive" integer NOT NULL,
    "unitOfMeasureID" integer NOT NULL,
    "itemClassID" integer NOT NULL,
    "itemCategoryID" integer NOT NULL,
    "assetSubAccountID" integer NOT NULL,
    "costOfSaleSubAccountID" integer NOT NULL,
    "revenueSubAccountID" integer NOT NULL,
    "vatTypeID" integer NOT NULL,
    "otherTaxID" integer NOT NULL
);
 /   DROP TABLE public."Inventory.Inventory.Items";
       public         heap    postgres    false            �            1259    45137    Inventory.Inventory.OtherTaxes    TABLE     �   CREATE TABLE public."Inventory.Inventory.OtherTaxes" (
    "otherTaxID" integer NOT NULL,
    "otherTaxName" character varying(255) NOT NULL,
    "perRate" double precision NOT NULL,
    "vatLiabSubAccountID" integer NOT NULL
);
 4   DROP TABLE public."Inventory.Inventory.OtherTaxes";
       public         heap    postgres    false            �            1259    45136 -   Inventory.Inventory.OtherTaxes_otherTaxID_seq    SEQUENCE     �   CREATE SEQUENCE public."Inventory.Inventory.OtherTaxes_otherTaxID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public."Inventory.Inventory.OtherTaxes_otherTaxID_seq";
       public          postgres    false    252            1           0    0 -   Inventory.Inventory.OtherTaxes_otherTaxID_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."Inventory.Inventory.OtherTaxes_otherTaxID_seq" OWNED BY public."Inventory.Inventory.OtherTaxes"."otherTaxID";
          public          postgres    false    251            �            1259    45041 ;   Inventory.Inventory.ProductCategories_productCategoryID_seq    SEQUENCE     �   CREATE SEQUENCE public."Inventory.Inventory.ProductCategories_productCategoryID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 T   DROP SEQUENCE public."Inventory.Inventory.ProductCategories_productCategoryID_seq";
       public          postgres    false    244            2           0    0 ;   Inventory.Inventory.ProductCategories_productCategoryID_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."Inventory.Inventory.ProductCategories_productCategoryID_seq" OWNED BY public."Inventory.Inventory.ItemCategories"."itemCategoryID";
          public          postgres    false    243            �            1259    45050 ;   Inventory.Inventory.ProductClassType_productClassTypeID_seq    SEQUENCE     �   CREATE SEQUENCE public."Inventory.Inventory.ProductClassType_productClassTypeID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 T   DROP SEQUENCE public."Inventory.Inventory.ProductClassType_productClassTypeID_seq";
       public          postgres    false    246            3           0    0 ;   Inventory.Inventory.ProductClassType_productClassTypeID_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."Inventory.Inventory.ProductClassType_productClassTypeID_seq" OWNED BY public."Inventory.Inventory.ItemClassType"."itemClassTypeID";
          public          postgres    false    245            �            1259    45155 *   Inventory.Inventory.Products_productID_seq    SEQUENCE     �   CREATE SEQUENCE public."Inventory.Inventory.Products_productID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public."Inventory.Inventory.Products_productID_seq";
       public          postgres    false    254            4           0    0 *   Inventory.Inventory.Products_productID_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public."Inventory.Inventory.Products_productID_seq" OWNED BY public."Inventory.Inventory.Items"."itemID";
          public          postgres    false    253            �            1259    45072 "   Inventory.Inventory.UnitsOfMeasure    TABLE     �   CREATE TABLE public."Inventory.Inventory.UnitsOfMeasure" (
    "unitOfMeasureID" integer NOT NULL,
    "unitOfMeasureName" character varying(255) NOT NULL,
    "isSmallestUnit" integer NOT NULL
);
 8   DROP TABLE public."Inventory.Inventory.UnitsOfMeasure";
       public         heap    postgres    false            �            1259    45071 6   Inventory.Inventory.UnitsOfMeasure_unitOfMeasureID_seq    SEQUENCE     �   CREATE SEQUENCE public."Inventory.Inventory.UnitsOfMeasure_unitOfMeasureID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 O   DROP SEQUENCE public."Inventory.Inventory.UnitsOfMeasure_unitOfMeasureID_seq";
       public          postgres    false    250            5           0    0 6   Inventory.Inventory.UnitsOfMeasure_unitOfMeasureID_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."Inventory.Inventory.UnitsOfMeasure_unitOfMeasureID_seq" OWNED BY public."Inventory.Inventory.UnitsOfMeasure"."unitOfMeasureID";
          public          postgres    false    249            �            1259    45030    Inventory.Inventory.VATTypes    TABLE     �   CREATE TABLE public."Inventory.Inventory.VATTypes" (
    "vatTypeID" integer NOT NULL,
    "vatTypeName" character varying(255) NOT NULL,
    "perRate" double precision NOT NULL,
    "vatLiabSubAccountID" integer NOT NULL
);
 2   DROP TABLE public."Inventory.Inventory.VATTypes";
       public         heap    postgres    false            �            1259    45029 *   Inventory.Inventory.VATTypes_vatTypeID_seq    SEQUENCE     �   CREATE SEQUENCE public."Inventory.Inventory.VATTypes_vatTypeID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public."Inventory.Inventory.VATTypes_vatTypeID_seq";
       public          postgres    false    242            6           0    0 *   Inventory.Inventory.VATTypes_vatTypeID_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public."Inventory.Inventory.VATTypes_vatTypeID_seq" OWNED BY public."Inventory.Inventory.VATTypes"."vatTypeID";
          public          postgres    false    241            �            1259    45058    Invetory.Inventory.ItemClasses    TABLE     �   CREATE TABLE public."Invetory.Inventory.ItemClasses" (
    "itemClassID" integer NOT NULL,
    "itemClassName" character varying(255) NOT NULL,
    description character varying(255) NOT NULL,
    "itemClassTypeID" integer NOT NULL
);
 4   DROP TABLE public."Invetory.Inventory.ItemClasses";
       public         heap    postgres    false            �            1259    45057 4   Invetory.Inventory.ProductClasses_productClassID_seq    SEQUENCE     �   CREATE SEQUENCE public."Invetory.Inventory.ProductClasses_productClassID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 M   DROP SEQUENCE public."Invetory.Inventory.ProductClasses_productClassID_seq";
       public          postgres    false    248            7           0    0 4   Invetory.Inventory.ProductClasses_productClassID_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."Invetory.Inventory.ProductClasses_productClassID_seq" OWNED BY public."Invetory.Inventory.ItemClasses"."itemClassID";
          public          postgres    false    247            �            1259    36817    Sales.POS.PaymentMethod    TABLE     �   CREATE TABLE public."Sales.POS.PaymentMethod" (
    "paymentMethodID" integer NOT NULL,
    "isDefault" integer NOT NULL,
    "paymentMethodName" character varying(255) NOT NULL,
    "subAccountID" integer NOT NULL
);
 -   DROP TABLE public."Sales.POS.PaymentMethod";
       public         heap    postgres    false            �            1259    36816 %   POS.PaymentMethod_paymentMethodID_seq    SEQUENCE     �   CREATE SEQUENCE public."POS.PaymentMethod_paymentMethodID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public."POS.PaymentMethod_paymentMethodID_seq";
       public          postgres    false    230            8           0    0 %   POS.PaymentMethod_paymentMethodID_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public."POS.PaymentMethod_paymentMethodID_seq" OWNED BY public."Sales.POS.PaymentMethod"."paymentMethodID";
          public          postgres    false    229                       1259    79348 $   Sales.POS.CustomerOrderPaymentMethod    TABLE     T  CREATE TABLE public."Sales.POS.CustomerOrderPaymentMethod" (
    "customerOrderID" integer NOT NULL,
    "paymentMethodID" integer NOT NULL,
    "amountPaid" double precision NOT NULL,
    "amountTendered" double precision NOT NULL,
    "changeAmount" double precision NOT NULL,
    "dateTimeBilled" timestamp without time zone NOT NULL
);
 :   DROP TABLE public."Sales.POS.CustomerOrderPaymentMethod";
       public         heap    postgres    false                       1259    45223    Sales.POS.OrderItems    TABLE     �   CREATE TABLE public."Sales.POS.OrderItems" (
    "customerOrderID" integer NOT NULL,
    "itemID" integer NOT NULL,
    quantity integer NOT NULL,
    "subTotal" double precision NOT NULL
);
 *   DROP TABLE public."Sales.POS.OrderItems";
       public         heap    postgres    false            �            1259    36838    Security.Privileges    TABLE     �   CREATE TABLE public."Security.Privileges" (
    "privilegeID" integer NOT NULL,
    "privilegeName" character varying(255) NOT NULL
);
 )   DROP TABLE public."Security.Privileges";
       public         heap    postgres    false            �            1259    36837 #   Security.Privileges_privilegeID_seq    SEQUENCE     �   CREATE SEQUENCE public."Security.Privileges_privilegeID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."Security.Privileges_privilegeID_seq";
       public          postgres    false    234            9           0    0 #   Security.Privileges_privilegeID_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public."Security.Privileges_privilegeID_seq" OWNED BY public."Security.Privileges"."privilegeID";
          public          postgres    false    233            �            1259    36829    Security.Roles    TABLE     �   CREATE TABLE public."Security.Roles" (
    "roleID" integer NOT NULL,
    "roleName" character varying(255) NOT NULL,
    description character varying(255) NOT NULL
);
 $   DROP TABLE public."Security.Roles";
       public         heap    postgres    false                       1259    45283    Security.RolesPrivileges    TABLE     v   CREATE TABLE public."Security.RolesPrivileges" (
    "roleID" integer NOT NULL,
    "privilegeID" integer NOT NULL
);
 .   DROP TABLE public."Security.RolesPrivileges";
       public         heap    postgres    false            �            1259    36845    Security.SystemUsers    TABLE     U  CREATE TABLE public."Security.SystemUsers" (
    "sysUserID" integer NOT NULL,
    "userName" character varying(255) NOT NULL,
    "surName" character varying(255),
    "otherNames" character varying(255),
    "dateTimeCreated" timestamp without time zone NOT NULL,
    password character varying(255) NOT NULL,
    "isSuperUser" integer
);
 *   DROP TABLE public."Security.SystemUsers";
       public         heap    postgres    false                       1259    45664    Security.SystemUsersRoles    TABLE     u   CREATE TABLE public."Security.SystemUsersRoles" (
    "sysUserID" integer NOT NULL,
    "roleID" integer NOT NULL
);
 /   DROP TABLE public."Security.SystemUsersRoles";
       public         heap    postgres    false            �            1259    36828 !   Security.UserRoles_userRoleID_seq    SEQUENCE     �   CREATE SEQUENCE public."Security.UserRoles_userRoleID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public."Security.UserRoles_userRoleID_seq";
       public          postgres    false    232            :           0    0 !   Security.UserRoles_userRoleID_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."Security.UserRoles_userRoleID_seq" OWNED BY public."Security.Roles"."roleID";
          public          postgres    false    231            �            1259    36844    Security.Users_systemUserID_seq    SEQUENCE     �   CREATE SEQUENCE public."Security.Users_systemUserID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."Security.Users_systemUserID_seq";
       public          postgres    false    236            ;           0    0    Security.Users_systemUserID_seq    SEQUENCE OWNED BY     l   ALTER SEQUENCE public."Security.Users_systemUserID_seq" OWNED BY public."Security.SystemUsers"."sysUserID";
          public          postgres    false    235            �           2604    36135 ,   Accounts.Fiscal.FiscalPeriods fiscalPeriodID    DEFAULT     �   ALTER TABLE ONLY public."Accounts.Fiscal.FiscalPeriods" ALTER COLUMN "fiscalPeriodID" SET DEFAULT nextval('public."Accounts.Fiscal.FiscalPeriods_fiscalPeriodID_seq"'::regclass);
 _   ALTER TABLE public."Accounts.Fiscal.FiscalPeriods" ALTER COLUMN "fiscalPeriodID" DROP DEFAULT;
       public          postgres    false    220    218    220            �           2604    36136 ,   Accounts.Fiscal.FiscalPeriods fiscalPeriodNo    DEFAULT     �   ALTER TABLE ONLY public."Accounts.Fiscal.FiscalPeriods" ALTER COLUMN "fiscalPeriodNo" SET DEFAULT nextval('public."Accounts.Fiscal.FiscalPeriods_fiscalPeriodNo_seq"'::regclass);
 _   ALTER TABLE public."Accounts.Fiscal.FiscalPeriods" ALTER COLUMN "fiscalPeriodNo" DROP DEFAULT;
       public          postgres    false    220    219    220            �           2604    36874 )   Accounts.JV.AccountEntries accountEntryID    DEFAULT     �   ALTER TABLE ONLY public."Accounts.JV.AccountEntries" ALTER COLUMN "accountEntryID" SET DEFAULT nextval('public."Accounts.JV.AccountEntries_accountEntryID_seq"'::regclass);
 \   ALTER TABLE public."Accounts.JV.AccountEntries" ALTER COLUMN "accountEntryID" DROP DEFAULT;
       public          postgres    false    240    239    240            �           2604    36857 ,   Accounts.JV.JournalVouchers journalVoucherID    DEFAULT     �   ALTER TABLE ONLY public."Accounts.JV.JournalVouchers" ALTER COLUMN "journalVoucherID" SET DEFAULT nextval('public."Accounts.JV.JournalVouchers_journalVoucherID_seq"'::regclass);
 _   ALTER TABLE public."Accounts.JV.JournalVouchers" ALTER COLUMN "journalVoucherID" DROP DEFAULT;
       public          postgres    false    237    238    238            �           2604    35905 -   Accounts.Ledger.AccountClasses accountClassID    DEFAULT     �   ALTER TABLE ONLY public."Accounts.Ledger.AccountClasses" ALTER COLUMN "accountClassID" SET DEFAULT nextval('public."Accounts.Ledger.AccountClasses_accountClassID_seq"'::regclass);
 `   ALTER TABLE public."Accounts.Ledger.AccountClasses" ALTER COLUMN "accountClassID" DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    35896 *   Accounts.Ledger.AccountTypes accountTypeID    DEFAULT     �   ALTER TABLE ONLY public."Accounts.Ledger.AccountTypes" ALTER COLUMN "accountTypeID" SET DEFAULT nextval('public."Accounts.Ledger.AccountTypes_accountTypeID_seq"'::regclass);
 ]   ALTER TABLE public."Accounts.Ledger.AccountTypes" ALTER COLUMN "accountTypeID" DROP DEFAULT;
       public          postgres    false    214    215    215            �           2604    36247 "   Accounts.Ledger.Accounts accountID    DEFAULT     �   ALTER TABLE ONLY public."Accounts.Ledger.Accounts" ALTER COLUMN "accountID" SET DEFAULT nextval('public."Accounts.Ledger.Accounts_accountID_seq"'::regclass);
 U   ALTER TABLE public."Accounts.Ledger.Accounts" ALTER COLUMN "accountID" DROP DEFAULT;
       public          postgres    false    225    226    226            �           2604    36233 5   Accounts.Ledger.CashFlowCategories cashFlowCategoryID    DEFAULT     �   ALTER TABLE ONLY public."Accounts.Ledger.CashFlowCategories" ALTER COLUMN "cashFlowCategoryID" SET DEFAULT nextval('public."Accounts.Ledger.CashFlowCategories_cashFlowCategoryID_seq"'::regclass);
 h   ALTER TABLE public."Accounts.Ledger.CashFlowCategories" ALTER COLUMN "cashFlowCategoryID" DROP DEFAULT;
       public          postgres    false    223    224    224            �           2604    36216 <   Accounts.Ledger.CashFlowCategoryTypes cashFlowCategoryTypeID    DEFAULT     �   ALTER TABLE ONLY public."Accounts.Ledger.CashFlowCategoryTypes" ALTER COLUMN "cashFlowCategoryTypeID" SET DEFAULT nextval('public."Accounts.Ledger.CashFlowCategoryType_cashFlowCategoryTypeID_seq"'::regclass);
 o   ALTER TABLE public."Accounts.Ledger.CashFlowCategoryTypes" ALTER COLUMN "cashFlowCategoryTypeID" DROP DEFAULT;
       public          postgres    false    221    222    222            �           2604    36266 (   Accounts.Ledger.SubAccounts subAccountID    DEFAULT     �   ALTER TABLE ONLY public."Accounts.Ledger.SubAccounts" ALTER COLUMN "subAccountID" SET DEFAULT nextval('public."Accounts.Ledger.SubAccounts_subAccountID_seq"'::regclass);
 [   ALTER TABLE public."Accounts.Ledger.SubAccounts" ALTER COLUMN "subAccountID" DROP DEFAULT;
       public          postgres    false    227    228    228            �           2604    45213 2   Inventory.Inventory.CustomerOrders customerOrderID    DEFAULT     �   ALTER TABLE ONLY public."Inventory.Inventory.CustomerOrders" ALTER COLUMN "customerOrderID" SET DEFAULT nextval('public."Inventory.Inventory.CustomerOrders_customerOrderID_seq"'::regclass);
 e   ALTER TABLE public."Inventory.Inventory.CustomerOrders" ALTER COLUMN "customerOrderID" DROP DEFAULT;
       public          postgres    false    256    255    256            �           2604    45259 )   Inventory.Inventory.CustomerOrders billNo    DEFAULT     �   ALTER TABLE ONLY public."Inventory.Inventory.CustomerOrders" ALTER COLUMN "billNo" SET DEFAULT nextval('public."Inventory.Inventory.CustomerOrders_billNo_seq"'::regclass);
 \   ALTER TABLE public."Inventory.Inventory.CustomerOrders" ALTER COLUMN "billNo" DROP DEFAULT;
       public          postgres    false    258    256            �           2604    45261 ,   Inventory.Inventory.CustomerOrders receiptNo    DEFAULT     �   ALTER TABLE ONLY public."Inventory.Inventory.CustomerOrders" ALTER COLUMN "receiptNo" SET DEFAULT nextval('public."Inventory.Inventory.CustomerOrders_receiptNo_seq"'::regclass);
 _   ALTER TABLE public."Inventory.Inventory.CustomerOrders" ALTER COLUMN "receiptNo" DROP DEFAULT;
       public          postgres    false    259    256            �           2604    45045 1   Inventory.Inventory.ItemCategories itemCategoryID    DEFAULT     �   ALTER TABLE ONLY public."Inventory.Inventory.ItemCategories" ALTER COLUMN "itemCategoryID" SET DEFAULT nextval('public."Inventory.Inventory.ProductCategories_productCategoryID_seq"'::regclass);
 d   ALTER TABLE public."Inventory.Inventory.ItemCategories" ALTER COLUMN "itemCategoryID" DROP DEFAULT;
       public          postgres    false    243    244    244            �           2604    45054 1   Inventory.Inventory.ItemClassType itemClassTypeID    DEFAULT     �   ALTER TABLE ONLY public."Inventory.Inventory.ItemClassType" ALTER COLUMN "itemClassTypeID" SET DEFAULT nextval('public."Inventory.Inventory.ProductClassType_productClassTypeID_seq"'::regclass);
 d   ALTER TABLE public."Inventory.Inventory.ItemClassType" ALTER COLUMN "itemClassTypeID" DROP DEFAULT;
       public          postgres    false    246    245    246            �           2604    45159     Inventory.Inventory.Items itemID    DEFAULT     �   ALTER TABLE ONLY public."Inventory.Inventory.Items" ALTER COLUMN "itemID" SET DEFAULT nextval('public."Inventory.Inventory.Products_productID_seq"'::regclass);
 S   ALTER TABLE public."Inventory.Inventory.Items" ALTER COLUMN "itemID" DROP DEFAULT;
       public          postgres    false    253    254    254            �           2604    45140 )   Inventory.Inventory.OtherTaxes otherTaxID    DEFAULT     �   ALTER TABLE ONLY public."Inventory.Inventory.OtherTaxes" ALTER COLUMN "otherTaxID" SET DEFAULT nextval('public."Inventory.Inventory.OtherTaxes_otherTaxID_seq"'::regclass);
 \   ALTER TABLE public."Inventory.Inventory.OtherTaxes" ALTER COLUMN "otherTaxID" DROP DEFAULT;
       public          postgres    false    251    252    252            �           2604    45075 2   Inventory.Inventory.UnitsOfMeasure unitOfMeasureID    DEFAULT     �   ALTER TABLE ONLY public."Inventory.Inventory.UnitsOfMeasure" ALTER COLUMN "unitOfMeasureID" SET DEFAULT nextval('public."Inventory.Inventory.UnitsOfMeasure_unitOfMeasureID_seq"'::regclass);
 e   ALTER TABLE public."Inventory.Inventory.UnitsOfMeasure" ALTER COLUMN "unitOfMeasureID" DROP DEFAULT;
       public          postgres    false    250    249    250            �           2604    45033 &   Inventory.Inventory.VATTypes vatTypeID    DEFAULT     �   ALTER TABLE ONLY public."Inventory.Inventory.VATTypes" ALTER COLUMN "vatTypeID" SET DEFAULT nextval('public."Inventory.Inventory.VATTypes_vatTypeID_seq"'::regclass);
 Y   ALTER TABLE public."Inventory.Inventory.VATTypes" ALTER COLUMN "vatTypeID" DROP DEFAULT;
       public          postgres    false    241    242    242            �           2604    45061 *   Invetory.Inventory.ItemClasses itemClassID    DEFAULT     �   ALTER TABLE ONLY public."Invetory.Inventory.ItemClasses" ALTER COLUMN "itemClassID" SET DEFAULT nextval('public."Invetory.Inventory.ProductClasses_productClassID_seq"'::regclass);
 ]   ALTER TABLE public."Invetory.Inventory.ItemClasses" ALTER COLUMN "itemClassID" DROP DEFAULT;
       public          postgres    false    248    247    248            �           2604    36820 '   Sales.POS.PaymentMethod paymentMethodID    DEFAULT     �   ALTER TABLE ONLY public."Sales.POS.PaymentMethod" ALTER COLUMN "paymentMethodID" SET DEFAULT nextval('public."POS.PaymentMethod_paymentMethodID_seq"'::regclass);
 Z   ALTER TABLE public."Sales.POS.PaymentMethod" ALTER COLUMN "paymentMethodID" DROP DEFAULT;
       public          postgres    false    229    230    230            �           2604    36841    Security.Privileges privilegeID    DEFAULT     �   ALTER TABLE ONLY public."Security.Privileges" ALTER COLUMN "privilegeID" SET DEFAULT nextval('public."Security.Privileges_privilegeID_seq"'::regclass);
 R   ALTER TABLE public."Security.Privileges" ALTER COLUMN "privilegeID" DROP DEFAULT;
       public          postgres    false    234    233    234            �           2604    36832    Security.Roles roleID    DEFAULT     �   ALTER TABLE ONLY public."Security.Roles" ALTER COLUMN "roleID" SET DEFAULT nextval('public."Security.UserRoles_userRoleID_seq"'::regclass);
 H   ALTER TABLE public."Security.Roles" ALTER COLUMN "roleID" DROP DEFAULT;
       public          postgres    false    232    231    232            �           2604    36848    Security.SystemUsers sysUserID    DEFAULT     �   ALTER TABLE ONLY public."Security.SystemUsers" ALTER COLUMN "sysUserID" SET DEFAULT nextval('public."Security.Users_systemUserID_seq"'::regclass);
 Q   ALTER TABLE public."Security.SystemUsers" ALTER COLUMN "sysUserID" DROP DEFAULT;
       public          postgres    false    236    235    236            �          0    36132    Accounts.Fiscal.FiscalPeriods 
   TABLE DATA           �   COPY public."Accounts.Fiscal.FiscalPeriods" ("fiscalPeriodID", "fiscalPeriodNo", "openDate", "closeDate", "isActive", "isOpen") FROM stdin;
    public          postgres    false    220   �O                0    36871    Accounts.JV.AccountEntries 
   TABLE DATA           �   COPY public."Accounts.JV.AccountEntries" ("accountEntryID", "creditAmount", "debitAmount", "creditSubAccountID", "debitSubAccountID", "journalVoucherID") FROM stdin;
    public          postgres    false    240   ZP                0    36854    Accounts.JV.JournalVouchers 
   TABLE DATA           �   COPY public."Accounts.JV.JournalVouchers" ("journalVoucherID", description, "sourceReference", amount, "transactionDateTime", "isAutomatic", "isPosted", "postedBySysUID", "fiscalPeriodID") FROM stdin;
    public          postgres    false    238   	Q      �          0    35902    Accounts.Ledger.AccountClasses 
   TABLE DATA           j   COPY public."Accounts.Ledger.AccountClasses" ("accountClassID", "className", "accountTypeID") FROM stdin;
    public          postgres    false    217   �Q      �          0    35893    Accounts.Ledger.AccountTypes 
   TABLE DATA           \   COPY public."Accounts.Ledger.AccountTypes" ("accountTypeID", "accountTypeName") FROM stdin;
    public          postgres    false    215   �R      �          0    36244    Accounts.Ledger.Accounts 
   TABLE DATA           �   COPY public."Accounts.Ledger.Accounts" ("accountID", "accountName", "accountNo", "isLocked", "accountClassID", "cashFlowCategoryID") FROM stdin;
    public          postgres    false    226   �R      �          0    36230 "   Accounts.Ledger.CashFlowCategories 
   TABLE DATA           �   COPY public."Accounts.Ledger.CashFlowCategories" ("cashFlowCategoryID", "cashFlowCategoryName", "cashFlowCategoryTypeID") FROM stdin;
    public          postgres    false    224   �S      �          0    36213 %   Accounts.Ledger.CashFlowCategoryTypes 
   TABLE DATA           w   COPY public."Accounts.Ledger.CashFlowCategoryTypes" ("cashFlowCategoryTypeID", "cashFlowCategoryTypeName") FROM stdin;
    public          postgres    false    222   �T      �          0    36263    Accounts.Ledger.SubAccounts 
   TABLE DATA           �   COPY public."Accounts.Ledger.SubAccounts" ("subAccountID", "subAccountName", "currentBalance", "isActive", "isLocked", "accountID") FROM stdin;
    public          postgres    false    228   �T                0    45210 "   Inventory.Inventory.CustomerOrders 
   TABLE DATA           �   COPY public."Inventory.Inventory.CustomerOrders" ("customerOrderID", "createdBySysUserID", "dateTimeCreated", "isOrderPaid", "billIsPrinted", "billNo", "receiptNo") FROM stdin;
    public          postgres    false    256   �V                0    45042 "   Inventory.Inventory.ItemCategories 
   TABLE DATA           q   COPY public."Inventory.Inventory.ItemCategories" ("itemCategoryID", "itemCategoryName", description) FROM stdin;
    public          postgres    false    244   �W                0    45051 !   Inventory.Inventory.ItemClassType 
   TABLE DATA           e   COPY public."Inventory.Inventory.ItemClassType" ("itemClassTypeID", "itemClassTypeName") FROM stdin;
    public          postgres    false    246   �X                0    45156    Inventory.Inventory.Items 
   TABLE DATA           �  COPY public."Inventory.Inventory.Items" ("itemID", "itemName", "unitCost", "unitPrice", "totalQuantity", "availableQuantity", "reorderLevel", "expiryDate", "itemCode", barcode, batch, image, weight, length, width, height, "showInPOS", "isActive", "unitOfMeasureID", "itemClassID", "itemCategoryID", "assetSubAccountID", "costOfSaleSubAccountID", "revenueSubAccountID", "vatTypeID", "otherTaxID") FROM stdin;
    public          postgres    false    254   Y                0    45137    Inventory.Inventory.OtherTaxes 
   TABLE DATA           z   COPY public."Inventory.Inventory.OtherTaxes" ("otherTaxID", "otherTaxName", "perRate", "vatLiabSubAccountID") FROM stdin;
    public          postgres    false    252   P[                0    45072 "   Inventory.Inventory.UnitsOfMeasure 
   TABLE DATA           x   COPY public."Inventory.Inventory.UnitsOfMeasure" ("unitOfMeasureID", "unitOfMeasureName", "isSmallestUnit") FROM stdin;
    public          postgres    false    250   �[      	          0    45030    Inventory.Inventory.VATTypes 
   TABLE DATA           v   COPY public."Inventory.Inventory.VATTypes" ("vatTypeID", "vatTypeName", "perRate", "vatLiabSubAccountID") FROM stdin;
    public          postgres    false    242   +\                0    45058    Invetory.Inventory.ItemClasses 
   TABLE DATA           z   COPY public."Invetory.Inventory.ItemClasses" ("itemClassID", "itemClassName", description, "itemClassTypeID") FROM stdin;
    public          postgres    false    248   �\                0    79348 $   Sales.POS.CustomerOrderPaymentMethod 
   TABLE DATA           �   COPY public."Sales.POS.CustomerOrderPaymentMethod" ("customerOrderID", "paymentMethodID", "amountPaid", "amountTendered", "changeAmount", "dateTimeBilled") FROM stdin;
    public          postgres    false    262   v]                0    45223    Sales.POS.OrderItems 
   TABLE DATA           c   COPY public."Sales.POS.OrderItems" ("customerOrderID", "itemID", quantity, "subTotal") FROM stdin;
    public          postgres    false    257   ^      �          0    36817    Sales.POS.PaymentMethod 
   TABLE DATA           x   COPY public."Sales.POS.PaymentMethod" ("paymentMethodID", "isDefault", "paymentMethodName", "subAccountID") FROM stdin;
    public          postgres    false    230   a^                0    36838    Security.Privileges 
   TABLE DATA           O   COPY public."Security.Privileges" ("privilegeID", "privilegeName") FROM stdin;
    public          postgres    false    234   �^      �          0    36829    Security.Roles 
   TABLE DATA           M   COPY public."Security.Roles" ("roleID", "roleName", description) FROM stdin;
    public          postgres    false    232   Z_                0    45283    Security.RolesPrivileges 
   TABLE DATA           M   COPY public."Security.RolesPrivileges" ("roleID", "privilegeID") FROM stdin;
    public          postgres    false    260   �_                0    36845    Security.SystemUsers 
   TABLE DATA           �   COPY public."Security.SystemUsers" ("sysUserID", "userName", "surName", "otherNames", "dateTimeCreated", password, "isSuperUser") FROM stdin;
    public          postgres    false    236   `                0    45664    Security.SystemUsersRoles 
   TABLE DATA           L   COPY public."Security.SystemUsersRoles" ("sysUserID", "roleID") FROM stdin;
    public          postgres    false    261   �`      <           0    0 0   Accounts.Fiscal.FiscalPeriods_fiscalPeriodID_seq    SEQUENCE SET     a   SELECT pg_catalog.setval('public."Accounts.Fiscal.FiscalPeriods_fiscalPeriodID_seq"', 51, true);
          public          postgres    false    218            =           0    0 0   Accounts.Fiscal.FiscalPeriods_fiscalPeriodNo_seq    SEQUENCE SET     a   SELECT pg_catalog.setval('public."Accounts.Fiscal.FiscalPeriods_fiscalPeriodNo_seq"', 51, true);
          public          postgres    false    219            >           0    0 -   Accounts.JV.AccountEntries_accountEntryID_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('public."Accounts.JV.AccountEntries_accountEntryID_seq"', 752, true);
          public          postgres    false    239            ?           0    0 0   Accounts.JV.JournalVouchers_journalVoucherID_seq    SEQUENCE SET     b   SELECT pg_catalog.setval('public."Accounts.JV.JournalVouchers_journalVoucherID_seq"', 257, true);
          public          postgres    false    237            @           0    0 1   Accounts.Ledger.AccountClasses_accountClassID_seq    SEQUENCE SET     b   SELECT pg_catalog.setval('public."Accounts.Ledger.AccountClasses_accountClassID_seq"', 61, true);
          public          postgres    false    216            A           0    0 .   Accounts.Ledger.AccountTypes_accountTypeID_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('public."Accounts.Ledger.AccountTypes_accountTypeID_seq"', 16, true);
          public          postgres    false    214            B           0    0 &   Accounts.Ledger.Accounts_accountID_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public."Accounts.Ledger.Accounts_accountID_seq"', 229, true);
          public          postgres    false    225            C           0    0 9   Accounts.Ledger.CashFlowCategories_cashFlowCategoryID_seq    SEQUENCE SET     j   SELECT pg_catalog.setval('public."Accounts.Ledger.CashFlowCategories_cashFlowCategoryID_seq"', 35, true);
          public          postgres    false    223            D           0    0 ?   Accounts.Ledger.CashFlowCategoryType_cashFlowCategoryTypeID_seq    SEQUENCE SET     o   SELECT pg_catalog.setval('public."Accounts.Ledger.CashFlowCategoryType_cashFlowCategoryTypeID_seq"', 9, true);
          public          postgres    false    221            E           0    0 ,   Accounts.Ledger.SubAccounts_subAccountID_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public."Accounts.Ledger.SubAccounts_subAccountID_seq"', 129, true);
          public          postgres    false    227            F           0    0 -   Inventory.Inventory.CustomerOrders_billNo_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('public."Inventory.Inventory.CustomerOrders_billNo_seq"', 276, true);
          public          postgres    false    258            G           0    0 6   Inventory.Inventory.CustomerOrders_customerOrderID_seq    SEQUENCE SET     h   SELECT pg_catalog.setval('public."Inventory.Inventory.CustomerOrders_customerOrderID_seq"', 321, true);
          public          postgres    false    255            H           0    0 0   Inventory.Inventory.CustomerOrders_receiptNo_seq    SEQUENCE SET     b   SELECT pg_catalog.setval('public."Inventory.Inventory.CustomerOrders_receiptNo_seq"', 276, true);
          public          postgres    false    259            I           0    0 -   Inventory.Inventory.OtherTaxes_otherTaxID_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public."Inventory.Inventory.OtherTaxes_otherTaxID_seq"', 21, true);
          public          postgres    false    251            J           0    0 ;   Inventory.Inventory.ProductCategories_productCategoryID_seq    SEQUENCE SET     l   SELECT pg_catalog.setval('public."Inventory.Inventory.ProductCategories_productCategoryID_seq"', 25, true);
          public          postgres    false    243            K           0    0 ;   Inventory.Inventory.ProductClassType_productClassTypeID_seq    SEQUENCE SET     k   SELECT pg_catalog.setval('public."Inventory.Inventory.ProductClassType_productClassTypeID_seq"', 5, true);
          public          postgres    false    245            L           0    0 *   Inventory.Inventory.Products_productID_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public."Inventory.Inventory.Products_productID_seq"', 39, true);
          public          postgres    false    253            M           0    0 6   Inventory.Inventory.UnitsOfMeasure_unitOfMeasureID_seq    SEQUENCE SET     g   SELECT pg_catalog.setval('public."Inventory.Inventory.UnitsOfMeasure_unitOfMeasureID_seq"', 18, true);
          public          postgres    false    249            N           0    0 *   Inventory.Inventory.VATTypes_vatTypeID_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public."Inventory.Inventory.VATTypes_vatTypeID_seq"', 30, true);
          public          postgres    false    241            O           0    0 4   Invetory.Inventory.ProductClasses_productClassID_seq    SEQUENCE SET     e   SELECT pg_catalog.setval('public."Invetory.Inventory.ProductClasses_productClassID_seq"', 20, true);
          public          postgres    false    247            P           0    0 %   POS.PaymentMethod_paymentMethodID_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public."POS.PaymentMethod_paymentMethodID_seq"', 3, true);
          public          postgres    false    229            Q           0    0 #   Security.Privileges_privilegeID_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."Security.Privileges_privilegeID_seq"', 36, true);
          public          postgres    false    233            R           0    0 !   Security.UserRoles_userRoleID_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public."Security.UserRoles_userRoleID_seq"', 35, true);
          public          postgres    false    231            S           0    0    Security.Users_systemUserID_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."Security.Users_systemUserID_seq"', 175, true);
          public          postgres    false    235            �           2606    36138 @   Accounts.Fiscal.FiscalPeriods Accounts.Fiscal.FiscalPeriods_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Accounts.Fiscal.FiscalPeriods"
    ADD CONSTRAINT "Accounts.Fiscal.FiscalPeriods_pkey" PRIMARY KEY ("fiscalPeriodID");
 n   ALTER TABLE ONLY public."Accounts.Fiscal.FiscalPeriods" DROP CONSTRAINT "Accounts.Fiscal.FiscalPeriods_pkey";
       public            postgres    false    220            !           2606    36876 :   Accounts.JV.AccountEntries Accounts.JV.AccountEntries_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Accounts.JV.AccountEntries"
    ADD CONSTRAINT "Accounts.JV.AccountEntries_pkey" PRIMARY KEY ("accountEntryID");
 h   ALTER TABLE ONLY public."Accounts.JV.AccountEntries" DROP CONSTRAINT "Accounts.JV.AccountEntries_pkey";
       public            postgres    false    240                       2606    36859 <   Accounts.JV.JournalVouchers Accounts.JV.JournalVouchers_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Accounts.JV.JournalVouchers"
    ADD CONSTRAINT "Accounts.JV.JournalVouchers_pkey" PRIMARY KEY ("journalVoucherID");
 j   ALTER TABLE ONLY public."Accounts.JV.JournalVouchers" DROP CONSTRAINT "Accounts.JV.JournalVouchers_pkey";
       public            postgres    false    238            �           2606    62877 K   Accounts.Ledger.AccountClasses Accounts.Ledger.AccountClasses_className_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."Accounts.Ledger.AccountClasses"
    ADD CONSTRAINT "Accounts.Ledger.AccountClasses_className_key" UNIQUE ("className");
 y   ALTER TABLE ONLY public."Accounts.Ledger.AccountClasses" DROP CONSTRAINT "Accounts.Ledger.AccountClasses_className_key";
       public            postgres    false    217            �           2606    35907 B   Accounts.Ledger.AccountClasses Accounts.Ledger.AccountClasses_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Accounts.Ledger.AccountClasses"
    ADD CONSTRAINT "Accounts.Ledger.AccountClasses_pkey" PRIMARY KEY ("accountClassID");
 p   ALTER TABLE ONLY public."Accounts.Ledger.AccountClasses" DROP CONSTRAINT "Accounts.Ledger.AccountClasses_pkey";
       public            postgres    false    217            �           2606    35900 M   Accounts.Ledger.AccountTypes Accounts.Ledger.AccountTypes_accountTypeName_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."Accounts.Ledger.AccountTypes"
    ADD CONSTRAINT "Accounts.Ledger.AccountTypes_accountTypeName_key" UNIQUE ("accountTypeName");
 {   ALTER TABLE ONLY public."Accounts.Ledger.AccountTypes" DROP CONSTRAINT "Accounts.Ledger.AccountTypes_accountTypeName_key";
       public            postgres    false    215            �           2606    35898 >   Accounts.Ledger.AccountTypes Accounts.Ledger.AccountTypes_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Accounts.Ledger.AccountTypes"
    ADD CONSTRAINT "Accounts.Ledger.AccountTypes_pkey" PRIMARY KEY ("accountTypeID");
 l   ALTER TABLE ONLY public."Accounts.Ledger.AccountTypes" DROP CONSTRAINT "Accounts.Ledger.AccountTypes_pkey";
       public            postgres    false    215                       2606    46493 A   Accounts.Ledger.Accounts Accounts.Ledger.Accounts_accountName_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."Accounts.Ledger.Accounts"
    ADD CONSTRAINT "Accounts.Ledger.Accounts_accountName_key" UNIQUE ("accountName");
 o   ALTER TABLE ONLY public."Accounts.Ledger.Accounts" DROP CONSTRAINT "Accounts.Ledger.Accounts_accountName_key";
       public            postgres    false    226            	           2606    36249 6   Accounts.Ledger.Accounts Accounts.Ledger.Accounts_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Accounts.Ledger.Accounts"
    ADD CONSTRAINT "Accounts.Ledger.Accounts_pkey" PRIMARY KEY ("accountID");
 d   ALTER TABLE ONLY public."Accounts.Ledger.Accounts" DROP CONSTRAINT "Accounts.Ledger.Accounts_pkey";
       public            postgres    false    226                       2606    71069 ^   Accounts.Ledger.CashFlowCategories Accounts.Ledger.CashFlowCategories_cashFlowCategoryName_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."Accounts.Ledger.CashFlowCategories"
    ADD CONSTRAINT "Accounts.Ledger.CashFlowCategories_cashFlowCategoryName_key" UNIQUE ("cashFlowCategoryName");
 �   ALTER TABLE ONLY public."Accounts.Ledger.CashFlowCategories" DROP CONSTRAINT "Accounts.Ledger.CashFlowCategories_cashFlowCategoryName_key";
       public            postgres    false    224                       2606    36235 J   Accounts.Ledger.CashFlowCategories Accounts.Ledger.CashFlowCategories_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Accounts.Ledger.CashFlowCategories"
    ADD CONSTRAINT "Accounts.Ledger.CashFlowCategories_pkey" PRIMARY KEY ("cashFlowCategoryID");
 x   ALTER TABLE ONLY public."Accounts.Ledger.CashFlowCategories" DROP CONSTRAINT "Accounts.Ledger.CashFlowCategories_pkey";
       public            postgres    false    224            �           2606    36220 e   Accounts.Ledger.CashFlowCategoryTypes Accounts.Ledger.CashFlowCategoryTy_cashFlowCategoryTypeName_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."Accounts.Ledger.CashFlowCategoryTypes"
    ADD CONSTRAINT "Accounts.Ledger.CashFlowCategoryTy_cashFlowCategoryTypeName_key" UNIQUE ("cashFlowCategoryTypeName");
 �   ALTER TABLE ONLY public."Accounts.Ledger.CashFlowCategoryTypes" DROP CONSTRAINT "Accounts.Ledger.CashFlowCategoryTy_cashFlowCategoryTypeName_key";
       public            postgres    false    222                       2606    36218 P   Accounts.Ledger.CashFlowCategoryTypes Accounts.Ledger.CashFlowCategoryTypes_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Accounts.Ledger.CashFlowCategoryTypes"
    ADD CONSTRAINT "Accounts.Ledger.CashFlowCategoryTypes_pkey" PRIMARY KEY ("cashFlowCategoryTypeID");
 ~   ALTER TABLE ONLY public."Accounts.Ledger.CashFlowCategoryTypes" DROP CONSTRAINT "Accounts.Ledger.CashFlowCategoryTypes_pkey";
       public            postgres    false    222                       2606    36268 <   Accounts.Ledger.SubAccounts Accounts.Ledger.SubAccounts_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Accounts.Ledger.SubAccounts"
    ADD CONSTRAINT "Accounts.Ledger.SubAccounts_pkey" PRIMARY KEY ("subAccountID");
 j   ALTER TABLE ONLY public."Accounts.Ledger.SubAccounts" DROP CONSTRAINT "Accounts.Ledger.SubAccounts_pkey";
       public            postgres    false    228                       2606    54685 J   Accounts.Ledger.SubAccounts Accounts.Ledger.SubAccounts_subAccountName_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."Accounts.Ledger.SubAccounts"
    ADD CONSTRAINT "Accounts.Ledger.SubAccounts_subAccountName_key" UNIQUE ("subAccountName");
 x   ALTER TABLE ONLY public."Accounts.Ledger.SubAccounts" DROP CONSTRAINT "Accounts.Ledger.SubAccounts_subAccountName_key";
       public            postgres    false    228            ?           2606    45217 J   Inventory.Inventory.CustomerOrders Inventory.Inventory.CustomerOrders_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Inventory.Inventory.CustomerOrders"
    ADD CONSTRAINT "Inventory.Inventory.CustomerOrders_pkey" PRIMARY KEY ("customerOrderID");
 x   ALTER TABLE ONLY public."Inventory.Inventory.CustomerOrders" DROP CONSTRAINT "Inventory.Inventory.CustomerOrders_pkey";
       public            postgres    false    256            7           2606    45142 B   Inventory.Inventory.OtherTaxes Inventory.Inventory.OtherTaxes_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Inventory.Inventory.OtherTaxes"
    ADD CONSTRAINT "Inventory.Inventory.OtherTaxes_pkey" PRIMARY KEY ("otherTaxID");
 p   ALTER TABLE ONLY public."Inventory.Inventory.OtherTaxes" DROP CONSTRAINT "Inventory.Inventory.OtherTaxes_pkey";
       public            postgres    false    252            '           2606    45049 M   Inventory.Inventory.ItemCategories Inventory.Inventory.ProductCategories_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Inventory.Inventory.ItemCategories"
    ADD CONSTRAINT "Inventory.Inventory.ProductCategories_pkey" PRIMARY KEY ("itemCategoryID");
 {   ALTER TABLE ONLY public."Inventory.Inventory.ItemCategories" DROP CONSTRAINT "Inventory.Inventory.ProductCategories_pkey";
       public            postgres    false    244            +           2606    45056 K   Inventory.Inventory.ItemClassType Inventory.Inventory.ProductClassType_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Inventory.Inventory.ItemClassType"
    ADD CONSTRAINT "Inventory.Inventory.ProductClassType_pkey" PRIMARY KEY ("itemClassTypeID");
 y   ALTER TABLE ONLY public."Inventory.Inventory.ItemClassType" DROP CONSTRAINT "Inventory.Inventory.ProductClassType_pkey";
       public            postgres    false    246            ;           2606    45163 ;   Inventory.Inventory.Items Inventory.Inventory.Products_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Inventory.Inventory.Items"
    ADD CONSTRAINT "Inventory.Inventory.Products_pkey" PRIMARY KEY ("itemID");
 i   ALTER TABLE ONLY public."Inventory.Inventory.Items" DROP CONSTRAINT "Inventory.Inventory.Products_pkey";
       public            postgres    false    254            3           2606    45077 J   Inventory.Inventory.UnitsOfMeasure Inventory.Inventory.UnitsOfMeasure_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Inventory.Inventory.UnitsOfMeasure"
    ADD CONSTRAINT "Inventory.Inventory.UnitsOfMeasure_pkey" PRIMARY KEY ("unitOfMeasureID");
 x   ALTER TABLE ONLY public."Inventory.Inventory.UnitsOfMeasure" DROP CONSTRAINT "Inventory.Inventory.UnitsOfMeasure_pkey";
       public            postgres    false    250            #           2606    45035 >   Inventory.Inventory.VATTypes Inventory.Inventory.VATTypes_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Inventory.Inventory.VATTypes"
    ADD CONSTRAINT "Inventory.Inventory.VATTypes_pkey" PRIMARY KEY ("vatTypeID");
 l   ALTER TABLE ONLY public."Inventory.Inventory.VATTypes" DROP CONSTRAINT "Inventory.Inventory.VATTypes_pkey";
       public            postgres    false    242            /           2606    45065 E   Invetory.Inventory.ItemClasses Invetory.Inventory.ProductClasses_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Invetory.Inventory.ItemClasses"
    ADD CONSTRAINT "Invetory.Inventory.ProductClasses_pkey" PRIMARY KEY ("itemClassID");
 s   ALTER TABLE ONLY public."Invetory.Inventory.ItemClasses" DROP CONSTRAINT "Invetory.Inventory.ProductClasses_pkey";
       public            postgres    false    248                       2606    36822 .   Sales.POS.PaymentMethod POS.PaymentMethod_pkey 
   CONSTRAINT        ALTER TABLE ONLY public."Sales.POS.PaymentMethod"
    ADD CONSTRAINT "POS.PaymentMethod_pkey" PRIMARY KEY ("paymentMethodID");
 \   ALTER TABLE ONLY public."Sales.POS.PaymentMethod" DROP CONSTRAINT "POS.PaymentMethod_pkey";
       public            postgres    false    230                       2606    36843 ,   Security.Privileges Security.Privileges_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public."Security.Privileges"
    ADD CONSTRAINT "Security.Privileges_pkey" PRIMARY KEY ("privilegeID");
 Z   ALTER TABLE ONLY public."Security.Privileges" DROP CONSTRAINT "Security.Privileges_pkey";
       public            postgres    false    234                       2606    36836 &   Security.Roles Security.UserRoles_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."Security.Roles"
    ADD CONSTRAINT "Security.UserRoles_pkey" PRIMARY KEY ("roleID");
 T   ALTER TABLE ONLY public."Security.Roles" DROP CONSTRAINT "Security.UserRoles_pkey";
       public            postgres    false    232                       2606    36852 (   Security.SystemUsers Security.Users_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public."Security.SystemUsers"
    ADD CONSTRAINT "Security.Users_pkey" PRIMARY KEY ("sysUserID");
 V   ALTER TABLE ONLY public."Security.SystemUsers" DROP CONSTRAINT "Security.Users_pkey";
       public            postgres    false    236            )           2606    71091 3   Inventory.Inventory.ItemCategories itemCategoryName 
   CONSTRAINT     �   ALTER TABLE ONLY public."Inventory.Inventory.ItemCategories"
    ADD CONSTRAINT "itemCategoryName" UNIQUE ("itemCategoryName");
 a   ALTER TABLE ONLY public."Inventory.Inventory.ItemCategories" DROP CONSTRAINT "itemCategoryName";
       public            postgres    false    244            1           2606    71089 ,   Invetory.Inventory.ItemClasses itemClassName 
   CONSTRAINT     v   ALTER TABLE ONLY public."Invetory.Inventory.ItemClasses"
    ADD CONSTRAINT "itemClassName" UNIQUE ("itemClassName");
 Z   ALTER TABLE ONLY public."Invetory.Inventory.ItemClasses" DROP CONSTRAINT "itemClassName";
       public            postgres    false    248            -           2606    79367 3   Inventory.Inventory.ItemClassType itemClassTypeName 
   CONSTRAINT     �   ALTER TABLE ONLY public."Inventory.Inventory.ItemClassType"
    ADD CONSTRAINT "itemClassTypeName" UNIQUE ("itemClassTypeName");
 a   ALTER TABLE ONLY public."Inventory.Inventory.ItemClassType" DROP CONSTRAINT "itemClassTypeName";
       public            postgres    false    246            =           2606    71073 "   Inventory.Inventory.Items itemName 
   CONSTRAINT     g   ALTER TABLE ONLY public."Inventory.Inventory.Items"
    ADD CONSTRAINT "itemName" UNIQUE ("itemName");
 P   ALTER TABLE ONLY public."Inventory.Inventory.Items" DROP CONSTRAINT "itemName";
       public            postgres    false    254            9           2606    71093 +   Inventory.Inventory.OtherTaxes otherTaxName 
   CONSTRAINT     t   ALTER TABLE ONLY public."Inventory.Inventory.OtherTaxes"
    ADD CONSTRAINT "otherTaxName" UNIQUE ("otherTaxName");
 Y   ALTER TABLE ONLY public."Inventory.Inventory.OtherTaxes" DROP CONSTRAINT "otherTaxName";
       public            postgres    false    252                       2606    71099 )   Sales.POS.PaymentMethod paymentMethodName 
   CONSTRAINT     w   ALTER TABLE ONLY public."Sales.POS.PaymentMethod"
    ADD CONSTRAINT "paymentMethodName" UNIQUE ("paymentMethodName");
 W   ALTER TABLE ONLY public."Sales.POS.PaymentMethod" DROP CONSTRAINT "paymentMethodName";
       public            postgres    false    230                       2606    46469 !   Security.Privileges privilegename 
   CONSTRAINT     i   ALTER TABLE ONLY public."Security.Privileges"
    ADD CONSTRAINT privilegename UNIQUE ("privilegeName");
 M   ALTER TABLE ONLY public."Security.Privileges" DROP CONSTRAINT privilegename;
       public            postgres    false    234                       2606    46467    Security.Roles rolename 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Security.Roles"
    ADD CONSTRAINT rolename UNIQUE ("roleName");
 C   ALTER TABLE ONLY public."Security.Roles" DROP CONSTRAINT rolename;
       public            postgres    false    232            5           2606    71087 4   Inventory.Inventory.UnitsOfMeasure unitOfMeasureName 
   CONSTRAINT     �   ALTER TABLE ONLY public."Inventory.Inventory.UnitsOfMeasure"
    ADD CONSTRAINT "unitOfMeasureName" UNIQUE ("unitOfMeasureName");
 b   ALTER TABLE ONLY public."Inventory.Inventory.UnitsOfMeasure" DROP CONSTRAINT "unitOfMeasureName";
       public            postgres    false    250                       2606    46491    Security.SystemUsers userName 
   CONSTRAINT     b   ALTER TABLE ONLY public."Security.SystemUsers"
    ADD CONSTRAINT "userName" UNIQUE ("userName");
 K   ALTER TABLE ONLY public."Security.SystemUsers" DROP CONSTRAINT "userName";
       public            postgres    false    236            %           2606    71097 (   Inventory.Inventory.VATTypes vatTypeName 
   CONSTRAINT     p   ALTER TABLE ONLY public."Inventory.Inventory.VATTypes"
    ADD CONSTRAINT "vatTypeName" UNIQUE ("vatTypeName");
 V   ALTER TABLE ONLY public."Inventory.Inventory.VATTypes" DROP CONSTRAINT "vatTypeName";
       public            postgres    false    242            D           2606    36271 %   Accounts.Ledger.SubAccounts accountfk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Accounts.Ledger.SubAccounts"
    ADD CONSTRAINT accountfk FOREIGN KEY ("accountID") REFERENCES public."Accounts.Ledger.Accounts"("accountID");
 Q   ALTER TABLE ONLY public."Accounts.Ledger.SubAccounts" DROP CONSTRAINT accountfk;
       public          postgres    false    226    3337    228            @           2606    35910 -   Accounts.Ledger.AccountClasses accounttypesfk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Accounts.Ledger.AccountClasses"
    ADD CONSTRAINT accounttypesfk FOREIGN KEY ("accountTypeID") REFERENCES public."Accounts.Ledger.AccountTypes"("accountTypeID");
 Y   ALTER TABLE ONLY public."Accounts.Ledger.AccountClasses" DROP CONSTRAINT accounttypesfk;
       public          postgres    false    217    3319    215            B           2606    36257 +   Accounts.Ledger.Accounts cashflowcategoryfk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Accounts.Ledger.Accounts"
    ADD CONSTRAINT cashflowcategoryfk FOREIGN KEY ("cashFlowCategoryID") REFERENCES public."Accounts.Ledger.CashFlowCategories"("cashFlowCategoryID");
 W   ALTER TABLE ONLY public."Accounts.Ledger.Accounts" DROP CONSTRAINT cashflowcategoryfk;
       public          postgres    false    224    226    3333            A           2606    36238 9   Accounts.Ledger.CashFlowCategories cashflowcategorytypefk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Accounts.Ledger.CashFlowCategories"
    ADD CONSTRAINT cashflowcategorytypefk FOREIGN KEY ("cashFlowCategoryTypeID") REFERENCES public."Accounts.Ledger.CashFlowCategoryTypes"("cashFlowCategoryTypeID");
 e   ALTER TABLE ONLY public."Accounts.Ledger.CashFlowCategories" DROP CONSTRAINT cashflowcategorytypefk;
       public          postgres    false    224    3329    222            C           2606    36252     Accounts.Ledger.Accounts classfk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Accounts.Ledger.Accounts"
    ADD CONSTRAINT classfk FOREIGN KEY ("accountClassID") REFERENCES public."Accounts.Ledger.AccountClasses"("accountClassID");
 L   ALTER TABLE ONLY public."Accounts.Ledger.Accounts" DROP CONSTRAINT classfk;
       public          postgres    false    3323    226    217            N           2606    45189 0   Inventory.Inventory.Items costOfSaleSubAccountFK    FK CONSTRAINT     �   ALTER TABLE ONLY public."Inventory.Inventory.Items"
    ADD CONSTRAINT "costOfSaleSubAccountFK" FOREIGN KEY ("costOfSaleSubAccountID") REFERENCES public."Accounts.Ledger.SubAccounts"("subAccountID");
 ^   ALTER TABLE ONLY public."Inventory.Inventory.Items" DROP CONSTRAINT "costOfSaleSubAccountFK";
       public          postgres    false    3339    228    254            V           2606    79361 8   Inventory.Inventory.CustomerOrders createdbysystemuserfk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Inventory.Inventory.CustomerOrders"
    ADD CONSTRAINT createdbysystemuserfk FOREIGN KEY ("createdBySysUserID") REFERENCES public."Security.SystemUsers"("sysUserID");
 d   ALTER TABLE ONLY public."Inventory.Inventory.CustomerOrders" DROP CONSTRAINT createdbysystemuserfk;
       public          postgres    false    256    3355    236            H           2606    36877 )   Accounts.JV.AccountEntries creditsubaccfk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Accounts.JV.AccountEntries"
    ADD CONSTRAINT creditsubaccfk FOREIGN KEY ("creditSubAccountID") REFERENCES public."Accounts.Ledger.SubAccounts"("subAccountID");
 U   ALTER TABLE ONLY public."Accounts.JV.AccountEntries" DROP CONSTRAINT creditsubaccfk;
       public          postgres    false    3339    228    240            W           2606    45226 &   Sales.POS.OrderItems customerOrderIDFk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Sales.POS.OrderItems"
    ADD CONSTRAINT "customerOrderIDFk" FOREIGN KEY ("customerOrderID") REFERENCES public."Inventory.Inventory.CustomerOrders"("customerOrderID");
 T   ALTER TABLE ONLY public."Sales.POS.OrderItems" DROP CONSTRAINT "customerOrderIDFk";
       public          postgres    false    3391    257    256            ]           2606    79351 6   Sales.POS.CustomerOrderPaymentMethod customerOrderIDFk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Sales.POS.CustomerOrderPaymentMethod"
    ADD CONSTRAINT "customerOrderIDFk" FOREIGN KEY ("customerOrderID") REFERENCES public."Inventory.Inventory.CustomerOrders"("customerOrderID");
 d   ALTER TABLE ONLY public."Sales.POS.CustomerOrderPaymentMethod" DROP CONSTRAINT "customerOrderIDFk";
       public          postgres    false    262    3391    256            I           2606    36882 (   Accounts.JV.AccountEntries debitsubaccfk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Accounts.JV.AccountEntries"
    ADD CONSTRAINT debitsubaccfk FOREIGN KEY ("debitSubAccountID") REFERENCES public."Accounts.Ledger.SubAccounts"("subAccountID");
 T   ALTER TABLE ONLY public."Accounts.JV.AccountEntries" DROP CONSTRAINT debitsubaccfk;
       public          postgres    false    240    3339    228            F           2606    36860 $   Accounts.JV.JournalVouchers fiscalfk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Accounts.JV.JournalVouchers"
    ADD CONSTRAINT fiscalfk FOREIGN KEY ("fiscalPeriodID") REFERENCES public."Accounts.Fiscal.FiscalPeriods"("fiscalPeriodID");
 P   ALTER TABLE ONLY public."Accounts.JV.JournalVouchers" DROP CONSTRAINT fiscalfk;
       public          postgres    false    3325    220    238            L           2606    45066 .   Invetory.Inventory.ItemClasses itemClassTypeFK    FK CONSTRAINT     �   ALTER TABLE ONLY public."Invetory.Inventory.ItemClasses"
    ADD CONSTRAINT "itemClassTypeFK" FOREIGN KEY ("itemClassTypeID") REFERENCES public."Inventory.Inventory.ItemClassType"("itemClassTypeID");
 \   ALTER TABLE ONLY public."Invetory.Inventory.ItemClasses" DROP CONSTRAINT "itemClassTypeFK";
       public          postgres    false    3371    248    246            X           2606    45231    Sales.POS.OrderItems itemIDFk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Sales.POS.OrderItems"
    ADD CONSTRAINT "itemIDFk" FOREIGN KEY ("itemID") REFERENCES public."Inventory.Inventory.Items"("itemID");
 K   ALTER TABLE ONLY public."Sales.POS.OrderItems" DROP CONSTRAINT "itemIDFk";
       public          postgres    false    3387    254    257            J           2606    36887 !   Accounts.JV.AccountEntries jvidfk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Accounts.JV.AccountEntries"
    ADD CONSTRAINT jvidfk FOREIGN KEY ("journalVoucherID") REFERENCES public."Accounts.JV.JournalVouchers"("journalVoucherID");
 M   ALTER TABLE ONLY public."Accounts.JV.AccountEntries" DROP CONSTRAINT jvidfk;
       public          postgres    false    240    238    3359            O           2606    45204 $   Inventory.Inventory.Items otherTaxFK    FK CONSTRAINT     �   ALTER TABLE ONLY public."Inventory.Inventory.Items"
    ADD CONSTRAINT "otherTaxFK" FOREIGN KEY ("otherTaxID") REFERENCES public."Inventory.Inventory.OtherTaxes"("otherTaxID");
 R   ALTER TABLE ONLY public."Inventory.Inventory.Items" DROP CONSTRAINT "otherTaxFK";
       public          postgres    false    252    3383    254            ^           2606    79356 6   Sales.POS.CustomerOrderPaymentMethod paymentMethodIDFk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Sales.POS.CustomerOrderPaymentMethod"
    ADD CONSTRAINT "paymentMethodIDFk" FOREIGN KEY ("paymentMethodID") REFERENCES public."Sales.POS.PaymentMethod"("paymentMethodID");
 d   ALTER TABLE ONLY public."Sales.POS.CustomerOrderPaymentMethod" DROP CONSTRAINT "paymentMethodIDFk";
       public          postgres    false    262    230    3343            Y           2606    45291 &   Security.RolesPrivileges privilegeIDFk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Security.RolesPrivileges"
    ADD CONSTRAINT "privilegeIDFk" FOREIGN KEY ("privilegeID") REFERENCES public."Security.Privileges"("privilegeID");
 T   ALTER TABLE ONLY public."Security.RolesPrivileges" DROP CONSTRAINT "privilegeIDFk";
       public          postgres    false    260    234    3351            P           2606    45174 +   Inventory.Inventory.Items productCategoryFK    FK CONSTRAINT     �   ALTER TABLE ONLY public."Inventory.Inventory.Items"
    ADD CONSTRAINT "productCategoryFK" FOREIGN KEY ("itemCategoryID") REFERENCES public."Inventory.Inventory.ItemCategories"("itemCategoryID");
 Y   ALTER TABLE ONLY public."Inventory.Inventory.Items" DROP CONSTRAINT "productCategoryFK";
       public          postgres    false    3367    254    244            Q           2606    45169 (   Inventory.Inventory.Items productClassFK    FK CONSTRAINT     �   ALTER TABLE ONLY public."Inventory.Inventory.Items"
    ADD CONSTRAINT "productClassFK" FOREIGN KEY ("itemClassID") REFERENCES public."Invetory.Inventory.ItemClasses"("itemClassID");
 V   ALTER TABLE ONLY public."Inventory.Inventory.Items" DROP CONSTRAINT "productClassFK";
       public          postgres    false    248    3375    254            R           2606    45194 -   Inventory.Inventory.Items revenueSubAccountFK    FK CONSTRAINT     �   ALTER TABLE ONLY public."Inventory.Inventory.Items"
    ADD CONSTRAINT "revenueSubAccountFK" FOREIGN KEY ("revenueSubAccountID") REFERENCES public."Accounts.Ledger.SubAccounts"("subAccountID");
 [   ALTER TABLE ONLY public."Inventory.Inventory.Items" DROP CONSTRAINT "revenueSubAccountFK";
       public          postgres    false    228    254    3339            Z           2606    45286 !   Security.RolesPrivileges roleIDFk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Security.RolesPrivileges"
    ADD CONSTRAINT "roleIDFk" FOREIGN KEY ("roleID") REFERENCES public."Security.Roles"("roleID");
 O   ALTER TABLE ONLY public."Security.RolesPrivileges" DROP CONSTRAINT "roleIDFk";
       public          postgres    false    3347    232    260            [           2606    45672 "   Security.SystemUsersRoles roleIDFk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Security.SystemUsersRoles"
    ADD CONSTRAINT "roleIDFk" FOREIGN KEY ("roleID") REFERENCES public."Security.Roles"("roleID");
 P   ALTER TABLE ONLY public."Security.SystemUsersRoles" DROP CONSTRAINT "roleIDFk";
       public          postgres    false    3347    261    232            E           2606    36823 $   Sales.POS.PaymentMethod subAccountFK    FK CONSTRAINT     �   ALTER TABLE ONLY public."Sales.POS.PaymentMethod"
    ADD CONSTRAINT "subAccountFK" FOREIGN KEY ("subAccountID") REFERENCES public."Accounts.Ledger.SubAccounts"("subAccountID");
 R   ALTER TABLE ONLY public."Sales.POS.PaymentMethod" DROP CONSTRAINT "subAccountFK";
       public          postgres    false    228    230    3339            S           2606    45184 &   Inventory.Inventory.Items subAccountFK    FK CONSTRAINT     �   ALTER TABLE ONLY public."Inventory.Inventory.Items"
    ADD CONSTRAINT "subAccountFK" FOREIGN KEY ("assetSubAccountID") REFERENCES public."Accounts.Ledger.SubAccounts"("subAccountID");
 T   ALTER TABLE ONLY public."Inventory.Inventory.Items" DROP CONSTRAINT "subAccountFK";
       public          postgres    false    3339    228    254            \           2606    45667 %   Security.SystemUsersRoles sysUserIDFk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Security.SystemUsersRoles"
    ADD CONSTRAINT "sysUserIDFk" FOREIGN KEY ("sysUserID") REFERENCES public."Security.SystemUsers"("sysUserID");
 S   ALTER TABLE ONLY public."Security.SystemUsersRoles" DROP CONSTRAINT "sysUserIDFk";
       public          postgres    false    261    236    3355            G           2606    36865 (   Accounts.JV.JournalVouchers systemuserfk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Accounts.JV.JournalVouchers"
    ADD CONSTRAINT systemuserfk FOREIGN KEY ("postedBySysUID") REFERENCES public."Security.SystemUsers"("sysUserID");
 T   ALTER TABLE ONLY public."Accounts.JV.JournalVouchers" DROP CONSTRAINT systemuserfk;
       public          postgres    false    238    3355    236            T           2606    45164 )   Inventory.Inventory.Items unitOfMeasureFK    FK CONSTRAINT     �   ALTER TABLE ONLY public."Inventory.Inventory.Items"
    ADD CONSTRAINT "unitOfMeasureFK" FOREIGN KEY ("unitOfMeasureID") REFERENCES public."Inventory.Inventory.UnitsOfMeasure"("unitOfMeasureID");
 W   ALTER TABLE ONLY public."Inventory.Inventory.Items" DROP CONSTRAINT "unitOfMeasureFK";
       public          postgres    false    250    3379    254            M           2606    45143 2   Inventory.Inventory.OtherTaxes vatLiabSubAccountFK    FK CONSTRAINT     �   ALTER TABLE ONLY public."Inventory.Inventory.OtherTaxes"
    ADD CONSTRAINT "vatLiabSubAccountFK" FOREIGN KEY ("vatLiabSubAccountID") REFERENCES public."Accounts.Ledger.SubAccounts"("subAccountID");
 `   ALTER TABLE ONLY public."Inventory.Inventory.OtherTaxes" DROP CONSTRAINT "vatLiabSubAccountFK";
       public          postgres    false    252    228    3339            K           2606    45036 1   Inventory.Inventory.VATTypes vatLiabSubAccountFK     FK CONSTRAINT     �   ALTER TABLE ONLY public."Inventory.Inventory.VATTypes"
    ADD CONSTRAINT "vatLiabSubAccountFK " FOREIGN KEY ("vatLiabSubAccountID") REFERENCES public."Accounts.Ledger.SubAccounts"("subAccountID");
 _   ALTER TABLE ONLY public."Inventory.Inventory.VATTypes" DROP CONSTRAINT "vatLiabSubAccountFK ";
       public          postgres    false    3339    228    242            U           2606    45199 #   Inventory.Inventory.Items vatTypeFK    FK CONSTRAINT     �   ALTER TABLE ONLY public."Inventory.Inventory.Items"
    ADD CONSTRAINT "vatTypeFK" FOREIGN KEY ("vatTypeID") REFERENCES public."Inventory.Inventory.VATTypes"("vatTypeID");
 Q   ALTER TABLE ONLY public."Inventory.Inventory.Items" DROP CONSTRAINT "vatTypeFK";
       public          postgres    false    3363    254    242            �   T   x�m��� D�3Tad$�%��nљڝ獼�� �-��z74�(V�9"){�(�E�V\廈���|��!�&#�         �   x�E�Q!C��0T�����2��Pc���r�P-�XJ�ݖ�L ʧ�p�u-��x��'-y�΅w-=�CS�~׳�FrU9sY�_!�Ћ�b� qE��<����#�;�q$��u�:м!��0��tLa�l�F����V|�̨��@��Ų���Z��9|         �   x����j1E�ٯ����4���cc�iLX�a!����6��],�H͝��E�����8�}�m˸9MSx�.�3ư?���w��Yz�R /LE1{��wt��p����;�,9�RA��(�n��H��o�N!��2�U��h��K���po۩��To +��R���K�����+�C^z1/�kԚF�6��a.�~�k������      �   �   x�U��
�0����S���K)*�B��t�ڱ�D�����n,�?�<�Ҋ��n�.� FP�޳��b8�7w$��Ҫ�F�bL�r��3���3�?�y&�C�:��Ȑ�j����^�0�
����5�t���{%zz��^V��R�<\      �   F   x�3�t,.N-)�2���LL���,��2��/�K-R/Vp-,	�p���敦r�r�V���s��qqq ��      �   �   x�5��j�0E��_�(�3�CZ�PJ `�vٍ+��H�-���w��}�a��؝���;u�ݩ���	�M�ی��] �!G�����C��"]H��&#�ػ�
b��EB;ƻ������v�S/_s��
��,i��%mW�8�4��-�4xpU��Hd
4?���c!-еt%��ě�٣4iUD�&]���obj.Ĭ7��>NI5�c7��8t(K�	f�|�_yOYWF�ve�|β�S�OC      �   �   x�u��
�0�s�y�)���Q���(޼��s��֦����������R��	�>`]E(�a����ΰ(�^����e�{��c�U�l�����[b�8�]�l"'�Ş,���g>Pml� ���JW�m&j5����%C�\Ʃ�[�.�\��@��}.�� ?�\?      �   7   x�3��/H-J,��KWpL.�,�,�L-�2���+K-F6�t��K�KF����� �b      �   �  x���Qo�0ǟ�O�=1�NB�PT�6�}ًN�j���l����������|���xI�:�3��HIN�&uƫ��ѺjKg :w����b�/FV�(�1ވ.Zh��J6��pw8�R����f<ry F��;�f�>�a���̅�!ٿ��K�Ȩ̇$x�8�58w��� H�#�8P��Fb�,��]Ә������N�E�g�v-�ⵅ���ȳ��0~�Exo�mz7�p��N�.�J90`ogV&��P���L���J:����Vj'6N��c��kX�9���q������vK7����N��N�n���8"�����m׸�#���>�sJ5��F���o,�/�� �h��S�� O��T(�B%՛��͸Q�j�I�u�q�St�i]=9�^ˊ@��mU=��z�����$�J���d�`o�������f²:;�t�-�	-����?!q��I�T1~���h-kB�:��5˲��q�         �   x�e��	1��]�6�F3��P-鿎XK>�'}RxA�Po�F�0�f洹�R8����ζ8�⇑m<N�\��.3�x�f�l���kV����0k�5�]�lc�X�GC���i��O��~��/(         �   x��O=O�0�Ͽ�6&"R>;� 1����u.��g�$�=Vܠ��;�ޗ^M�
^��-�"��I��Em�p�$����e����s/��j�C�Pđ�N��J=B��V�-�]�SOX�s*���WώSo�鲽�h1�7�GB���I`�<�J.h*K�v���l∃M�'��Pm�`�$k����$�~B�ɉ�̔��[����10S�-4�R��Q��'�A=@'�
��J)�C��         y   x��=
1�z�9�����6�`k3$$2�$)r{�{���-�7Ӓ|��(0���QJH��E{E�ܫ�kN�|�����>�U��4ݷ�'��|��[t��M��_��"��f��)d         0  x���͊�0���O�H��������P�,��MH�&L&���ߣk+���b���O�+ziO�~��Z������[�^�3%&���i�f����������l(��J�<F�^�n>��I�2�"Y� W$Szt��O�.�n��zCq���l��Ҩoˌ�i`V�'Ҧ�%��NP�4�D&`�	�t·�k/��߾&8�sh�L׶0uz0�̘<A���X<� Zzr�7j,DG����a Da�(�r����O��c���P�,��n�i2IP��]��;˶@,��,;c�2G��
�Iv���^Q(xi�*�)ڽ��zl/Y�ztQ��@���g�Mf�7Y��d�
��5����LM���������,�D��K�̑x�YS��;k�b�*R��q��U�U��I�|��|��ﲀ�T�HȍX3�3s����B�������W�f����}�~�Kd��CRa�ꖬf��3���ߊ����)ݱ�ҝZRE��t~#��-y�m��<���X(y�v�w��E7��=���TOQ��(�H�5�f�6�w����Ϥ�(�2������J�͏M��`�u         }   x�]�A!��u9E/�=���0�n%:���WY�}ߟ�`~�(��U߸�C
��ިQ��9k��ĒIc��G�����si�r�T�'�P��븃i�,x�W��l��`�� ��,�         >   x�3�tML��4�2���,I-��93A΀���T ˌ�)??�0�tɯJ��b���� �H      	   O   x�3�sQp�H�-(�4�444�2�JM)MNMQ I%��r�e�9�K�R��R��f`QΨԢ|���1z\\\ 6�V         �   x�U�An�@E��)|�B(�.i7�� �CF�qd{R���VT��ya�}7�������eW'������`��jI~�[��s��.�m�-�n�)B�s�lT�{r�&/�4�r�0F!�4���ְ�m�q�g������]%?��=�%��Ϡ��[�A�.��җX�S�$�D)K^���I�jef��8MR�����=�)Ū��f�M�j=���5"~'jM         �   x��λ�0Eњ������f��s�R$H�l.����D{B�'��qpM�i�̑C�
X�������ejayY�l,�|A�����N������'v�����N1�m��y�oy�S�ٸq�� 1v.c         J   x�-���0Cѳ3��R�]�l�ۓ����03���=����<�Gq���.{a��y%z��iS������s      �   6   x�3�4�tN,��444�2�4��-(N-Ns��\�̢������J�`� T{         �   x�U��
�0@��+�����(8u���-���B�M�{��!ޚ�^
Iֳ=2����є�m�J6�eum{�q����j+�=�gk�k|��4;Y���E~��ɧ���l)ى�`�G���� �����.��R���l%Y���uQ��^yr^��J�/�"X4      �   K   x�3��tN,��L-��\�������y%�y%HL.#Nǔ�̼̼⒢Ē�"��ؘ3�� �HMI�+F��� �s$#         L   x�%ͱ�0C�:��`��.�����:�2�X��ƃ%�q``��eq�l�)&N����^qV��"/�d��^3���         t   x�3�.-H-RpL������4202�54�54V02�21�2��3�4512�442�4�24������S@Vl�```elbeb�g`di`a
V�Tm�雙�J�d�b#N�+b�@��Kb���� ��&S         &   x�3�4��2�46 F �1���XDYp��qqq oH�     