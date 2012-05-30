.class public Landroid/drm/DrmStore$Action;
.super Ljava/lang/Object;
.source "DrmStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/DrmStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# static fields
.field public static final DEFAULT:I = 0x0

.field public static final DISPLAY:I = 0x7

.field public static final EXECUTE:I = 0x6

.field public static final OUTPUT:I = 0x4

.field public static final PLAY:I = 0x1

.field public static final PREVIEW:I = 0x5

.field public static final RINGTONE:I = 0x2

.field public static final SHOWDIALOG:I = 0x100

.field public static final TRANSFER:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isValid(I)Z
    .locals 2
    .parameter "action"

    .prologue
    .line 194
    const/4 v0, 0x0

    .line 196
    .local v0, isValid:Z
    and-int/lit16 v1, p0, 0xff

    sparse-switch v1, :sswitch_data_0

    .line 211
    :goto_0
    return v0

    .line 209
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 196
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
        0x100 -> :sswitch_0
    .end sparse-switch
.end method
