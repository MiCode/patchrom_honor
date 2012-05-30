.class public abstract Lcom/android/internal/atfwd/IAtCmdFwd$Stub;
.super Landroid/os/Binder;
.source "IAtCmdFwd.java"

# interfaces
.implements Lcom/android/internal/atfwd/IAtCmdFwd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/atfwd/IAtCmdFwd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/atfwd/IAtCmdFwd$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.atfwd.IAtCmdFwd"

.field static final TRANSACTION_processAtCmd:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.android.internal.atfwd.IAtCmdFwd"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/atfwd/IAtCmdFwd$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/atfwd/IAtCmdFwd;
    .locals 2
    .parameter "obj"

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "com.android.internal.atfwd.IAtCmdFwd"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/atfwd/IAtCmdFwd;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/android/internal/atfwd/IAtCmdFwd;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/android/internal/atfwd/IAtCmdFwd$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/atfwd/IAtCmdFwd$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 68
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 43
    :sswitch_0
    const-string v3, "com.android.internal.atfwd.IAtCmdFwd"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v3, "com.android.internal.atfwd.IAtCmdFwd"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    sget-object v3, Lcom/android/internal/atfwd/AtCmd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/atfwd/AtCmd;

    .line 56
    .local v0, _arg0:Lcom/android/internal/atfwd/AtCmd;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/internal/atfwd/IAtCmdFwd$Stub;->processAtCmd(Lcom/android/internal/atfwd/AtCmd;)Lcom/android/internal/atfwd/AtCmdResponse;

    move-result-object v1

    .line 57
    .local v1, _result:Lcom/android/internal/atfwd/AtCmdResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v1, :cond_1

    .line 59
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    invoke-virtual {v1, p3, v2}, Lcom/android/internal/atfwd/AtCmdResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 54
    .end local v0           #_arg0:Lcom/android/internal/atfwd/AtCmd;
    .end local v1           #_result:Lcom/android/internal/atfwd/AtCmdResponse;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/android/internal/atfwd/AtCmd;
    goto :goto_1

    .line 63
    .restart local v1       #_result:Lcom/android/internal/atfwd/AtCmdResponse;
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 39
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
