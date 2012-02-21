.class public Landroid/hardware/usb/UsbInterface;
.super Ljava/lang/Object;
.source "UsbInterface.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/usb/UsbInterface;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mClass:I

.field private final mEndpoints:[Landroid/os/Parcelable;

.field private final mId:I

.field private final mProtocol:I

.field private final mSubclass:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    new-instance v0, Landroid/hardware/usb/UsbInterface$1;

    invoke-direct {v0}, Landroid/hardware/usb/UsbInterface$1;-><init>()V

    sput-object v0, Landroid/hardware/usb/UsbInterface;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIII[Landroid/os/Parcelable;)V
    .locals 0
    .parameter "id"
    .parameter "Class"
    .parameter "subClass"
    .parameter "protocol"
    .parameter "endpoints"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Landroid/hardware/usb/UsbInterface;->mId:I

    .line 45
    iput p2, p0, Landroid/hardware/usb/UsbInterface;->mClass:I

    .line 46
    iput p3, p0, Landroid/hardware/usb/UsbInterface;->mSubclass:I

    .line 47
    iput p4, p0, Landroid/hardware/usb/UsbInterface;->mProtocol:I

    .line 48
    iput-object p5, p0, Landroid/hardware/usb/UsbInterface;->mEndpoints:[Landroid/os/Parcelable;

    .line 49
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;
    .locals 1
    .parameter "index"

    .prologue
    .line 104
    iget-object v0, p0, Landroid/hardware/usb/UsbInterface;->mEndpoints:[Landroid/os/Parcelable;

    aget-object v0, v0, p1

    check-cast v0, Landroid/hardware/usb/UsbEndpoint;

    return-object v0
.end method

.method public getEndpointCount()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Landroid/hardware/usb/UsbInterface;->mEndpoints:[Landroid/os/Parcelable;

    array-length v0, v0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Landroid/hardware/usb/UsbInterface;->mId:I

    return v0
.end method

.method public getInterfaceClass()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Landroid/hardware/usb/UsbInterface;->mClass:I

    return v0
.end method

.method public getInterfaceProtocol()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Landroid/hardware/usb/UsbInterface;->mProtocol:I

    return v0
.end method

.method public getInterfaceSubclass()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Landroid/hardware/usb/UsbInterface;->mSubclass:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UsbInterface[mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/UsbInterface;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/UsbInterface;->mClass:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mSubclass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/UsbInterface;->mSubclass:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mProtocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/UsbInterface;->mProtocol:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mEndpoints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/usb/UsbInterface;->mEndpoints:[Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "parcel"
    .parameter "flags"

    .prologue
    .line 135
    iget v0, p0, Landroid/hardware/usb/UsbInterface;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget v0, p0, Landroid/hardware/usb/UsbInterface;->mClass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget v0, p0, Landroid/hardware/usb/UsbInterface;->mSubclass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget v0, p0, Landroid/hardware/usb/UsbInterface;->mProtocol:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget-object v0, p0, Landroid/hardware/usb/UsbInterface;->mEndpoints:[Landroid/os/Parcelable;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 140
    return-void
.end method
