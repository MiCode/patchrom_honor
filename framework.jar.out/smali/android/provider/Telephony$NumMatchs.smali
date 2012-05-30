.class public final Landroid/provider/Telephony$NumMatchs;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NumMatchs"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "name ASC"

.field public static final IS_VMN_SHORT_CODE:Ljava/lang/String; = "is_vmn_short_code"

.field public static final MCC:Ljava/lang/String; = "mcc"

.field public static final MNC:Ljava/lang/String; = "mnc"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NUMERIC:Ljava/lang/String; = "numeric"

.field public static final NUM_MATCH:Ljava/lang/String; = "num_match"

.field public static final NUM_MATCH_SHORT:Ljava/lang/String; = "num_match_short"

.field public static final SMS_7BIT_ENABLED:Ljava/lang/String; = "sms_7bit_enabled"

.field public static final SMS_CODING_NATIONAL:Ljava/lang/String; = "sms_coding_national"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2040
    const-string v0, "content://telephony/numMatchs"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$NumMatchs;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2036
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
