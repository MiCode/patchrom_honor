.class public final Landroid/provider/ContactsContract$CommonDataKinds$Event;
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
    name = "Event"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/contact_event"

.field public static final START_DATE:Ljava/lang/String; = "data1"

.field public static final TYPE_ANNIVERSARY:I = 0x1

.field public static final TYPE_BIRTHDAY:I = 0x3

.field public static final TYPE_OTHER:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTypeResource(Ljava/lang/Integer;)I
    .locals 2
    .parameter "type"

    .prologue
    const v0, 0x10402a2

    .line 6396
    if-nez p0, :cond_0

    .line 6404
    :goto_0
    :pswitch_0
    return v0

    .line 6399
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 6404
    const v0, 0x104029f

    goto :goto_0

    .line 6401
    :pswitch_1
    const v0, 0x10402a1

    goto :goto_0

    .line 6402
    :pswitch_2
    const v0, 0x10402a0

    goto :goto_0

    .line 6399
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
