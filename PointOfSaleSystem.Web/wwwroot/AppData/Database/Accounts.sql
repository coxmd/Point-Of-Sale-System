PGDMP     	                
    {            Accounts    15.1    15.1 �                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
    "perRate" integer NOT NULL,
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
    "perRate" integer NOT NULL,
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
    public          postgres    false    240   [P                0    36854    Accounts.JV.JournalVouchers 
   TABLE DATA           �   COPY public."Accounts.JV.JournalVouchers" ("journalVoucherID", description, "sourceReference", amount, "transactionDateTime", "isAutomatic", "isPosted", "postedBySysUID", "fiscalPeriodID") FROM stdin;
    public          postgres    false    238   FW      �          0    35902    Accounts.Ledger.AccountClasses 
   TABLE DATA           j   COPY public."Accounts.Ledger.AccountClasses" ("accountClassID", "className", "accountTypeID") FROM stdin;
    public          postgres    false    217   �^      �          0    35893    Accounts.Ledger.AccountTypes 
   TABLE DATA           \   COPY public."Accounts.Ledger.AccountTypes" ("accountTypeID", "accountTypeName") FROM stdin;
    public          postgres    false    215   ~_      �          0    36244    Accounts.Ledger.Accounts 
   TABLE DATA           �   COPY public."Accounts.Ledger.Accounts" ("accountID", "accountName", "accountNo", "isLocked", "accountClassID", "cashFlowCategoryID") FROM stdin;
    public          postgres    false    226   �_      �          0    36230 "   Accounts.Ledger.CashFlowCategories 
   TABLE DATA           �   COPY public."Accounts.Ledger.CashFlowCategories" ("cashFlowCategoryID", "cashFlowCategoryName", "cashFlowCategoryTypeID") FROM stdin;
    public          postgres    false    224   �`      �          0    36213 %   Accounts.Ledger.CashFlowCategoryTypes 
   TABLE DATA           w   COPY public."Accounts.Ledger.CashFlowCategoryTypes" ("cashFlowCategoryTypeID", "cashFlowCategoryTypeName") FROM stdin;
    public          postgres    false    222   wa      �          0    36263    Accounts.Ledger.SubAccounts 
   TABLE DATA           �   COPY public."Accounts.Ledger.SubAccounts" ("subAccountID", "subAccountName", "currentBalance", "isActive", "isLocked", "accountID") FROM stdin;
    public          postgres    false    228   �a                0    45210 "   Inventory.Inventory.CustomerOrders 
   TABLE DATA           �   COPY public."Inventory.Inventory.CustomerOrders" ("customerOrderID", "createdBySysUserID", "dateTimeCreated", "isOrderPaid", "billIsPrinted", "billNo", "receiptNo") FROM stdin;
    public          postgres    false    256   �c                0    45042 "   Inventory.Inventory.ItemCategories 
   TABLE DATA           q   COPY public."Inventory.Inventory.ItemCategories" ("itemCategoryID", "itemCategoryName", description) FROM stdin;
    public          postgres    false    244   �j                0    45051 !   Inventory.Inventory.ItemClassType 
   TABLE DATA           e   COPY public."Inventory.Inventory.ItemClassType" ("itemClassTypeID", "itemClassTypeName") FROM stdin;
    public          postgres    false    246   fk                0    45156    Inventory.Inventory.Items 
   TABLE DATA           �  COPY public."Inventory.Inventory.Items" ("itemID", "itemName", "unitCost", "unitPrice", "totalQuantity", "availableQuantity", "reorderLevel", "expiryDate", "itemCode", barcode, batch, image, weight, length, width, height, "showInPOS", "isActive", "unitOfMeasureID", "itemClassID", "itemCategoryID", "assetSubAccountID", "costOfSaleSubAccountID", "revenueSubAccountID", "vatTypeID", "otherTaxID") FROM stdin;
    public          postgres    false    254   �k                0    45137    Inventory.Inventory.OtherTaxes 
   TABLE DATA           z   COPY public."Inventory.Inventory.OtherTaxes" ("otherTaxID", "otherTaxName", "perRate", "vatLiabSubAccountID") FROM stdin;
    public          postgres    false    252   �m                0    45072 "   Inventory.Inventory.UnitsOfMeasure 
   TABLE DATA           x   COPY public."Inventory.Inventory.UnitsOfMeasure" ("unitOfMeasureID", "unitOfMeasureName", "isSmallestUnit") FROM stdin;
    public          postgres    false    250   �m      	          0    45030    Inventory.Inventory.VATTypes 
   TABLE DATA           v   COPY public."Inventory.Inventory.VATTypes" ("vatTypeID", "vatTypeName", "perRate", "vatLiabSubAccountID") FROM stdin;
    public          postgres    false    242   2n                0    45058    Invetory.Inventory.ItemClasses 
   TABLE DATA           z   COPY public."Invetory.Inventory.ItemClasses" ("itemClassID", "itemClassName", description, "itemClassTypeID") FROM stdin;
    public          postgres    false    248   �n                0    79348 $   Sales.POS.CustomerOrderPaymentMethod 
   TABLE DATA           �   COPY public."Sales.POS.CustomerOrderPaymentMethod" ("customerOrderID", "paymentMethodID", "amountPaid", "amountTendered", "changeAmount", "dateTimeBilled") FROM stdin;
    public          postgres    false    262   �n                0    45223    Sales.POS.OrderItems 
   TABLE DATA           c   COPY public."Sales.POS.OrderItems" ("customerOrderID", "itemID", quantity, "subTotal") FROM stdin;
    public          postgres    false    257   3p      �          0    36817    Sales.POS.PaymentMethod 
   TABLE DATA           x   COPY public."Sales.POS.PaymentMethod" ("paymentMethodID", "isDefault", "paymentMethodName", "subAccountID") FROM stdin;
    public          postgres    false    230   �s                0    36838    Security.Privileges 
   TABLE DATA           O   COPY public."Security.Privileges" ("privilegeID", "privilegeName") FROM stdin;
    public          postgres    false    234   �s      �          0    36829    Security.Roles 
   TABLE DATA           M   COPY public."Security.Roles" ("roleID", "roleName", description) FROM stdin;
    public          postgres    false    232   �t                0    45283    Security.RolesPrivileges 
   TABLE DATA           M   COPY public."Security.RolesPrivileges" ("roleID", "privilegeID") FROM stdin;
    public          postgres    false    260   u                0    36845    Security.SystemUsers 
   TABLE DATA           �   COPY public."Security.SystemUsers" ("sysUserID", "userName", "surName", "otherNames", "dateTimeCreated", password, "isSuperUser") FROM stdin;
    public          postgres    false    236   Au                0    45664    Security.SystemUsersRoles 
   TABLE DATA           L   COPY public."Security.SystemUsersRoles" ("sysUserID", "roleID") FROM stdin;
    public          postgres    false    261   Sv      <           0    0 0   Accounts.Fiscal.FiscalPeriods_fiscalPeriodID_seq    SEQUENCE SET     a   SELECT pg_catalog.setval('public."Accounts.Fiscal.FiscalPeriods_fiscalPeriodID_seq"', 35, true);
          public          postgres    false    218            =           0    0 0   Accounts.Fiscal.FiscalPeriods_fiscalPeriodNo_seq    SEQUENCE SET     a   SELECT pg_catalog.setval('public."Accounts.Fiscal.FiscalPeriods_fiscalPeriodNo_seq"', 35, true);
          public          postgres    false    219            >           0    0 -   Accounts.JV.AccountEntries_accountEntryID_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('public."Accounts.JV.AccountEntries_accountEntryID_seq"', 567, true);
          public          postgres    false    239            ?           0    0 0   Accounts.JV.JournalVouchers_journalVoucherID_seq    SEQUENCE SET     b   SELECT pg_catalog.setval('public."Accounts.JV.JournalVouchers_journalVoucherID_seq"', 181, true);
          public          postgres    false    237            @           0    0 1   Accounts.Ledger.AccountClasses_accountClassID_seq    SEQUENCE SET     b   SELECT pg_catalog.setval('public."Accounts.Ledger.AccountClasses_accountClassID_seq"', 21, true);
          public          postgres    false    216            A           0    0 .   Accounts.Ledger.AccountTypes_accountTypeID_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('public."Accounts.Ledger.AccountTypes_accountTypeID_seq"', 11, true);
          public          postgres    false    214            B           0    0 &   Accounts.Ledger.Accounts_accountID_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public."Accounts.Ledger.Accounts_accountID_seq"', 148, true);
          public          postgres    false    225            C           0    0 9   Accounts.Ledger.CashFlowCategories_cashFlowCategoryID_seq    SEQUENCE SET     j   SELECT pg_catalog.setval('public."Accounts.Ledger.CashFlowCategories_cashFlowCategoryID_seq"', 22, true);
          public          postgres    false    223            D           0    0 ?   Accounts.Ledger.CashFlowCategoryType_cashFlowCategoryTypeID_seq    SEQUENCE SET     o   SELECT pg_catalog.setval('public."Accounts.Ledger.CashFlowCategoryType_cashFlowCategoryTypeID_seq"', 6, true);
          public          postgres    false    221            E           0    0 ,   Accounts.Ledger.SubAccounts_subAccountID_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public."Accounts.Ledger.SubAccounts_subAccountID_seq"', 60, true);
          public          postgres    false    227            F           0    0 -   Inventory.Inventory.CustomerOrders_billNo_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('public."Inventory.Inventory.CustomerOrders_billNo_seq"', 152, true);
          public          postgres    false    258            G           0    0 6   Inventory.Inventory.CustomerOrders_customerOrderID_seq    SEQUENCE SET     h   SELECT pg_catalog.setval('public."Inventory.Inventory.CustomerOrders_customerOrderID_seq"', 197, true);
          public          postgres    false    255            H           0    0 0   Inventory.Inventory.CustomerOrders_receiptNo_seq    SEQUENCE SET     b   SELECT pg_catalog.setval('public."Inventory.Inventory.CustomerOrders_receiptNo_seq"', 152, true);
          public          postgres    false    259            I           0    0 -   Inventory.Inventory.OtherTaxes_otherTaxID_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public."Inventory.Inventory.OtherTaxes_otherTaxID_seq"', 9, true);
          public          postgres    false    251            J           0    0 ;   Inventory.Inventory.ProductCategories_productCategoryID_seq    SEQUENCE SET     l   SELECT pg_catalog.setval('public."Inventory.Inventory.ProductCategories_productCategoryID_seq"', 22, true);
          public          postgres    false    243            K           0    0 ;   Inventory.Inventory.ProductClassType_productClassTypeID_seq    SEQUENCE SET     k   SELECT pg_catalog.setval('public."Inventory.Inventory.ProductClassType_productClassTypeID_seq"', 4, true);
          public          postgres    false    245            L           0    0 *   Inventory.Inventory.Products_productID_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public."Inventory.Inventory.Products_productID_seq"', 26, true);
          public          postgres    false    253            M           0    0 6   Inventory.Inventory.UnitsOfMeasure_unitOfMeasureID_seq    SEQUENCE SET     g   SELECT pg_catalog.setval('public."Inventory.Inventory.UnitsOfMeasure_unitOfMeasureID_seq"', 10, true);
          public          postgres    false    249            N           0    0 *   Inventory.Inventory.VATTypes_vatTypeID_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public."Inventory.Inventory.VATTypes_vatTypeID_seq"', 14, true);
          public          postgres    false    241            O           0    0 4   Invetory.Inventory.ProductClasses_productClassID_seq    SEQUENCE SET     e   SELECT pg_catalog.setval('public."Invetory.Inventory.ProductClasses_productClassID_seq"', 17, true);
          public          postgres    false    247            P           0    0 %   POS.PaymentMethod_paymentMethodID_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public."POS.PaymentMethod_paymentMethodID_seq"', 3, true);
          public          postgres    false    229            Q           0    0 #   Security.Privileges_privilegeID_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."Security.Privileges_privilegeID_seq"', 15, true);
          public          postgres    false    233            R           0    0 !   Security.UserRoles_userRoleID_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public."Security.UserRoles_userRoleID_seq"', 26, true);
          public          postgres    false    231            S           0    0    Security.Users_systemUserID_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."Security.Users_systemUserID_seq"', 127, true);
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
       public          postgres    false    3325    220    238            X           2606    45231    Sales.POS.OrderItems itemIDFk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Sales.POS.OrderItems"
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
       public          postgres    false    248    3375    254            L           2606    45066 1   Invetory.Inventory.ItemClasses productClassTypeFK    FK CONSTRAINT     �   ALTER TABLE ONLY public."Invetory.Inventory.ItemClasses"
    ADD CONSTRAINT "productClassTypeFK" FOREIGN KEY ("itemClassTypeID") REFERENCES public."Inventory.Inventory.ItemClassType"("itemClassTypeID");
 _   ALTER TABLE ONLY public."Invetory.Inventory.ItemClasses" DROP CONSTRAINT "productClassTypeFK";
       public          postgres    false    3371    248    246            R           2606    45194 -   Inventory.Inventory.Items revenueSubAccountFK    FK CONSTRAINT     �   ALTER TABLE ONLY public."Inventory.Inventory.Items"
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
       public          postgres    false    3363    254    242            �   `   x�]���0C�0E������t�9�F��,=H!��a��^|�ih(w�&���d���+s&��}�8��0�ɀ���-m������q�#�         �  x�m�k��*��sK�0�3�q���RӱJ�:��:@h]i�#����Ǩi�c�}�#�c4�~��{��H�qԓW�с&��{�����R>R74ϣ��N�
��X'�����\9��nobT'�W`Ÿlp.�%�{k!�G���h!-(j!-@K������T�E-���,j!���"g���s?,�(��ٽ#��Bj��"I��Y�rh��YRupbA�먀pY��ac��e��;���k�g%����v[r����P��3�-�7}��=`�>c�7�O{����~��=�<l��ͣ6^�8#�`r���/���ò[�:Aٜv�������a5��1�\(Ѽ^mq�v绵���`K	iezx]���)���Ž�'��{�OhE�x]��X�{fm�H�_)h�J!�~���R@��@�ۏ�!b,�5�}�B14,���h+�yG�{=���V���/z����!=DQh��C�z�TY�C�F=��g�2�C���=Ī�L��E=�Aa�C��`p`"hC�h� ����6Q�����UצA�ƪE`e����C��RF�e�ʈ�2�eĪfe����CY�����e�A�2⨌�CpRe,(#Tedʀ�2�0(#�PF��~(.�PI����U�ǔ��[����P;
�`�N��8�+MO�d��̰�ށ��}[�;��pށ�9����j�3�)!g���y=v����Oi�ɉ��tb����~g�N�͒�Svg�S�t��;߼��C:5��J��Vji�����6�r�6FF�PMuc���{S��~l�Ht��"�0�t_CD�{9�T ��Y��϶�&�6�%0�$�q�_��+�W.�E�	�K{�@M�n��5:ܞ54e�\~ߐ%�.�Yx�8K�Ȋ�	���VӁ��!T��i�j��
�*@��z�@E{&�~ok��v�؈�.6�*���`q?�uiL�%a�i�H�h0{1Ɗ�1X�CM�v�9�b�UY8��TL�Й1N%��T2�eM~M�����ܐZ_�	���ؐ
8.�G���
�N����tb��1�C�t�,��P{^`�g�����QOuG,�#BuGd�8}�#����;"�pG���~�#�������#����7R�[�H��)�P�6���(`H�u�l� ����y��ޟ�v������`�����K�3�5����I��u��b|Ț�q��@2��)���W	CZ%N?ČT�-������$C48��"�ͷ3�����N�w��$�pOԾ���/:��b��@Nb P0 �� �� 
�P ��7 lD@<� �=M^ 3�|��$ݹx�+a��Z�1��S��&M^5Qw_"S��[����xvc��	���­��Òc����cD�c�{������pd�.d�S�L���mlJ1Y�^�F@�^�t{��"<��EB�)�:����0YSK ᒺאڥuϠ�z���ԞaoV���\�DZ(v���ګAB�y���S��ƹޒ��y��>���Ґ�Tf/o������r7Rd��&h$ 5A�k�dhs��7?��$��ʈnF��G��ذxbc��7���P�7Ca�����n��Uw��,��1Q�0,A���ÈT�|z1$%ט�\¦ej��6)SƲ�HV�E�z��x�"��H�#��b`�7y�06E4�򢁺��
���R�Q�n߭1)�+=X.�rӓ������8         ~  x��Z�r7]��b~ ����,�}�
�l0\0�1v����^?ԚI���l�>�����Hd����������������x{���y[�rX�<�=}�����ju������x���R�Z�חO�"QD� ����3�5�-�MZ�M�#�0,�Ҧ��qȹ(���E�w������%>���Jh��i�b\�'-�Wŵ�Ҹ�Ԗ�b|^J,+#�`5!�ChXJ� d�����& �bݸ�X �/ �] �$��H�8��$s�ڂHG�J��@���P����zz����n�p������ey����ͤ�����n�S���M$D�R��5r���mQazY��$��Mb�X똺�K��Y.K�aT�٨n�!��w�:�@���=@ے"y(��%6~\l�%�����]�t��8J�clWI{b���̃~��]�	^*]F�� (d%D���@�� i�h-Kڏ!�\7 ��R�<R��Nȧ���~@�$���0�3�2�bt��A��al�ѥn�j%\��FH!�b����q���#�hv�C��%�Zr�c|�N�N����*�Z��Z�!B��;�Fl��%�m��@���I�\rQ����G���_A�R���͞�p �.�qT;"���������Ԣ���\�S����w�-�$�P�����ϧ��!稕��.W��5��w���i$6�.
Wk�jه�S�DUG~���՚8h��v�	�Vof%rѷZ��u>o�B͑L w��w�Q9�l�=�x�,�����ɧ��H�xvѶY�'6�;�j�-X�����ZWx�=qm�p�EZ_xLmQ�]����j\��Kw�Z���.�6+9p�sx�^��5����"m����><Vϡp�FP���3��ݬ8��[�B��O�@gӶ<�����7��������1���F�,�%0J��#Ω87_�r{/�~w�޿��w��V�&fȮ���x}�?�M���<ق�����T�Y�"q��t�4�	��k�D�$U�%��lg�G2l�r3�8#��d��G��i�P�����s�W1�O\�ic*Z .:)�:���퀰6��/�}J�̊�A�R��)�븅� �D����v���D�~M�
����e��w��-W�M:M�� ��D�TL�q�Q���S�Ϥ�Se@p��=! ���Jj�J`G�^���=�x�A��*�"Wa��N+�]�"T:Q㘳ٵ�>�'�<�:�1�_�#Wj���.�9N�(w����y�@�݇S��������/U�9)W��� �DWl"gi��^�ӻ�~y6W����!�6��5�^N��D��Ώ��p��tPhwsE�yd��u���T�)��H�"!a�1�H>9��hѐtQ���쫹eK>~��=4���`|Io��\�$�e�����|��F�I��n��_�"w�_0��%�e���5���J>vˤ��x��^8d40��e��䃊B#�$jS.|얉�0���1�rn��&�eb7,�D�>%�e����n����E�zr��;�"���[���>%�i@�cG����bhz0_������'���.ww˧O�'��dZ�o>}��|�{z�������n��g�d��/x��n]n�5��5���\�S���{3�Vj3��M�v~��Ҕ����+@�$�O}�M ��s���l����u�4����8_�X����/:i��D�n�2+�X���4^jѧH�&jf���/:	��A2@���"���՞��k0:)N��^$?B����iB�o��u�k0:)��\�g�?�䳦u�����E������S����|L>���M`�1o�ɗ�(!���F�'��mh�Ǝ�_{2��x�?:F��/M�a;Ā+P��A�q/M�f������&�7=�ī����տ���      �   �   x�U�K
�@�ݧ�(��g���n�iu �����M6J��{T�uα����W0��ys�	�����peհҁ_l;�P�;;�ً�XB&꩸�V�V*��!�v�7�F4,����b'4j�ѯ*7��4�<�r��Gv툟����h<A      �   F   x�3��/�K-R/Vp-,�,��2�J-K�+M�2�t,.N-)�2���LL��I�r�V���s��qqq ���      �     x�E��n� ���Sp�q�@R8v]5M��j��B��5��*o?�����7���l���Q	�ŔY�dO1v���s�F�TV�ar!�a�H��
��m��1d��Z�'{:�D�q�t.%l�ܨf�x��6R���?���4�����%@؍)����]b��j���U�h�b J�z��P��1	�������<S�ِYM�@YCߓ��7[i �+]u�oL񅑟��
E�̶m���X;�b8��coO�쳧5)�,�4�%N�?��=�������bV      �   h   x�3�PSp�4�2�tN,�PJMN�,KM�4�24��K-**�4�24A�MIɛ�
�ff���-��ʍJRK�sq��d 2�)�%
EE@ho� �b$|      �   7   x�3��/H-J,��KWpL.�,�,�L-�2���+K-F6�t��K�KF����� �b      �   �  x�uS���0=��·��0�@�XmW���Ѷ�^L�`Sۤ���N%[��d�{��ͳ�b8Ⱦt��N6��[�B,|iJ2��-�V���a1�TR�FtB5H���]���Sr��NH�-}&p�]!%I�4�8m>��f	��u�GC+���҈��^\��a��3*�p��ш#��|F���ƌ~�V�Zv�Iro؄�j��Cg݄d�?m_�&D�ᒞ�V�*���!N������s�5��:���[K�k�����ظi��0����ʌs����	��	�c%9��<�[!,��GKG�����(]ͳ9TZ	'��u�3]��z�</<���2�<Y�,����MB,����dQ�9|.7�c�%�,���j	�0�����g�1�C
��"���=������'���t]\3�d��������8�77�Ҟ������r��#!��}�T         �  x�mXm��:���X��M�,���x�l���3�v�b�A(�/z�d���3�ӛ�=�����Η�� �G�ҷ�[�HZH�?��7��{η�Al�qC�C��ƛ�P������W`�e�7T^>�~�
"�|#�eC��D�td2�����a��720�Pδϝ�����Ω�Q1?�x�0٠H���S�>����Jo���fާR�f�U���r�����8i�oX�o��SN�C �7��o��8<��.��=���*���%���"V�a�q�y���t�>��<���|�jc9�]�2��*�ˆ������a�2�o�U�k]Ie�����Z�h�M*��X���sP
�!�3���?K�����ꃕ��g)���4�!�?X}���;���������F<��Y�p}���ϲ�X�7g�t�xq�x��/��	]К�,q�8G<�V]bh��y,ֈG�h�%蟢:�9w��Ժ��iPN���#�mu$����!��#yC�uiպ�F����[�H�
�W�����D�Z�a͓�BX#bC.��� ��D`���t��"NCIk�YR��H��4�������X#�n�-����Xj9_�k�?�ЁxO?��E癘J#cC.�E|��X#sGB2�CFϺ�`���]MJ�>]�F��F����c<QE�B�#�$�P���6�g�YuLY�Q�������L�Q�!WB�ʕ�֨g���`�:y�ys�5h~%���>�1���K� �V��E�<�H�dT�y�
*#Ot���#u,@���g[��]��s?uv����t�r7�Z{�� U����S�� z���k`b�J�Ŭ�*�.�d/@�ut�[�!�W�!�\	=���D�#�u,��9�!&ש�lh����r�F�|�8��_(( �����m��tnЖ(?�K�<�� �~���w���b!�S���������H�*�AW��n��P!%�Z�>�	���p�AgU����y�H�U��	M,@��m�p(>�oq�`��7h�
0S�,+�P+�*k��?o=�&K~C�R��T�9c���*�Ay5V��+HJ� :7��Ά�EN�aJT��'�� ���� ����m����*TKX`�˧t����=O�U1�^�P��r�B��",�bv���n`�]S��WX��	� b|9+��E�JZ����O��˷���&������ra퇩O���<ut�b�ˆ�� ��=�ђ��t{�rXbry��;3����pna(�`aڹ�;�p}�[�y��y�_v��s{-6���,]�%���Q��\yn~�p���:�l`�����P��S�#�Q-t�E� Xc
���|ݤ�נ^ޘB~L7�M��eo�u�&���N�5�zl;X��k�\b��ޓ�70�2��]�J:�]RF��5�{�;ؚHҞ��{܈'7t9px�v�%����On��"�Xw?I[�a�)�
67�`��vlц���+��u3��kz����S��5ja�>Ei�w��+�=(�1����<���e�&h$��/�/��ʳ����*���Dcl`k�B���)~դ��j��~��ի�Q0�T��y�sg�+q]t8_*���-���`��چ*����][���l[f�ӕ8[{P������Jҝ���K�����~��/�QCi��q��	�k�S���ַgj�}�L����e���}7�c��Lwg         �   x�eNK�@>���=u�V{Wk��"t1]���ZпO=X(3ߋa�TUF�6��?H��;��B�@���i�ꢪ?d��1Q���(��S���ȅ�O�L4 pa#W"𹌧.B�g��P��� yD=�P
�N���b�2�B��2����솘=J=��Iow��ֺ#��ugH]���/&�`b         -   x�3�t����O�,��2��+�/M�(�2Fq��ō�b���� �EG         �  x����n�0���S�h<�íɩZE���^za���;�U�~�&$ݪR#5������̠�S��ض�H8��f�%�t\Ș�s��@]��}��V�68+˲�H��q3�[�C�묹9��$MN�K(�b$<4����@0�훝!����*�#2΋0�&�a8��bѺ�l��
�$f�;�l��ׅ��2�5 �5��;ۻ�mJ6�r�OB��9���y��aRHU$) X�B�{��'��d�:x�ඪ�c���1�:�_w���}�O�=�_�HY7펼��d�� :��7S�����^l���3<�)�a�O��ʴmفH �9��^���'��M�{����ʾ�@�K�_�ݰ�M�5�$PLgr���L>OL�)���Q���s}\1(�b��M�[�Nu?U�@4H�B̦hd�sco�c/b�v�"�z���+�`��¶(O]��B��b
���֐�~����d秛(����W         :   x�3�tN,I-��KW�I-��4�44�2BT0R�qYp����srZr��qqq F�_         9   x�3�IL�I-Q�4�2�HL�V�4�2���
�rz����e&*��d� Eb���� S��      	   W   x�3�sQp�H�-(IM1�4�44�2�JM)MNMQ I%��q��g^j9��m	b�9\�(怌��2�0d��1W� _#�         3   x�3�.I,���K,�Db*$�$sr�qf$ed�q���rs��qqq ��         G  x����m�@�3D�ܪ}�X��<�x����wU��oBt\�.���)��65&��&��T��?iћ��}D�PT7��P�/e00{EkJ�6P�(�oN/���V`�Wu{��t:雃=RC�:��շ��i��@ߕ�seX�o����1%G��\�̘�lM����	��{�����Mo�в�ى-��'��i��Z����ܩ�N�����j��1��g�4(:�aT�y�^���>_E������]v"VR?GL�Ӎ�:Y�#B��؈[\�D��`}�Ա��7VmX�ڞ>����7��!�d��_c��o穰�         Y  x�UVY�� ��]Lq@����:4R��B@�6���c��F�>�H9�:��p؟u���=2\X-y�QLw|Z�vq���cnn=�Hy�W�tv
oc Rߑ��͎�{��eg94��)��ۯG���XOۡ&�y��L`�t���׭�ö�hT�76��G'D����k���4�fl��Wa�`�]�Ý��̮PC����)d���oHp���J�������kD����N�y�"�!�!�,y��h�CW��1M��DgG���&|?-�/����X����木Q�8g���Z��
cE=��y����]A���r�q&��k�x�x����`L_F,���sӦ��̣�%�
�\>�A��_�
�T�\x�$�~��U�5��������J��ś�p�(���3����Vɸ���R^�c	�&c�Cc=�	#�s=�%6������}g	rn���[��,������v�Ų'\���2?~�u�Ǯ^]��m!��lk�f	�.���m�B�h�����wr��K�����o �~���z���nM#��ܐ�0�{yꄦQbv���B���E��'d!�JU�x]hL5�VbE��$�瘋-e�!�޷�] �q.����'��`x�Afػ��+ M�Fa�D��i�t�@_l�<V�]���`��ʵ�.Q�q��M'2�h��v�>�i��q^�􃱧����J|9�=��]^�n��*R
�d4�Ɉ'�wi�5
������,��ٶ�P?]W�6r��kcwZ�J[ 0��'�J��я&��4�:�+���_D��������L.�I$��
"Ǭ�h� *N����t'��_U������Ⳛ
��M$������vW�s      �   ?   x�3�4�tN,���2�4��-H-N�M�l�̢������J��)P�)�$9?3ȋ���� �>q         �   x�]��
�0��ݧ�'b���AO^�dmaW�c__	=o3�͌�&����x��R�r���[4Z�E2���V��Mз����
��D�Y��C[8k�B��.��_t�\g��W|G�Av>�3t�0�MU� |��B      �   |   x�M�A
�@E��)�´��,�.�n�L��5�L��-u���a��"E��ڪ����6q���ø����3�T��m'^`r�y.�a�C0^�֬r��9o3v=MM3A��>N��	6:             x�3�4�2�4�2�4b# 6�2�c���� 5��           x�}�MN�@F��)z������ݡeŮ�"E!@jSq}&��R�7�ޛ�?K����@D`h/�#n�+b5	QI���uB���;�����87�Y��+oĪK5���IV5�8����Au��!GI�V6��ke	��''`b��:�_�hd�,���b�t��a<^�m�F�X�k�n�����ߞMai��`
6,�ɗ�F�2�?T��ZmRK^V��?�U3�X/dN79ϰ[E	����t�S�����SȦ����C�u�{         *   x�31�4�21�4�\&& �	�k�r�CK�=... ��O     