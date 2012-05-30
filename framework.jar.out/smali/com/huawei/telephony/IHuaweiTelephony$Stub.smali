.class public abstract Lcom/huawei/telephony/IHuaweiTelephony$Stub;
.super Landroid/os/Binder;
.source "IHuaweiTelephony.java"

# interfaces
.implements Lcom/huawei/telephony/IHuaweiTelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/telephony/IHuaweiTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/telephony/IHuaweiTelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.huawei.telephony.IHuaweiTelephony"

.field static final TRANSACTION_getCdmaPrlVersion:I = 0x6

.field static final TRANSACTION_getDemoStringAsync:I = 0x1

.field static final TRANSACTION_getEsn:I = 0x5

.field static final TRANSACTION_getMin:I = 0x4

.field static final TRANSACTION_getServiceState:I = 0x3

.field static final TRANSACTION_getSignalStrength:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p0, p0, v0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/huawei/telephony/IHuaweiTelephony;
    .locals 2
    .parameter "obj"

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    .line 33
    :cond_0
    const-string v1, "com.huawei.telephony.IHuaweiTelephony"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/huawei/telephony/IHuaweiTelephony;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Lcom/huawei/telephony/IHuaweiTelephony;

    goto :goto_0

    .line 37
    :cond_1
    new-instance v0, Lcom/huawei/telephony/IHuaweiTelephony$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 114
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 49
    :sswitch_0
    const-string v3, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :sswitch_1
    const-string v3, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/telephony/IPhoneCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/telephony/IPhoneCallback;

    move-result-object v0

    .line 57
    .local v0, _arg0:Lcom/huawei/telephony/IPhoneCallback;
    invoke-virtual {p0, v0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->getDemoStringAsync(Lcom/huawei/telephony/IPhoneCallback;)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 63
    .end local v0           #_arg0:Lcom/huawei/telephony/IPhoneCallback;
    :sswitch_2
    const-string v3, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->getSignalStrength()Landroid/os/Bundle;

    move-result-object v1

    .line 65
    .local v1, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 77
    .end local v1           #_result:Landroid/os/Bundle;
    :sswitch_3
    const-string v3, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->getServiceState()Landroid/os/Bundle;

    move-result-object v1

    .line 79
    .restart local v1       #_result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    if-eqz v1, :cond_1

    .line 81
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 91
    .end local v1           #_result:Landroid/os/Bundle;
    :sswitch_4
    const-string v3, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->getMin()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_5
    const-string v3, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->getEsn()Ljava/lang/String;

    move-result-object v1

    .line 101
    .restart local v1       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 107
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_6
    const-string v3, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v1

    .line 109
    .restart local v1       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
