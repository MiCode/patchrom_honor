.class public final Landroid/provider/ContactsContract$CommonDataKinds$Phone;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$DataColumnsWithJoins;
.implements Landroid/provider/ContactsContract$CommonDataKinds$CommonColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$CommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Phone"
.end annotation


# static fields
.field public static final CONTENT_FILTER_URI:Landroid/net/Uri; = null

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/phone_v2"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/phone_v2"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final NORMALIZED_NUMBER:Ljava/lang/String; = "data4"

.field public static final NUMBER:Ljava/lang/String; = "data1"

.field public static final TYPE_ASSISTANT:I = 0x13

.field public static final TYPE_CALLBACK:I = 0x8

.field public static final TYPE_CAR:I = 0x9

.field public static final TYPE_COMPANY_MAIN:I = 0xa

.field public static final TYPE_FAX_HOME:I = 0x5

.field public static final TYPE_FAX_WORK:I = 0x4

.field public static final TYPE_HOME:I = 0x1

.field public static final TYPE_ISDN:I = 0xb

.field public static final TYPE_MAIN:I = 0xc

.field public static final TYPE_MMS:I = 0x14

.field public static final TYPE_MOBILE:I = 0x2

.field public static final TYPE_OTHER:I = 0x7

.field public static final TYPE_OTHER_FAX:I = 0xd

.field public static final TYPE_PAGER:I = 0x6

.field public static final TYPE_RADIO:I = 0xe

.field public static final TYPE_TELEX:I = 0xf

.field public static final TYPE_TTY_TDD:I = 0x10

.field public static final TYPE_WORK:I = 0x3

.field public static final TYPE_WORK_MOBILE:I = 0x11

.field public static final TYPE_WORK_PAGER:I = 0x12


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 5371
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "phones"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 5380
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "filter"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "context"
    .parameter "type"
    .parameter "label"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5435
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static final getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "context"
    .parameter "type"
    .parameter "label"
    .parameter "labelArray"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5425
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static final getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "res"
    .parameter "type"
    .parameter "label"

    .prologue
    .line 5475
    if-eqz p1, :cond_0

    const/16 v1, 0x13

    if-ne p1, v1, :cond_1

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5479
    .end local p2
    :goto_0
    return-object p2

    .line 5478
    .restart local p2
    :cond_1
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v0

    .line 5479
    .local v0, labelRes:I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0
.end method

.method public static final getTypeLabelResource(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 5443
    packed-switch p0, :pswitch_data_0

    .line 5464
    const v0, 0x104028a

    :goto_0
    return v0

    .line 5444
    :pswitch_0
    const v0, 0x104028b

    goto :goto_0

    .line 5445
    :pswitch_1
    const v0, 0x104028c

    goto :goto_0

    .line 5446
    :pswitch_2
    const v0, 0x104028d

    goto :goto_0

    .line 5447
    :pswitch_3
    const v0, 0x104028e

    goto :goto_0

    .line 5448
    :pswitch_4
    const v0, 0x104028f

    goto :goto_0

    .line 5449
    :pswitch_5
    const v0, 0x1040290

    goto :goto_0

    .line 5450
    :pswitch_6
    const v0, 0x1040291

    goto :goto_0

    .line 5451
    :pswitch_7
    const v0, 0x1040292

    goto :goto_0

    .line 5452
    :pswitch_8
    const v0, 0x1040293

    goto :goto_0

    .line 5453
    :pswitch_9
    const v0, 0x1040294

    goto :goto_0

    .line 5454
    :pswitch_a
    const v0, 0x1040295

    goto :goto_0

    .line 5455
    :pswitch_b
    const v0, 0x1040296

    goto :goto_0

    .line 5456
    :pswitch_c
    const v0, 0x1040297

    goto :goto_0

    .line 5457
    :pswitch_d
    const v0, 0x1040298

    goto :goto_0

    .line 5458
    :pswitch_e
    const v0, 0x1040299

    goto :goto_0

    .line 5459
    :pswitch_f
    const v0, 0x104029a

    goto :goto_0

    .line 5460
    :pswitch_10
    const v0, 0x104029b

    goto :goto_0

    .line 5461
    :pswitch_11
    const v0, 0x104029c

    goto :goto_0

    .line 5462
    :pswitch_12
    const v0, 0x104029d

    goto :goto_0

    .line 5463
    :pswitch_13
    const v0, 0x104029e

    goto :goto_0

    .line 5443
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method
