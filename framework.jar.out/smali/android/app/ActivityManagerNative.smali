.class public abstract Landroid/app/ActivityManagerNative;
.super Landroid/os/Binder;
.source "ActivityManagerNative.java"

# interfaces
.implements Landroid/app/IActivityManager;


# static fields
.field private static final gDefault:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton",
            "<",
            "Landroid/app/IActivityManager;",
            ">;"
        }
    .end annotation
.end field

.field static sSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    .line 1586
    new-instance v0, Landroid/app/ActivityManagerNative$1;

    invoke-direct {v0}, Landroid/app/ActivityManagerNative$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManagerNative;->gDefault:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 107
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/ActivityManagerNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;
    .locals 2
    .parameter "obj"

    .prologue
    .line 56
    if-nez p0, :cond_1

    .line 57
    const/4 v0, 0x0

    .line 65
    :cond_0
    :goto_0
    return-object v0

    .line 59
    :cond_1
    const-string v1, "android.app.IActivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    .line 61
    .local v0, in:Landroid/app/IActivityManager;
    if-nez v0, :cond_0

    .line 65
    new-instance v0, Landroid/app/ActivityManagerProxy;

    .end local v0           #in:Landroid/app/IActivityManager;
    invoke-direct {v0, p0}, Landroid/app/ActivityManagerProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public static broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 11
    .parameter "intent"
    .parameter "permission"

    .prologue
    .line 92
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v2, p0

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getDefault()Landroid/app/IActivityManager;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Landroid/app/ActivityManagerNative;->gDefault:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    return-object v0
.end method

.method public static isSystemReady()Z
    .locals 1

    .prologue
    .line 79
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    if-nez v0, :cond_0

    .line 80
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->testIsSystemReady()Z

    move-result v0

    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    .line 82
    :cond_0
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    return v0
.end method

.method public static noteWakeupAlarm(Landroid/app/PendingIntent;)V
    .locals 2
    .parameter "ps"

    .prologue
    .line 101
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->noteWakeupAlarm(Landroid/content/IIntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 1583
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 173
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
    .line 112
    packed-switch p1, :pswitch_data_0

    .line 1579
    :pswitch_0
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 115
    :pswitch_1
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 117
    .local v95, b:Landroid/os/IBinder;
    invoke-static/range {v95 .. v95}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 118
    .local v6, app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 119
    .local v7, intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 120
    .local v8, resolvedType:Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/net/Uri;

    .line 121
    .local v9, grantedUriPermissions:[Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 122
    .local v10, grantedMode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 123
    .local v11, resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 124
    .local v12, resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 125
    .local v13, requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    const/4 v14, 0x1

    .line 126
    .local v14, onlyIfNeeded:Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v15, 0x1

    .line 127
    .local v15, debug:Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 128
    .local v16, profileFile:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v17

    .line 130
    .local v17, profileFd:Landroid/os/ParcelFileDescriptor;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    const/16 v18, 0x1

    .local v18, autoStopProfiler:Z
    :goto_4
    move-object/from16 v5, p0

    .line 131
    invoke-virtual/range {v5 .. v18}, Landroid/app/ActivityManagerNative;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/os/IBinder;Ljava/lang/String;IZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Z)I

    move-result v156

    .line 134
    .local v156, result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    move-object/from16 v0, p3

    move/from16 v1, v156

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    const/4 v5, 0x1

    goto :goto_0

    .line 125
    .end local v14           #onlyIfNeeded:Z
    .end local v15           #debug:Z
    .end local v16           #profileFile:Ljava/lang/String;
    .end local v17           #profileFd:Landroid/os/ParcelFileDescriptor;
    .end local v18           #autoStopProfiler:Z
    .end local v156           #result:I
    :cond_0
    const/4 v14, 0x0

    goto :goto_1

    .line 126
    .restart local v14       #onlyIfNeeded:Z
    :cond_1
    const/4 v15, 0x0

    goto :goto_2

    .line 128
    .restart local v15       #debug:Z
    .restart local v16       #profileFile:Ljava/lang/String;
    :cond_2
    const/16 v17, 0x0

    goto :goto_3

    .line 130
    .restart local v17       #profileFd:Landroid/os/ParcelFileDescriptor;
    :cond_3
    const/16 v18, 0x0

    goto :goto_4

    .line 141
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v9           #grantedUriPermissions:[Landroid/net/Uri;
    .end local v10           #grantedMode:I
    .end local v11           #resultTo:Landroid/os/IBinder;
    .end local v12           #resultWho:Ljava/lang/String;
    .end local v13           #requestCode:I
    .end local v14           #onlyIfNeeded:Z
    .end local v15           #debug:Z
    .end local v16           #profileFile:Ljava/lang/String;
    .end local v17           #profileFd:Landroid/os/ParcelFileDescriptor;
    .end local v95           #b:Landroid/os/IBinder;
    :pswitch_2
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 143
    .restart local v95       #b:Landroid/os/IBinder;
    invoke-static/range {v95 .. v95}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 144
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 145
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 146
    .restart local v8       #resolvedType:Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/net/Uri;

    .line 147
    .restart local v9       #grantedUriPermissions:[Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 148
    .restart local v10       #grantedMode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 149
    .restart local v11       #resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 150
    .restart local v12       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 151
    .restart local v13       #requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    const/4 v14, 0x1

    .line 152
    .restart local v14       #onlyIfNeeded:Z
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    const/4 v15, 0x1

    .line 153
    .restart local v15       #debug:Z
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 154
    .restart local v16       #profileFile:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v17

    .line 156
    .restart local v17       #profileFd:Landroid/os/ParcelFileDescriptor;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    const/16 v18, 0x1

    .restart local v18       #autoStopProfiler:Z
    :goto_8
    move-object/from16 v5, p0

    .line 157
    invoke-virtual/range {v5 .. v18}, Landroid/app/ActivityManagerNative;->startActivityAndWait(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/os/IBinder;Ljava/lang/String;IZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Z)Landroid/app/IActivityManager$WaitResult;

    move-result-object v156

    .line 160
    .local v156, result:Landroid/app/IActivityManager$WaitResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    const/4 v5, 0x0

    move-object/from16 v0, v156

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/IActivityManager$WaitResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 162
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 151
    .end local v14           #onlyIfNeeded:Z
    .end local v15           #debug:Z
    .end local v16           #profileFile:Ljava/lang/String;
    .end local v17           #profileFd:Landroid/os/ParcelFileDescriptor;
    .end local v18           #autoStopProfiler:Z
    .end local v156           #result:Landroid/app/IActivityManager$WaitResult;
    :cond_4
    const/4 v14, 0x0

    goto :goto_5

    .line 152
    .restart local v14       #onlyIfNeeded:Z
    :cond_5
    const/4 v15, 0x0

    goto :goto_6

    .line 154
    .restart local v15       #debug:Z
    .restart local v16       #profileFile:Ljava/lang/String;
    :cond_6
    const/16 v17, 0x0

    goto :goto_7

    .line 156
    .restart local v17       #profileFd:Landroid/os/ParcelFileDescriptor;
    :cond_7
    const/16 v18, 0x0

    goto :goto_8

    .line 167
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v9           #grantedUriPermissions:[Landroid/net/Uri;
    .end local v10           #grantedMode:I
    .end local v11           #resultTo:Landroid/os/IBinder;
    .end local v12           #resultWho:Ljava/lang/String;
    .end local v13           #requestCode:I
    .end local v14           #onlyIfNeeded:Z
    .end local v15           #debug:Z
    .end local v16           #profileFile:Ljava/lang/String;
    .end local v17           #profileFd:Landroid/os/ParcelFileDescriptor;
    .end local v95           #b:Landroid/os/IBinder;
    :pswitch_3
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 169
    .restart local v95       #b:Landroid/os/IBinder;
    invoke-static/range {v95 .. v95}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 170
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 171
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 172
    .restart local v8       #resolvedType:Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/net/Uri;

    .line 173
    .restart local v9       #grantedUriPermissions:[Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 174
    .restart local v10       #grantedMode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 175
    .restart local v11       #resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 176
    .restart local v12       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 177
    .restart local v13       #requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    const/4 v14, 0x1

    .line 178
    .restart local v14       #onlyIfNeeded:Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    const/4 v15, 0x1

    .line 179
    .restart local v15       #debug:Z
    :goto_a
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/content/res/Configuration;

    .local v30, config:Landroid/content/res/Configuration;
    move-object/from16 v19, p0

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move/from16 v24, v10

    move-object/from16 v25, v11

    move-object/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    move/from16 v29, v15

    .line 180
    invoke-virtual/range {v19 .. v30}, Landroid/app/ActivityManagerNative;->startActivityWithConfig(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/os/IBinder;Ljava/lang/String;IZZLandroid/content/res/Configuration;)I

    move-result v156

    .line 183
    .local v156, result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    move-object/from16 v0, p3

    move/from16 v1, v156

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 177
    .end local v14           #onlyIfNeeded:Z
    .end local v15           #debug:Z
    .end local v30           #config:Landroid/content/res/Configuration;
    .end local v156           #result:I
    :cond_8
    const/4 v14, 0x0

    goto :goto_9

    .line 178
    .restart local v14       #onlyIfNeeded:Z
    :cond_9
    const/4 v15, 0x0

    goto :goto_a

    .line 190
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v9           #grantedUriPermissions:[Landroid/net/Uri;
    .end local v10           #grantedMode:I
    .end local v11           #resultTo:Landroid/os/IBinder;
    .end local v12           #resultWho:Ljava/lang/String;
    .end local v13           #requestCode:I
    .end local v14           #onlyIfNeeded:Z
    .end local v95           #b:Landroid/os/IBinder;
    :pswitch_4
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 192
    .restart local v95       #b:Landroid/os/IBinder;
    invoke-static/range {v95 .. v95}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 193
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/IntentSender;

    .line 194
    .local v7, intent:Landroid/content/IntentSender;
    const/16 v22, 0x0

    .line 195
    .local v22, fillInIntent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    .line 196
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .end local v22           #fillInIntent:Landroid/content/Intent;
    check-cast v22, Landroid/content/Intent;

    .line 198
    .restart local v22       #fillInIntent:Landroid/content/Intent;
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 199
    .restart local v8       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 200
    .restart local v11       #resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 201
    .restart local v12       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 202
    .restart local v13       #requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 203
    .local v27, flagsMask:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .local v28, flagsValues:I
    move-object/from16 v19, p0

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v23, v8

    move-object/from16 v24, v11

    move-object/from16 v25, v12

    move/from16 v26, v13

    .line 204
    invoke-virtual/range {v19 .. v28}, Landroid/app/ActivityManagerNative;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IntentSender;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;III)I

    move-result v156

    .line 207
    .restart local v156       #result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    move-object/from16 v0, p3

    move/from16 v1, v156

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 214
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/IntentSender;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v11           #resultTo:Landroid/os/IBinder;
    .end local v12           #resultWho:Ljava/lang/String;
    .end local v13           #requestCode:I
    .end local v22           #fillInIntent:Landroid/content/Intent;
    .end local v27           #flagsMask:I
    .end local v28           #flagsValues:I
    .end local v95           #b:Landroid/os/IBinder;
    .end local v156           #result:I
    :pswitch_5
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v99

    .line 216
    .local v99, callingActivity:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 217
    .local v7, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v1, v7}, Landroid/app/ActivityManagerNative;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;)Z

    move-result v156

    .line 218
    .local v156, result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    if-eqz v156, :cond_b

    const/4 v5, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 219
    :cond_b
    const/4 v5, 0x0

    goto :goto_b

    .line 224
    .end local v7           #intent:Landroid/content/Intent;
    .end local v99           #callingActivity:Landroid/os/IBinder;
    .end local v156           #result:Z
    :pswitch_6
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 226
    .local v50, token:Landroid/os/IBinder;
    const/16 v43, 0x0

    .line 227
    .local v43, resultData:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .line 228
    .local v42, resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c

    .line 229
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v43

    .end local v43           #resultData:Landroid/content/Intent;
    check-cast v43, Landroid/content/Intent;

    .line 231
    .restart local v43       #resultData:Landroid/content/Intent;
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move/from16 v2, v42

    move-object/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;)Z

    move-result v154

    .line 232
    .local v154, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    if-eqz v154, :cond_d

    const/4 v5, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 233
    :cond_d
    const/4 v5, 0x0

    goto :goto_c

    .line 238
    .end local v42           #resultCode:I
    .end local v43           #resultData:Landroid/content/Intent;
    .end local v50           #token:Landroid/os/IBinder;
    .end local v154           #res:Z
    :pswitch_7
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 240
    .restart local v50       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 241
    .restart local v12       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 242
    .restart local v13       #requestCode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1, v12, v13}, Landroid/app/ActivityManagerNative;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 243
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 248
    .end local v12           #resultWho:Ljava/lang/String;
    .end local v13           #requestCode:I
    .end local v50           #token:Landroid/os/IBinder;
    :pswitch_8
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 250
    .restart local v50       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->willActivityBeVisible(Landroid/os/IBinder;)Z

    move-result v154

    .line 251
    .restart local v154       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    if-eqz v154, :cond_e

    const/4 v5, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 252
    :cond_e
    const/4 v5, 0x0

    goto :goto_d

    .line 258
    .end local v50           #token:Landroid/os/IBinder;
    .end local v154           #res:Z
    :pswitch_9
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 260
    .restart local v95       #b:Landroid/os/IBinder;
    if-eqz v95, :cond_f

    invoke-static/range {v95 .. v95}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 262
    .restart local v6       #app:Landroid/app/IApplicationThread;
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .line 263
    .local v33, packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 264
    if-eqz v95, :cond_10

    invoke-static/range {v95 .. v95}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v34

    .line 266
    .local v34, rec:Landroid/content/IIntentReceiver;
    :goto_f
    sget-object v5, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/content/IntentFilter;

    .line 267
    .local v35, filter:Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v36

    .local v36, perm:Ljava/lang/String;
    move-object/from16 v31, p0

    move-object/from16 v32, v6

    .line 268
    invoke-virtual/range {v31 .. v36}, Landroid/app/ActivityManagerNative;->registerReceiver(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 269
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    if-eqz v7, :cond_11

    .line 271
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v7, v0, v5}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 276
    :goto_10
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 260
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v33           #packageName:Ljava/lang/String;
    .end local v34           #rec:Landroid/content/IIntentReceiver;
    .end local v35           #filter:Landroid/content/IntentFilter;
    .end local v36           #perm:Ljava/lang/String;
    :cond_f
    const/4 v6, 0x0

    goto :goto_e

    .line 264
    .restart local v6       #app:Landroid/app/IApplicationThread;
    .restart local v33       #packageName:Ljava/lang/String;
    :cond_10
    const/16 v34, 0x0

    goto :goto_f

    .line 274
    .restart local v7       #intent:Landroid/content/Intent;
    .restart local v34       #rec:Landroid/content/IIntentReceiver;
    .restart local v35       #filter:Landroid/content/IntentFilter;
    .restart local v36       #perm:Ljava/lang/String;
    :cond_11
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_10

    .line 281
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v33           #packageName:Ljava/lang/String;
    .end local v34           #rec:Landroid/content/IIntentReceiver;
    .end local v35           #filter:Landroid/content/IntentFilter;
    .end local v36           #perm:Ljava/lang/String;
    .end local v95           #b:Landroid/os/IBinder;
    :pswitch_a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 283
    .restart local v95       #b:Landroid/os/IBinder;
    if-nez v95, :cond_12

    .line 284
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 286
    :cond_12
    invoke-static/range {v95 .. v95}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v34

    .line 287
    .restart local v34       #rec:Landroid/content/IIntentReceiver;
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterReceiver(Landroid/content/IIntentReceiver;)V

    .line 288
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 294
    .end local v34           #rec:Landroid/content/IIntentReceiver;
    .end local v95           #b:Landroid/os/IBinder;
    :pswitch_b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 296
    .restart local v95       #b:Landroid/os/IBinder;
    if-eqz v95, :cond_13

    invoke-static/range {v95 .. v95}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 298
    .restart local v6       #app:Landroid/app/IApplicationThread;
    :goto_11
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 299
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 300
    .restart local v8       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 301
    if-eqz v95, :cond_14

    invoke-static/range {v95 .. v95}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v11

    .line 303
    .local v11, resultTo:Landroid/content/IIntentReceiver;
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .line 304
    .restart local v42       #resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v43

    .line 305
    .local v43, resultData:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v44

    .line 306
    .local v44, resultExtras:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v36

    .line 307
    .restart local v36       #perm:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_15

    const/16 v46, 0x1

    .line 308
    .local v46, serialized:Z
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_16

    const/16 v47, 0x1

    .local v47, sticky:Z
    :goto_14
    move-object/from16 v37, p0

    move-object/from16 v38, v6

    move-object/from16 v39, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v11

    move-object/from16 v45, v36

    .line 309
    invoke-virtual/range {v37 .. v47}, Landroid/app/ActivityManagerNative;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I

    move-result v154

    .line 312
    .local v154, res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    move-object/from16 v0, p3

    move/from16 v1, v154

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 296
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v11           #resultTo:Landroid/content/IIntentReceiver;
    .end local v36           #perm:Ljava/lang/String;
    .end local v42           #resultCode:I
    .end local v43           #resultData:Ljava/lang/String;
    .end local v44           #resultExtras:Landroid/os/Bundle;
    .end local v46           #serialized:Z
    .end local v47           #sticky:Z
    .end local v154           #res:I
    :cond_13
    const/4 v6, 0x0

    goto :goto_11

    .line 301
    .restart local v6       #app:Landroid/app/IApplicationThread;
    .restart local v7       #intent:Landroid/content/Intent;
    .restart local v8       #resolvedType:Ljava/lang/String;
    :cond_14
    const/4 v11, 0x0

    goto :goto_12

    .line 307
    .restart local v11       #resultTo:Landroid/content/IIntentReceiver;
    .restart local v36       #perm:Ljava/lang/String;
    .restart local v42       #resultCode:I
    .restart local v43       #resultData:Ljava/lang/String;
    .restart local v44       #resultExtras:Landroid/os/Bundle;
    :cond_15
    const/16 v46, 0x0

    goto :goto_13

    .line 308
    .restart local v46       #serialized:Z
    :cond_16
    const/16 v47, 0x0

    goto :goto_14

    .line 319
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v11           #resultTo:Landroid/content/IIntentReceiver;
    .end local v36           #perm:Ljava/lang/String;
    .end local v42           #resultCode:I
    .end local v43           #resultData:Ljava/lang/String;
    .end local v44           #resultExtras:Landroid/os/Bundle;
    .end local v46           #serialized:Z
    .end local v95           #b:Landroid/os/IBinder;
    :pswitch_c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 321
    .restart local v95       #b:Landroid/os/IBinder;
    if-eqz v95, :cond_17

    invoke-static/range {v95 .. v95}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 322
    .restart local v6       #app:Landroid/app/IApplicationThread;
    :goto_15
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 323
    .restart local v7       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/app/ActivityManagerNative;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;)V

    .line 324
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 321
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    :cond_17
    const/4 v6, 0x0

    goto :goto_15

    .line 329
    .end local v95           #b:Landroid/os/IBinder;
    :pswitch_d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v41

    .line 331
    .local v41, who:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .line 332
    .restart local v42       #resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v43

    .line 333
    .restart local v43       #resultData:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v44

    .line 334
    .restart local v44       #resultExtras:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_19

    const/16 v45, 0x1

    .line 335
    .local v45, resultAbort:Z
    :goto_16
    if-eqz v41, :cond_18

    move-object/from16 v40, p0

    .line 336
    invoke-virtual/range {v40 .. v45}, Landroid/app/ActivityManagerNative;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Z)V

    .line 338
    :cond_18
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 334
    .end local v45           #resultAbort:Z
    :cond_19
    const/16 v45, 0x0

    goto :goto_16

    .line 343
    .end local v41           #who:Landroid/os/IBinder;
    .end local v42           #resultCode:I
    .end local v43           #resultData:Ljava/lang/String;
    .end local v44           #resultExtras:Landroid/os/Bundle;
    :pswitch_e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 346
    .restart local v6       #app:Landroid/app/IApplicationThread;
    if-eqz v6, :cond_1a

    .line 347
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ActivityManagerNative;->attachApplication(Landroid/app/IApplicationThread;)V

    .line 349
    :cond_1a
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 354
    .end local v6           #app:Landroid/app/IApplicationThread;
    :pswitch_f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 356
    .restart local v50       #token:Landroid/os/IBinder;
    const/16 v30, 0x0

    .line 357
    .restart local v30       #config:Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1b

    .line 358
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v30

    .end local v30           #config:Landroid/content/res/Configuration;
    check-cast v30, Landroid/content/res/Configuration;

    .line 360
    .restart local v30       #config:Landroid/content/res/Configuration;
    :cond_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1d

    const/16 v161, 0x1

    .line 361
    .local v161, stopProfiling:Z
    :goto_17
    if-eqz v50, :cond_1c

    .line 362
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v30

    move/from16 v3, v161

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V

    .line 364
    :cond_1c
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 360
    .end local v161           #stopProfiling:Z
    :cond_1d
    const/16 v161, 0x0

    goto :goto_17

    .line 369
    .end local v30           #config:Landroid/content/res/Configuration;
    .end local v50           #token:Landroid/os/IBinder;
    :pswitch_10
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 371
    .restart local v50       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityPaused(Landroid/os/IBinder;)V

    .line 372
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 377
    .end local v50           #token:Landroid/os/IBinder;
    :pswitch_11
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 379
    .restart local v50       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v127

    .line 380
    .local v127, map:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1e

    sget-object v5, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    move-object/from16 v167, v5

    .line 382
    .local v167, thumbnail:Landroid/graphics/Bitmap;
    :goto_18
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v106

    check-cast v106, Ljava/lang/CharSequence;

    .line 383
    .local v106, description:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v127

    move-object/from16 v3, v167

    move-object/from16 v4, v106

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 384
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 380
    .end local v106           #description:Ljava/lang/CharSequence;
    .end local v167           #thumbnail:Landroid/graphics/Bitmap;
    :cond_1e
    const/16 v167, 0x0

    goto :goto_18

    .line 389
    .end local v50           #token:Landroid/os/IBinder;
    .end local v127           #map:Landroid/os/Bundle;
    :pswitch_12
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 391
    .restart local v50       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activitySlept(Landroid/os/IBinder;)V

    .line 392
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 397
    .end local v50           #token:Landroid/os/IBinder;
    :pswitch_13
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 399
    .restart local v50       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityDestroyed(Landroid/os/IBinder;)V

    .line 400
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 405
    .end local v50           #token:Landroid/os/IBinder;
    :pswitch_14
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 407
    .restart local v50       #token:Landroid/os/IBinder;
    if-eqz v50, :cond_1f

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v154

    .line 408
    .local v154, res:Ljava/lang/String;
    :goto_19
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    move-object/from16 v0, p3

    move-object/from16 v1, v154

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 410
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 407
    .end local v154           #res:Ljava/lang/String;
    :cond_1f
    const/16 v154, 0x0

    goto :goto_19

    .line 414
    .end local v50           #token:Landroid/os/IBinder;
    :pswitch_15
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 416
    .restart local v50       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v103

    .line 417
    .local v103, cn:Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    move-object/from16 v0, v103

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 419
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 423
    .end local v50           #token:Landroid/os/IBinder;
    .end local v103           #cn:Landroid/content/ComponentName;
    :pswitch_16
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v129

    .line 425
    .local v129, maxNum:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    .line 426
    .local v60, fl:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v151

    .line 427
    .local v151, receiverBinder:Landroid/os/IBinder;
    if-eqz v151, :cond_20

    invoke-static/range {v151 .. v151}, Landroid/app/IThumbnailReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IThumbnailReceiver;

    move-result-object v150

    .line 430
    .local v150, receiver:Landroid/app/IThumbnailReceiver;
    :goto_1a
    move-object/from16 v0, p0

    move/from16 v1, v129

    move/from16 v2, v60

    move-object/from16 v3, v150

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;

    move-result-object v121

    .line 431
    .local v121, list:Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    if-eqz v121, :cond_21

    invoke-interface/range {v121 .. v121}, Ljava/util/List;->size()I

    move-result v89

    .line 433
    .local v89, N:I
    :goto_1b
    move-object/from16 v0, p3

    move/from16 v1, v89

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 435
    const/16 v111, 0x0

    .local v111, i:I
    :goto_1c
    move/from16 v0, v111

    move/from16 v1, v89

    if-ge v0, v1, :cond_22

    .line 436
    move-object/from16 v0, v121

    move/from16 v1, v111

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v114

    check-cast v114, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 438
    .local v114, info:Landroid/app/ActivityManager$RunningTaskInfo;
    const/4 v5, 0x0

    move-object/from16 v0, v114

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/ActivityManager$RunningTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 435
    add-int/lit8 v111, v111, 0x1

    goto :goto_1c

    .line 427
    .end local v89           #N:I
    .end local v111           #i:I
    .end local v114           #info:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v121           #list:Ljava/util/List;
    .end local v150           #receiver:Landroid/app/IThumbnailReceiver;
    :cond_20
    const/16 v150, 0x0

    goto :goto_1a

    .line 432
    .restart local v121       #list:Ljava/util/List;
    .restart local v150       #receiver:Landroid/app/IThumbnailReceiver;
    :cond_21
    const/16 v89, -0x1

    goto :goto_1b

    .line 440
    .restart local v89       #N:I
    .restart local v111       #i:I
    :cond_22
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 444
    .end local v60           #fl:I
    .end local v89           #N:I
    .end local v111           #i:I
    .end local v121           #list:Ljava/util/List;
    .end local v129           #maxNum:I
    .end local v150           #receiver:Landroid/app/IThumbnailReceiver;
    .end local v151           #receiverBinder:Landroid/os/IBinder;
    :pswitch_17
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v129

    .line 446
    .restart local v129       #maxNum:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    .line 447
    .restart local v60       #fl:I
    move-object/from16 v0, p0

    move/from16 v1, v129

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getRecentTasks(II)Ljava/util/List;

    move-result-object v123

    .line 449
    .local v123, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    move-object/from16 v0, p3

    move-object/from16 v1, v123

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 451
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 456
    .end local v60           #fl:I
    .end local v123           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v129           #maxNum:I
    :pswitch_18
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 457
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->clearRecentTasks()V

    .line 458
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 459
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 465
    :pswitch_19
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v51

    .line 467
    .local v51, id:I
    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getTaskThumbnails(I)Landroid/app/ActivityManager$TaskThumbnails;

    move-result-object v98

    .line 468
    .local v98, bm:Landroid/app/ActivityManager$TaskThumbnails;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    if-eqz v98, :cond_23

    .line 470
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 471
    const/4 v5, 0x0

    move-object/from16 v0, v98

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/ActivityManager$TaskThumbnails;->writeToParcel(Landroid/os/Parcel;I)V

    .line 475
    :goto_1d
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 473
    :cond_23
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1d

    .line 479
    .end local v51           #id:I
    .end local v98           #bm:Landroid/app/ActivityManager$TaskThumbnails;
    :pswitch_1a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 480
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v129

    .line 481
    .restart local v129       #maxNum:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    .line 482
    .restart local v60       #fl:I
    move-object/from16 v0, p0

    move/from16 v1, v129

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getServices(II)Ljava/util/List;

    move-result-object v121

    .line 483
    .restart local v121       #list:Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 484
    if-eqz v121, :cond_24

    invoke-interface/range {v121 .. v121}, Ljava/util/List;->size()I

    move-result v89

    .line 485
    .restart local v89       #N:I
    :goto_1e
    move-object/from16 v0, p3

    move/from16 v1, v89

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 487
    const/16 v111, 0x0

    .restart local v111       #i:I
    :goto_1f
    move/from16 v0, v111

    move/from16 v1, v89

    if-ge v0, v1, :cond_25

    .line 488
    move-object/from16 v0, v121

    move/from16 v1, v111

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v114

    check-cast v114, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 490
    .local v114, info:Landroid/app/ActivityManager$RunningServiceInfo;
    const/4 v5, 0x0

    move-object/from16 v0, v114

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/ActivityManager$RunningServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 487
    add-int/lit8 v111, v111, 0x1

    goto :goto_1f

    .line 484
    .end local v89           #N:I
    .end local v111           #i:I
    .end local v114           #info:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_24
    const/16 v89, -0x1

    goto :goto_1e

    .line 492
    .restart local v89       #N:I
    .restart local v111       #i:I
    :cond_25
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 496
    .end local v60           #fl:I
    .end local v89           #N:I
    .end local v111           #i:I
    .end local v121           #list:Ljava/util/List;
    .end local v129           #maxNum:I
    :pswitch_1b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 497
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v122

    .line 498
    .local v122, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 499
    move-object/from16 v0, p3

    move-object/from16 v1, v122

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 500
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 504
    .end local v122           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    :pswitch_1c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 505
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v124

    .line 506
    .local v124, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    move-object/from16 v0, p3

    move-object/from16 v1, v124

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 508
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 512
    .end local v124           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :pswitch_1d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 513
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v125

    .line 514
    .local v125, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 515
    move-object/from16 v0, p3

    move-object/from16 v1, v125

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 516
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 520
    .end local v125           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :pswitch_1e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 521
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v165

    .line 522
    .local v165, task:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    .line 523
    .restart local v60       #fl:I
    move-object/from16 v0, p0

    move/from16 v1, v165

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->moveTaskToFront(II)V

    .line 524
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 525
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 529
    .end local v60           #fl:I
    .end local v165           #task:I
    :pswitch_1f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 530
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v165

    .line 531
    .restart local v165       #task:I
    move-object/from16 v0, p0

    move/from16 v1, v165

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->moveTaskToBack(I)V

    .line 532
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 537
    .end local v165           #task:I
    :pswitch_20
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 538
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 539
    .restart local v50       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_26

    const/16 v135, 0x1

    .line 540
    .local v135, nonRoot:Z
    :goto_20
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move/from16 v2, v135

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    move-result v154

    .line 541
    .local v154, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 542
    if-eqz v154, :cond_27

    const/4 v5, 0x1

    :goto_21
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 543
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 539
    .end local v135           #nonRoot:Z
    .end local v154           #res:Z
    :cond_26
    const/16 v135, 0x0

    goto :goto_20

    .line 542
    .restart local v135       #nonRoot:Z
    .restart local v154       #res:Z
    :cond_27
    const/4 v5, 0x0

    goto :goto_21

    .line 547
    .end local v50           #token:Landroid/os/IBinder;
    .end local v135           #nonRoot:Z
    .end local v154           #res:Z
    :pswitch_21
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 548
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v165

    .line 549
    .restart local v165       #task:I
    move-object/from16 v0, p0

    move/from16 v1, v165

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->moveTaskBackwards(I)V

    .line 550
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 551
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 555
    .end local v165           #task:I
    :pswitch_22
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 556
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 557
    .restart local v50       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_28

    const/16 v137, 0x1

    .line 558
    .local v137, onlyRoot:Z
    :goto_22
    if-eqz v50, :cond_29

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v154

    .line 560
    .local v154, res:I
    :goto_23
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 561
    move-object/from16 v0, p3

    move/from16 v1, v154

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 562
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 557
    .end local v137           #onlyRoot:Z
    .end local v154           #res:I
    :cond_28
    const/16 v137, 0x0

    goto :goto_22

    .line 558
    .restart local v137       #onlyRoot:Z
    :cond_29
    const/16 v154, -0x1

    goto :goto_23

    .line 566
    .end local v50           #token:Landroid/os/IBinder;
    .end local v137           #onlyRoot:Z
    :pswitch_23
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 567
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 568
    .restart local v50       #token:Landroid/os/IBinder;
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v49

    .line 569
    .local v49, className:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->finishOtherInstances(Landroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 570
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 571
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 575
    .end local v49           #className:Landroid/content/ComponentName;
    .end local v50           #token:Landroid/os/IBinder;
    :pswitch_24
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 576
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 577
    .restart local v50       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2a

    sget-object v5, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    move-object/from16 v167, v5

    .line 579
    .restart local v167       #thumbnail:Landroid/graphics/Bitmap;
    :goto_24
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v106

    check-cast v106, Ljava/lang/CharSequence;

    .line 580
    .restart local v106       #description:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v167

    move-object/from16 v3, v106

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->reportThumbnail(Landroid/os/IBinder;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 581
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 582
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 577
    .end local v106           #description:Ljava/lang/CharSequence;
    .end local v167           #thumbnail:Landroid/graphics/Bitmap;
    :cond_2a
    const/16 v167, 0x0

    goto :goto_24

    .line 586
    .end local v50           #token:Landroid/os/IBinder;
    :pswitch_25
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 587
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 588
    .restart local v95       #b:Landroid/os/IBinder;
    invoke-static/range {v95 .. v95}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 589
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v134

    .line 590
    .local v134, name:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v6, v1}, Landroid/app/ActivityManagerNative;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v105

    .line 591
    .local v105, cph:Landroid/app/IActivityManager$ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    if-eqz v105, :cond_2b

    .line 593
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 594
    const/4 v5, 0x0

    move-object/from16 v0, v105

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/IActivityManager$ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    .line 598
    :goto_25
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 596
    :cond_2b
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_25

    .line 602
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v95           #b:Landroid/os/IBinder;
    .end local v105           #cph:Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v134           #name:Ljava/lang/String;
    :pswitch_26
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 603
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 604
    .restart local v95       #b:Landroid/os/IBinder;
    invoke-static/range {v95 .. v95}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 605
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/app/IActivityManager$ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v146

    .line 607
    .local v146, providers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v146

    invoke-virtual {v0, v6, v1}, Landroid/app/ActivityManagerNative;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V

    .line 608
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 613
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v95           #b:Landroid/os/IBinder;
    .end local v146           #providers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    :pswitch_27
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 614
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 615
    .restart local v95       #b:Landroid/os/IBinder;
    invoke-static/range {v95 .. v95}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 616
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v134

    .line 617
    .restart local v134       #name:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v6, v1}, Landroid/app/ActivityManagerNative;->removeContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;)V

    .line 618
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 623
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v95           #b:Landroid/os/IBinder;
    .end local v134           #name:Ljava/lang/String;
    :pswitch_28
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 624
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v104

    check-cast v104, Landroid/content/ComponentName;

    .line 625
    .local v104, comp:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v140

    .line 626
    .local v140, pi:Landroid/app/PendingIntent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 627
    move-object/from16 v0, v140

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/app/PendingIntent;->writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V

    .line 628
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 632
    .end local v104           #comp:Landroid/content/ComponentName;
    .end local v140           #pi:Landroid/app/PendingIntent;
    :pswitch_29
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 633
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 634
    .restart local v95       #b:Landroid/os/IBinder;
    invoke-static/range {v95 .. v95}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 635
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Landroid/content/Intent;

    .line 636
    .local v57, service:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 637
    .restart local v8       #resolvedType:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-virtual {v0, v6, v1, v8}, Landroid/app/ActivityManagerNative;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v103

    .line 638
    .restart local v103       #cn:Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 639
    move-object/from16 v0, v103

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 640
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 644
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v57           #service:Landroid/content/Intent;
    .end local v95           #b:Landroid/os/IBinder;
    .end local v103           #cn:Landroid/content/ComponentName;
    :pswitch_2a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 645
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 646
    .restart local v95       #b:Landroid/os/IBinder;
    invoke-static/range {v95 .. v95}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 647
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Landroid/content/Intent;

    .line 648
    .restart local v57       #service:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 649
    .restart local v8       #resolvedType:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-virtual {v0, v6, v1, v8}, Landroid/app/ActivityManagerNative;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;)I

    move-result v154

    .line 650
    .restart local v154       #res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    move-object/from16 v0, p3

    move/from16 v1, v154

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 652
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 656
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v57           #service:Landroid/content/Intent;
    .end local v95           #b:Landroid/os/IBinder;
    .end local v154           #res:I
    :pswitch_2b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 657
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v49

    .line 658
    .restart local v49       #className:Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 659
    .restart local v50       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v160

    .line 660
    .local v160, startId:I
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    move/from16 v3, v160

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z

    move-result v154

    .line 661
    .local v154, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 662
    if-eqz v154, :cond_2c

    const/4 v5, 0x1

    :goto_26
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 663
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 662
    :cond_2c
    const/4 v5, 0x0

    goto :goto_26

    .line 667
    .end local v49           #className:Landroid/content/ComponentName;
    .end local v50           #token:Landroid/os/IBinder;
    .end local v154           #res:Z
    .end local v160           #startId:I
    :pswitch_2c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 668
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v49

    .line 669
    .restart local v49       #className:Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 670
    .restart local v50       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v51

    .line 671
    .restart local v51       #id:I
    const/16 v52, 0x0

    .line 672
    .local v52, notification:Landroid/app/Notification;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2d

    .line 673
    sget-object v5, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v52

    .end local v52           #notification:Landroid/app/Notification;
    check-cast v52, Landroid/app/Notification;

    .line 675
    .restart local v52       #notification:Landroid/app/Notification;
    :cond_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2e

    const/16 v53, 0x1

    .local v53, removeNotification:Z
    :goto_27
    move-object/from16 v48, p0

    .line 676
    invoke-virtual/range {v48 .. v53}, Landroid/app/ActivityManagerNative;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;Z)V

    .line 677
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 678
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 675
    .end local v53           #removeNotification:Z
    :cond_2e
    const/16 v53, 0x0

    goto :goto_27

    .line 682
    .end local v49           #className:Landroid/content/ComponentName;
    .end local v50           #token:Landroid/os/IBinder;
    .end local v51           #id:I
    .end local v52           #notification:Landroid/app/Notification;
    :pswitch_2d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 683
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 684
    .restart local v95       #b:Landroid/os/IBinder;
    invoke-static/range {v95 .. v95}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 685
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 686
    .restart local v50       #token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Landroid/content/Intent;

    .line 687
    .restart local v57       #service:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 688
    .restart local v8       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 689
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    .line 690
    .restart local v60       #fl:I
    invoke-static/range {v95 .. v95}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v59

    .local v59, conn:Landroid/app/IServiceConnection;
    move-object/from16 v54, p0

    move-object/from16 v55, v6

    move-object/from16 v56, v50

    move-object/from16 v58, v8

    .line 691
    invoke-virtual/range {v54 .. v60}, Landroid/app/ActivityManagerNative;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;I)I

    move-result v154

    .line 692
    .local v154, res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 693
    move-object/from16 v0, p3

    move/from16 v1, v154

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 694
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 698
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v50           #token:Landroid/os/IBinder;
    .end local v57           #service:Landroid/content/Intent;
    .end local v59           #conn:Landroid/app/IServiceConnection;
    .end local v60           #fl:I
    .end local v95           #b:Landroid/os/IBinder;
    .end local v154           #res:I
    :pswitch_2e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 699
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 700
    .restart local v95       #b:Landroid/os/IBinder;
    invoke-static/range {v95 .. v95}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v59

    .line 701
    .restart local v59       #conn:Landroid/app/IServiceConnection;
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindService(Landroid/app/IServiceConnection;)Z

    move-result v154

    .line 702
    .local v154, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 703
    if-eqz v154, :cond_2f

    const/4 v5, 0x1

    :goto_28
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 704
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 703
    :cond_2f
    const/4 v5, 0x0

    goto :goto_28

    .line 708
    .end local v59           #conn:Landroid/app/IServiceConnection;
    .end local v95           #b:Landroid/os/IBinder;
    .end local v154           #res:Z
    :pswitch_2f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 709
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 710
    .restart local v50       #token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 711
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v57

    .line 712
    .local v57, service:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v7, v2}, Landroid/app/ActivityManagerNative;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 713
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 714
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 718
    .end local v7           #intent:Landroid/content/Intent;
    .end local v50           #token:Landroid/os/IBinder;
    .end local v57           #service:Landroid/os/IBinder;
    :pswitch_30
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 719
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 720
    .restart local v50       #token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 721
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_30

    const/16 v107, 0x1

    .line 722
    .local v107, doRebind:Z
    :goto_29
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move/from16 v2, v107

    invoke-virtual {v0, v1, v7, v2}, Landroid/app/ActivityManagerNative;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    .line 723
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 724
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 721
    .end local v107           #doRebind:Z
    :cond_30
    const/16 v107, 0x0

    goto :goto_29

    .line 728
    .end local v7           #intent:Landroid/content/Intent;
    .end local v50           #token:Landroid/os/IBinder;
    :pswitch_31
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 729
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 730
    .restart local v50       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v68

    .line 731
    .local v68, type:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v160

    .line 732
    .restart local v160       #startId:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v154

    .line 733
    .local v154, res:I
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move/from16 v2, v68

    move/from16 v3, v160

    move/from16 v4, v154

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->serviceDoneExecuting(Landroid/os/IBinder;III)V

    .line 734
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 735
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 739
    .end local v50           #token:Landroid/os/IBinder;
    .end local v68           #type:I
    .end local v154           #res:I
    .end local v160           #startId:I
    :pswitch_32
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 740
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v49

    .line 741
    .restart local v49       #className:Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 742
    .restart local v16       #profileFile:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    .line 743
    .restart local v60       #fl:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v65

    .line 744
    .local v65, arguments:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 745
    .restart local v95       #b:Landroid/os/IBinder;
    invoke-static/range {v95 .. v95}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v66

    .local v66, w:Landroid/app/IInstrumentationWatcher;
    move-object/from16 v61, p0

    move-object/from16 v62, v49

    move-object/from16 v63, v16

    move/from16 v64, v60

    .line 746
    invoke-virtual/range {v61 .. v66}, Landroid/app/ActivityManagerNative;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;)Z

    move-result v154

    .line 747
    .local v154, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 748
    if-eqz v154, :cond_31

    const/4 v5, 0x1

    :goto_2a
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 749
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 748
    :cond_31
    const/4 v5, 0x0

    goto :goto_2a

    .line 754
    .end local v16           #profileFile:Ljava/lang/String;
    .end local v49           #className:Landroid/content/ComponentName;
    .end local v60           #fl:I
    .end local v65           #arguments:Landroid/os/Bundle;
    .end local v66           #w:Landroid/app/IInstrumentationWatcher;
    .end local v95           #b:Landroid/os/IBinder;
    .end local v154           #res:Z
    :pswitch_33
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 755
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 756
    .restart local v95       #b:Landroid/os/IBinder;
    invoke-static/range {v95 .. v95}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 757
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .line 758
    .restart local v42       #resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v157

    .line 759
    .local v157, results:Landroid/os/Bundle;
    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v157

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ActivityManagerNative;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V

    .line 760
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 761
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 765
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v42           #resultCode:I
    .end local v95           #b:Landroid/os/IBinder;
    .end local v157           #results:Landroid/os/Bundle;
    :pswitch_34
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 766
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v30

    .line 767
    .restart local v30       #config:Landroid/content/res/Configuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 768
    const/4 v5, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 769
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 773
    .end local v30           #config:Landroid/content/res/Configuration;
    :pswitch_35
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 774
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/content/res/Configuration;

    .line 775
    .restart local v30       #config:Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 776
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 777
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 781
    .end local v30           #config:Landroid/content/res/Configuration;
    :pswitch_36
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 782
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 783
    .restart local v50       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v153

    .line 784
    .local v153, requestedOrientation:I
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move/from16 v2, v153

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setRequestedOrientation(Landroid/os/IBinder;I)V

    .line 785
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 786
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 790
    .end local v50           #token:Landroid/os/IBinder;
    .end local v153           #requestedOrientation:I
    :pswitch_37
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 791
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 792
    .restart local v50       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRequestedOrientation(Landroid/os/IBinder;)I

    move-result v152

    .line 793
    .local v152, req:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 794
    move-object/from16 v0, p3

    move/from16 v1, v152

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 795
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 799
    .end local v50           #token:Landroid/os/IBinder;
    .end local v152           #req:I
    :pswitch_38
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 800
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 801
    .restart local v50       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityClassForToken(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v103

    .line 802
    .restart local v103       #cn:Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 803
    move-object/from16 v0, v103

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 804
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 808
    .end local v50           #token:Landroid/os/IBinder;
    .end local v103           #cn:Landroid/content/ComponentName;
    :pswitch_39
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 809
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 810
    .restart local v50       #token:Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 811
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForToken(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 812
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 816
    .end local v50           #token:Landroid/os/IBinder;
    :pswitch_3a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 817
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v68

    .line 818
    .restart local v68       #type:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .line 819
    .restart local v33       #packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 820
    .restart local v50       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 821
    .restart local v12       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 824
    .restart local v13       #requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_32

    .line 825
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v73

    check-cast v73, [Landroid/content/Intent;

    .line 826
    .local v73, requestIntents:[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v74

    .line 831
    .local v74, requestResolvedTypes:[Ljava/lang/String;
    :goto_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    .restart local v60       #fl:I
    move-object/from16 v67, p0

    move-object/from16 v69, v33

    move-object/from16 v70, v50

    move-object/from16 v71, v12

    move/from16 v72, v13

    move/from16 v75, v60

    .line 832
    invoke-virtual/range {v67 .. v75}, Landroid/app/ActivityManagerNative;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;I)Landroid/content/IIntentSender;

    move-result-object v154

    .line 835
    .local v154, res:Landroid/content/IIntentSender;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 836
    if-eqz v154, :cond_33

    invoke-interface/range {v154 .. v154}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :goto_2c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 837
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 828
    .end local v60           #fl:I
    .end local v73           #requestIntents:[Landroid/content/Intent;
    .end local v74           #requestResolvedTypes:[Ljava/lang/String;
    .end local v154           #res:Landroid/content/IIntentSender;
    :cond_32
    const/16 v73, 0x0

    .line 829
    .restart local v73       #requestIntents:[Landroid/content/Intent;
    const/16 v74, 0x0

    .restart local v74       #requestResolvedTypes:[Ljava/lang/String;
    goto :goto_2b

    .line 836
    .restart local v60       #fl:I
    .restart local v154       #res:Landroid/content/IIntentSender;
    :cond_33
    const/4 v5, 0x0

    goto :goto_2c

    .line 841
    .end local v12           #resultWho:Ljava/lang/String;
    .end local v13           #requestCode:I
    .end local v33           #packageName:Ljava/lang/String;
    .end local v50           #token:Landroid/os/IBinder;
    .end local v60           #fl:I
    .end local v68           #type:I
    .end local v73           #requestIntents:[Landroid/content/Intent;
    .end local v74           #requestResolvedTypes:[Ljava/lang/String;
    .end local v154           #res:Landroid/content/IIntentSender;
    :pswitch_3b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 842
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v148

    .line 844
    .local v148, r:Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v148

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->cancelIntentSender(Landroid/content/IIntentSender;)V

    .line 845
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 846
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 850
    .end local v148           #r:Landroid/content/IIntentSender;
    :pswitch_3c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 851
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v148

    .line 853
    .restart local v148       #r:Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v148

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;

    move-result-object v154

    .line 854
    .local v154, res:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 855
    move-object/from16 v0, p3

    move-object/from16 v1, v154

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 856
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 860
    .end local v148           #r:Landroid/content/IIntentSender;
    .end local v154           #res:Ljava/lang/String;
    :pswitch_3d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 861
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v128

    .line 862
    .local v128, max:I
    move-object/from16 v0, p0

    move/from16 v1, v128

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setProcessLimit(I)V

    .line 863
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 864
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 868
    .end local v128           #max:I
    :pswitch_3e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 869
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessLimit()I

    move-result v120

    .line 870
    .local v120, limit:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 871
    move-object/from16 v0, p3

    move/from16 v1, v120

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 872
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 876
    .end local v120           #limit:I
    :pswitch_3f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 877
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 878
    .restart local v50       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v141

    .line 879
    .local v141, pid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_34

    const/16 v118, 0x1

    .line 880
    .local v118, isForeground:Z
    :goto_2d
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move/from16 v2, v141

    move/from16 v3, v118

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setProcessForeground(Landroid/os/IBinder;IZ)V

    .line 881
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 882
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 879
    .end local v118           #isForeground:Z
    :cond_34
    const/16 v118, 0x0

    goto :goto_2d

    .line 886
    .end local v50           #token:Landroid/os/IBinder;
    .end local v141           #pid:I
    :pswitch_40
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 887
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v36

    .line 888
    .restart local v36       #perm:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v141

    .line 889
    .restart local v141       #pid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v82

    .line 890
    .local v82, uid:I
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move/from16 v2, v141

    move/from16 v3, v82

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->checkPermission(Ljava/lang/String;II)I

    move-result v154

    .line 891
    .local v154, res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 892
    move-object/from16 v0, p3

    move/from16 v1, v154

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 893
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 897
    .end local v36           #perm:Ljava/lang/String;
    .end local v82           #uid:I
    .end local v141           #pid:I
    .end local v154           #res:I
    :pswitch_41
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 898
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Landroid/net/Uri;

    .line 899
    .local v87, uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v141

    .line 900
    .restart local v141       #pid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v82

    .line 901
    .restart local v82       #uid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v88

    .line 902
    .local v88, mode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v87

    move/from16 v2, v141

    move/from16 v3, v82

    move/from16 v4, v88

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v154

    .line 903
    .restart local v154       #res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 904
    move-object/from16 v0, p3

    move/from16 v1, v154

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 905
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 909
    .end local v82           #uid:I
    .end local v87           #uri:Landroid/net/Uri;
    .end local v88           #mode:I
    .end local v141           #pid:I
    .end local v154           #res:I
    :pswitch_42
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 910
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .line 911
    .restart local v33       #packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v136

    .line 913
    .local v136, observer:Landroid/content/pm/IPackageDataObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v136

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v154

    .line 914
    .local v154, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 915
    if-eqz v154, :cond_35

    const/4 v5, 0x1

    :goto_2e
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 916
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 915
    :cond_35
    const/4 v5, 0x0

    goto :goto_2e

    .line 920
    .end local v33           #packageName:Ljava/lang/String;
    .end local v136           #observer:Landroid/content/pm/IPackageDataObserver;
    .end local v154           #res:Z
    :pswitch_43
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 921
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 922
    .restart local v95       #b:Landroid/os/IBinder;
    invoke-static/range {v95 .. v95}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 923
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v86

    .line 924
    .local v86, targetPkg:Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Landroid/net/Uri;

    .line 925
    .restart local v87       #uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v88

    .line 926
    .restart local v88       #mode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v86

    move-object/from16 v2, v87

    move/from16 v3, v88

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/app/ActivityManagerNative;->grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;I)V

    .line 927
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 928
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 932
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v86           #targetPkg:Ljava/lang/String;
    .end local v87           #uri:Landroid/net/Uri;
    .end local v88           #mode:I
    .end local v95           #b:Landroid/os/IBinder;
    :pswitch_44
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 933
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 934
    .restart local v95       #b:Landroid/os/IBinder;
    invoke-static/range {v95 .. v95}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 935
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Landroid/net/Uri;

    .line 936
    .restart local v87       #uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v88

    .line 937
    .restart local v88       #mode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v87

    move/from16 v2, v88

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ActivityManagerNative;->revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;I)V

    .line 938
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 939
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 943
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v87           #uri:Landroid/net/Uri;
    .end local v88           #mode:I
    .end local v95           #b:Landroid/os/IBinder;
    :pswitch_45
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 944
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 945
    .restart local v95       #b:Landroid/os/IBinder;
    invoke-static/range {v95 .. v95}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 946
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_36

    const/16 v170, 0x1

    .line 947
    .local v170, waiting:Z
    :goto_2f
    move-object/from16 v0, p0

    move/from16 v1, v170

    invoke-virtual {v0, v6, v1}, Landroid/app/ActivityManagerNative;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V

    .line 948
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 949
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 946
    .end local v170           #waiting:Z
    :cond_36
    const/16 v170, 0x0

    goto :goto_2f

    .line 953
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v95           #b:Landroid/os/IBinder;
    :pswitch_46
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 954
    new-instance v131, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct/range {v131 .. v131}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 955
    .local v131, mi:Landroid/app/ActivityManager$MemoryInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v131

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 956
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 957
    const/4 v5, 0x0

    move-object/from16 v0, v131

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/ActivityManager$MemoryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 958
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 962
    .end local v131           #mi:Landroid/app/ActivityManager$MemoryInfo;
    :pswitch_47
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 963
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->unhandledBack()V

    .line 964
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 965
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 969
    :pswitch_48
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 970
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v87

    .line 971
    .restart local v87       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->openContentUri(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v139

    .line 972
    .local v139, pfd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 973
    if-eqz v139, :cond_37

    .line 974
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 975
    const/4 v5, 0x1

    move-object/from16 v0, v139

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 979
    :goto_30
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 977
    :cond_37
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_30

    .line 983
    .end local v87           #uri:Landroid/net/Uri;
    .end local v139           #pfd:Landroid/os/ParcelFileDescriptor;
    :pswitch_49
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 984
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->goingToSleep()V

    .line 985
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 986
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 990
    :pswitch_4a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 991
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->wakingUp()V

    .line 992
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 993
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 997
    :pswitch_4b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 998
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v144

    .line 999
    .local v144, pn:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_38

    const/16 v172, 0x1

    .line 1000
    .local v172, wfd:Z
    :goto_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_39

    const/16 v138, 0x1

    .line 1001
    .local v138, per:Z
    :goto_32
    move-object/from16 v0, p0

    move-object/from16 v1, v144

    move/from16 v2, v172

    move/from16 v3, v138

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 1002
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1003
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 999
    .end local v138           #per:Z
    .end local v172           #wfd:Z
    :cond_38
    const/16 v172, 0x0

    goto :goto_31

    .line 1000
    .restart local v172       #wfd:Z
    :cond_39
    const/16 v138, 0x0

    goto :goto_32

    .line 1007
    .end local v144           #pn:Ljava/lang/String;
    .end local v172           #wfd:Z
    :pswitch_4c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1008
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3a

    const/16 v108, 0x1

    .line 1009
    .local v108, enabled:Z
    :goto_33
    move-object/from16 v0, p0

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setAlwaysFinish(Z)V

    .line 1010
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1011
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1008
    .end local v108           #enabled:Z
    :cond_3a
    const/16 v108, 0x0

    goto :goto_33

    .line 1015
    :pswitch_4d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1016
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IActivityController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;

    move-result-object v171

    .line 1018
    .local v171, watcher:Landroid/app/IActivityController;
    move-object/from16 v0, p0

    move-object/from16 v1, v171

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setActivityController(Landroid/app/IActivityController;)V

    .line 1019
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1023
    .end local v171           #watcher:Landroid/app/IActivityController;
    :pswitch_4e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1024
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->enterSafeMode()V

    .line 1025
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1026
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1030
    :pswitch_4f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1031
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v117

    .line 1033
    .local v117, is:Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/content/IIntentSender;)V

    .line 1034
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1035
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1039
    .end local v117           #is:Landroid/content/IIntentSender;
    :pswitch_50
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1040
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v142

    .line 1041
    .local v142, pids:[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v149

    .line 1042
    .local v149, reason:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3b

    const/16 v158, 0x1

    .line 1043
    .local v158, secure:Z
    :goto_34
    move-object/from16 v0, p0

    move-object/from16 v1, v142

    move-object/from16 v2, v149

    move/from16 v3, v158

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->killPids([ILjava/lang/String;Z)Z

    move-result v154

    .line 1044
    .restart local v154       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1045
    if-eqz v154, :cond_3c

    const/4 v5, 0x1

    :goto_35
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1046
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1042
    .end local v154           #res:Z
    .end local v158           #secure:Z
    :cond_3b
    const/16 v158, 0x0

    goto :goto_34

    .line 1045
    .restart local v154       #res:Z
    .restart local v158       #secure:Z
    :cond_3c
    const/4 v5, 0x0

    goto :goto_35

    .line 1050
    .end local v142           #pids:[I
    .end local v149           #reason:Ljava/lang/String;
    .end local v154           #res:Z
    .end local v158           #secure:Z
    :pswitch_51
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1051
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v143

    .line 1052
    .local v143, pkg:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v102

    .line 1053
    .local v102, cls:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v90

    .line 1054
    .local v90, action:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v113

    .line 1055
    .local v113, indata:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v143

    move-object/from16 v2, v102

    move-object/from16 v3, v90

    move-object/from16 v4, v113

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->startRunning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1057
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1061
    .end local v90           #action:Ljava/lang/String;
    .end local v102           #cls:Ljava/lang/String;
    .end local v113           #indata:Ljava/lang/String;
    .end local v143           #pkg:Ljava/lang/String;
    :pswitch_52
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1062
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1063
    .local v6, app:Landroid/os/IBinder;
    new-instance v101, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v101

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    .line 1064
    .local v101, ci:Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v6, v1}, Landroid/app/ActivityManagerNative;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 1065
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1066
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1070
    .end local v6           #app:Landroid/os/IBinder;
    .end local v101           #ci:Landroid/app/ApplicationErrorReport$CrashInfo;
    :pswitch_53
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1071
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1072
    .restart local v6       #app:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v164

    .line 1073
    .local v164, tag:Ljava/lang/String;
    new-instance v101, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v101

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    .line 1074
    .restart local v101       #ci:Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v164

    move-object/from16 v2, v101

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ActivityManagerNative;->handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)Z

    move-result v154

    .line 1075
    .restart local v154       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1076
    if-eqz v154, :cond_3d

    const/4 v5, 0x1

    :goto_36
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1077
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1076
    :cond_3d
    const/4 v5, 0x0

    goto :goto_36

    .line 1081
    .end local v6           #app:Landroid/os/IBinder;
    .end local v101           #ci:Landroid/app/ApplicationErrorReport$CrashInfo;
    .end local v154           #res:Z
    .end local v164           #tag:Ljava/lang/String;
    :pswitch_54
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1082
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1083
    .restart local v6       #app:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v169

    .line 1084
    .local v169, violationMask:I
    new-instance v114, Landroid/os/StrictMode$ViolationInfo;

    move-object/from16 v0, v114

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/Parcel;)V

    .line 1085
    .local v114, info:Landroid/os/StrictMode$ViolationInfo;
    move-object/from16 v0, p0

    move/from16 v1, v169

    move-object/from16 v2, v114

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ActivityManagerNative;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V

    .line 1086
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1087
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1091
    .end local v6           #app:Landroid/os/IBinder;
    .end local v114           #info:Landroid/os/StrictMode$ViolationInfo;
    .end local v169           #violationMask:I
    :pswitch_55
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1092
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v159

    .line 1093
    .local v159, sig:I
    move-object/from16 v0, p0

    move/from16 v1, v159

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->signalPersistentProcesses(I)V

    .line 1094
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1095
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1099
    .end local v159           #sig:I
    :pswitch_56
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .line 1101
    .restart local v33       #packageName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 1102
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1103
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1107
    .end local v33           #packageName:Ljava/lang/String;
    :pswitch_57
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1108
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->killAllBackgroundProcesses()V

    .line 1109
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1110
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1114
    :pswitch_58
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .line 1116
    .restart local v33       #packageName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->forceStopPackage(Ljava/lang/String;)V

    .line 1117
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1118
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1122
    .end local v33           #packageName:Ljava/lang/String;
    :pswitch_59
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1123
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v30

    .line 1124
    .local v30, config:Landroid/content/pm/ConfigurationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1125
    const/4 v5, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/ConfigurationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1126
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1130
    .end local v30           #config:Landroid/content/pm/ConfigurationInfo;
    :pswitch_5a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v76

    .line 1132
    .local v76, process:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3e

    const/16 v77, 0x1

    .line 1133
    .local v77, start:Z
    :goto_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v80

    .line 1134
    .local v80, profileType:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v78

    .line 1135
    .local v78, path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3f

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v79

    .local v79, fd:Landroid/os/ParcelFileDescriptor;
    :goto_38
    move-object/from16 v75, p0

    .line 1137
    invoke-virtual/range {v75 .. v80}, Landroid/app/ActivityManagerNative;->profileControl(Ljava/lang/String;ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;I)Z

    move-result v154

    .line 1138
    .restart local v154       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1139
    if-eqz v154, :cond_40

    const/4 v5, 0x1

    :goto_39
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1140
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1132
    .end local v77           #start:Z
    .end local v78           #path:Ljava/lang/String;
    .end local v79           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v80           #profileType:I
    .end local v154           #res:Z
    :cond_3e
    const/16 v77, 0x0

    goto :goto_37

    .line 1135
    .restart local v77       #start:Z
    .restart local v78       #path:Ljava/lang/String;
    .restart local v80       #profileType:I
    :cond_3f
    const/16 v79, 0x0

    goto :goto_38

    .line 1139
    .restart local v79       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v154       #res:Z
    :cond_40
    const/4 v5, 0x0

    goto :goto_39

    .line 1144
    .end local v76           #process:Ljava/lang/String;
    .end local v77           #start:Z
    .end local v78           #path:Ljava/lang/String;
    .end local v79           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v80           #profileType:I
    .end local v154           #res:Z
    :pswitch_5b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/ActivityManagerNative;->shutdown(I)Z

    move-result v154

    .line 1146
    .restart local v154       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1147
    if-eqz v154, :cond_41

    const/4 v5, 0x1

    :goto_3a
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1148
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1147
    :cond_41
    const/4 v5, 0x0

    goto :goto_3a

    .line 1152
    .end local v154           #res:Z
    :pswitch_5c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1153
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopAppSwitches()V

    .line 1154
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1155
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1159
    :pswitch_5d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1160
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->resumeAppSwitches()V

    .line 1161
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1162
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1166
    :pswitch_5e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1167
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Landroid/content/Intent;

    .line 1168
    .local v57, service:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1169
    .restart local v8       #resolvedType:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-virtual {v0, v1, v8}, Landroid/app/ActivityManagerNative;->peekService(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v97

    .line 1170
    .local v97, binder:Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1171
    move-object/from16 v0, p3

    move-object/from16 v1, v97

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1172
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1176
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v57           #service:Landroid/content/Intent;
    .end local v97           #binder:Landroid/os/IBinder;
    :pswitch_5f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1177
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v114

    check-cast v114, Landroid/content/pm/ApplicationInfo;

    .line 1178
    .local v114, info:Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v96

    .line 1179
    .local v96, backupRestoreMode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v114

    move/from16 v2, v96

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->bindBackupAgent(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v163

    .line 1180
    .local v163, success:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1181
    if-eqz v163, :cond_42

    const/4 v5, 0x1

    :goto_3b
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1182
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1181
    :cond_42
    const/4 v5, 0x0

    goto :goto_3b

    .line 1186
    .end local v96           #backupRestoreMode:I
    .end local v114           #info:Landroid/content/pm/ApplicationInfo;
    .end local v163           #success:Z
    :pswitch_60
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .line 1188
    .restart local v33       #packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v91

    .line 1189
    .local v91, agent:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v91

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1190
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1191
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1195
    .end local v33           #packageName:Ljava/lang/String;
    .end local v91           #agent:Landroid/os/IBinder;
    :pswitch_61
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1196
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v114

    check-cast v114, Landroid/content/pm/ApplicationInfo;

    .line 1197
    .restart local v114       #info:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v114

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 1198
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1199
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1203
    .end local v114           #info:Landroid/content/pm/ApplicationInfo;
    :pswitch_62
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IActivityWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityWatcher;

    move-result-object v171

    .line 1206
    .local v171, watcher:Landroid/app/IActivityWatcher;
    move-object/from16 v0, p0

    move-object/from16 v1, v171

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerActivityWatcher(Landroid/app/IActivityWatcher;)V

    .line 1207
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1211
    .end local v171           #watcher:Landroid/app/IActivityWatcher;
    :pswitch_63
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1212
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IActivityWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityWatcher;

    move-result-object v171

    .line 1214
    .restart local v171       #watcher:Landroid/app/IActivityWatcher;
    move-object/from16 v0, p0

    move-object/from16 v1, v171

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterActivityWatcher(Landroid/app/IActivityWatcher;)V

    .line 1215
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1220
    .end local v171           #watcher:Landroid/app/IActivityWatcher;
    :pswitch_64
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1221
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v82

    .line 1222
    .restart local v82       #uid:I
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 1223
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1224
    .restart local v8       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 1225
    .local v11, resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1226
    .restart local v12       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1227
    .restart local v13       #requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_43

    const/4 v14, 0x1

    .restart local v14       #onlyIfNeeded:Z
    :goto_3c
    move-object/from16 v81, p0

    move-object/from16 v83, v7

    move-object/from16 v84, v8

    move-object/from16 v85, v11

    move-object/from16 v86, v12

    move/from16 v87, v13

    move/from16 v88, v14

    .line 1228
    invoke-virtual/range {v81 .. v88}, Landroid/app/ActivityManagerNative;->startActivityInPackage(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IZ)I

    move-result v156

    .line 1230
    .local v156, result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1231
    move-object/from16 v0, p3

    move/from16 v1, v156

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1232
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1227
    .end local v14           #onlyIfNeeded:Z
    .end local v156           #result:I
    :cond_43
    const/4 v14, 0x0

    goto :goto_3c

    .line 1236
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v11           #resultTo:Landroid/os/IBinder;
    .end local v12           #resultWho:Ljava/lang/String;
    .end local v13           #requestCode:I
    .end local v82           #uid:I
    :pswitch_65
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v143

    .line 1238
    .restart local v143       #pkg:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v82

    .line 1239
    .restart local v82       #uid:I
    move-object/from16 v0, p0

    move-object/from16 v1, v143

    move/from16 v2, v82

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killApplicationWithUid(Ljava/lang/String;I)V

    .line 1240
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1241
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1245
    .end local v82           #uid:I
    .end local v143           #pkg:Ljava/lang/String;
    :pswitch_66
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v149

    .line 1247
    .restart local v149       #reason:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v149

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->closeSystemDialogs(Ljava/lang/String;)V

    .line 1248
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1249
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1253
    .end local v149           #reason:Ljava/lang/String;
    :pswitch_67
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v142

    .line 1255
    .restart local v142       #pids:[I
    move-object/from16 v0, p0

    move-object/from16 v1, v142

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v154

    .line 1256
    .local v154, res:[Landroid/os/Debug$MemoryInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1257
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v154

    invoke-virtual {v0, v1, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1258
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1262
    .end local v142           #pids:[I
    .end local v154           #res:[Landroid/os/Debug$MemoryInfo;
    :pswitch_68
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1263
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v145

    .line 1264
    .local v145, processName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v82

    .line 1265
    .restart local v82       #uid:I
    move-object/from16 v0, p0

    move-object/from16 v1, v145

    move/from16 v2, v82

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killApplicationProcess(Ljava/lang/String;I)V

    .line 1266
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1267
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1271
    .end local v82           #uid:I
    .end local v145           #processName:Ljava/lang/String;
    :pswitch_69
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1272
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 1273
    .restart local v50       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .line 1274
    .restart local v33       #packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v109

    .line 1275
    .local v109, enterAnim:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v110

    .line 1276
    .local v110, exitAnim:I
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v33

    move/from16 v3, v109

    move/from16 v4, v110

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V

    .line 1277
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1278
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1282
    .end local v33           #packageName:Ljava/lang/String;
    .end local v50           #token:Landroid/os/IBinder;
    .end local v109           #enterAnim:I
    .end local v110           #exitAnim:I
    :pswitch_6a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1283
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isUserAMonkey()Z

    move-result v93

    .line 1284
    .local v93, areThey:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1285
    if-eqz v93, :cond_44

    const/4 v5, 0x1

    :goto_3d
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1286
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1285
    :cond_44
    const/4 v5, 0x0

    goto :goto_3d

    .line 1290
    .end local v93           #areThey:Z
    :pswitch_6b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1291
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->finishHeavyWeightApp()V

    .line 1292
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1293
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1297
    :pswitch_6c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1298
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 1299
    .restart local v50       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isImmersive(Landroid/os/IBinder;)Z

    move-result v119

    .line 1300
    .local v119, isit:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1301
    if-eqz v119, :cond_45

    const/4 v5, 0x1

    :goto_3e
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1302
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1301
    :cond_45
    const/4 v5, 0x0

    goto :goto_3e

    .line 1306
    .end local v50           #token:Landroid/os/IBinder;
    .end local v119           #isit:Z
    :pswitch_6d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1307
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 1308
    .restart local v50       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v5, v0, :cond_46

    const/16 v112, 0x1

    .line 1309
    .local v112, imm:Z
    :goto_3f
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move/from16 v2, v112

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setImmersive(Landroid/os/IBinder;Z)V

    .line 1310
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1311
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1308
    .end local v112           #imm:Z
    :cond_46
    const/16 v112, 0x0

    goto :goto_3f

    .line 1315
    .end local v50           #token:Landroid/os/IBinder;
    :pswitch_6e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1316
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isTopActivityImmersive()Z

    move-result v119

    .line 1317
    .restart local v119       #isit:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1318
    if-eqz v119, :cond_47

    const/4 v5, 0x1

    :goto_40
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1319
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1318
    :cond_47
    const/4 v5, 0x0

    goto :goto_40

    .line 1323
    .end local v119           #isit:Z
    :pswitch_6f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1324
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v82

    .line 1325
    .restart local v82       #uid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v115

    .line 1326
    .local v115, initialPid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .line 1327
    .restart local v33       #packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v130

    .line 1328
    .local v130, message:Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v82

    move/from16 v2, v115

    move-object/from16 v3, v33

    move-object/from16 v4, v130

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->crashApplication(IILjava/lang/String;Ljava/lang/String;)V

    .line 1329
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1330
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1334
    .end local v33           #packageName:Ljava/lang/String;
    .end local v82           #uid:I
    .end local v115           #initialPid:I
    .end local v130           #message:Ljava/lang/String;
    :pswitch_70
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1335
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Landroid/net/Uri;

    .line 1336
    .restart local v87       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProviderMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v68

    .line 1337
    .local v68, type:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1338
    move-object/from16 v0, p3

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1339
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1343
    .end local v68           #type:Ljava/lang/String;
    .end local v87           #uri:Landroid/net/Uri;
    :pswitch_71
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1344
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v134

    .line 1345
    .restart local v134       #name:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v36

    .line 1346
    .local v36, perm:Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1347
    move-object/from16 v0, p3

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1348
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1352
    .end local v36           #perm:Landroid/os/IBinder;
    .end local v134           #name:Ljava/lang/String;
    :pswitch_72
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1353
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v84

    .line 1354
    .local v84, owner:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v85

    .line 1355
    .local v85, fromUid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v86

    .line 1356
    .restart local v86       #targetPkg:Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Landroid/net/Uri;

    .line 1357
    .restart local v87       #uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v88

    .restart local v88       #mode:I
    move-object/from16 v83, p0

    .line 1358
    invoke-virtual/range {v83 .. v88}, Landroid/app/ActivityManagerNative;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;I)V

    .line 1359
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1360
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1364
    .end local v84           #owner:Landroid/os/IBinder;
    .end local v85           #fromUid:I
    .end local v86           #targetPkg:Ljava/lang/String;
    .end local v87           #uri:Landroid/net/Uri;
    .end local v88           #mode:I
    :pswitch_73
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1365
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v84

    .line 1366
    .restart local v84       #owner:Landroid/os/IBinder;
    const/16 v87, 0x0

    .line 1367
    .restart local v87       #uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_48

    .line 1368
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1370
    :cond_48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v88

    .line 1371
    .restart local v88       #mode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v84

    move-object/from16 v2, v87

    move/from16 v3, v88

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;I)V

    .line 1372
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1373
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1377
    .end local v84           #owner:Landroid/os/IBinder;
    .end local v87           #uri:Landroid/net/Uri;
    .end local v88           #mode:I
    :pswitch_74
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1378
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v100

    .line 1379
    .local v100, callingUid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v86

    .line 1380
    .restart local v86       #targetPkg:Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Landroid/net/Uri;

    .line 1381
    .restart local v87       #uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v132

    .line 1382
    .local v132, modeFlags:I
    move-object/from16 v0, p0

    move/from16 v1, v100

    move-object/from16 v2, v86

    move-object/from16 v3, v87

    move/from16 v4, v132

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;I)I

    move-result v154

    .line 1383
    .local v154, res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1384
    move-object/from16 v0, p3

    move/from16 v1, v154

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1385
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1389
    .end local v86           #targetPkg:Ljava/lang/String;
    .end local v87           #uri:Landroid/net/Uri;
    .end local v100           #callingUid:I
    .end local v132           #modeFlags:I
    .end local v154           #res:I
    :pswitch_75
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1390
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v76

    .line 1391
    .restart local v76       #process:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_49

    const/16 v126, 0x1

    .line 1392
    .local v126, managed:Z
    :goto_41
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v78

    .line 1393
    .restart local v78       #path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4a

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v79

    .line 1395
    .restart local v79       #fd:Landroid/os/ParcelFileDescriptor;
    :goto_42
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    move/from16 v2, v126

    move-object/from16 v3, v78

    move-object/from16 v4, v79

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->dumpHeap(Ljava/lang/String;ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    move-result v154

    .line 1396
    .local v154, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1397
    if-eqz v154, :cond_4b

    const/4 v5, 0x1

    :goto_43
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1398
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1391
    .end local v78           #path:Ljava/lang/String;
    .end local v79           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v126           #managed:Z
    .end local v154           #res:Z
    :cond_49
    const/16 v126, 0x0

    goto :goto_41

    .line 1393
    .restart local v78       #path:Ljava/lang/String;
    .restart local v126       #managed:Z
    :cond_4a
    const/16 v79, 0x0

    goto :goto_42

    .line 1397
    .restart local v79       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v154       #res:Z
    :cond_4b
    const/4 v5, 0x0

    goto :goto_43

    .line 1403
    .end local v76           #process:Ljava/lang/String;
    .end local v78           #path:Ljava/lang/String;
    .end local v79           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v126           #managed:Z
    .end local v154           #res:Z
    :pswitch_76
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1404
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v82

    .line 1405
    .restart local v82       #uid:I
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v116

    check-cast v116, [Landroid/content/Intent;

    .line 1406
    .local v116, intents:[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v155

    .line 1407
    .local v155, resolvedTypes:[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 1408
    .restart local v11       #resultTo:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move/from16 v1, v82

    move-object/from16 v2, v116

    move-object/from16 v3, v155

    invoke-virtual {v0, v1, v2, v3, v11}, Landroid/app/ActivityManagerNative;->startActivitiesInPackage(I[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v156

    .line 1409
    .restart local v156       #result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1410
    move-object/from16 v0, p3

    move/from16 v1, v156

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1411
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1416
    .end local v11           #resultTo:Landroid/os/IBinder;
    .end local v82           #uid:I
    .end local v116           #intents:[Landroid/content/Intent;
    .end local v155           #resolvedTypes:[Ljava/lang/String;
    .end local v156           #result:I
    :pswitch_77
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1417
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 1418
    .restart local v95       #b:Landroid/os/IBinder;
    invoke-static/range {v95 .. v95}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 1419
    .local v6, app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v116

    check-cast v116, [Landroid/content/Intent;

    .line 1420
    .restart local v116       #intents:[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v155

    .line 1421
    .restart local v155       #resolvedTypes:[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 1422
    .restart local v11       #resultTo:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v116

    move-object/from16 v2, v155

    invoke-virtual {v0, v6, v1, v2, v11}, Landroid/app/ActivityManagerNative;->startActivities(Landroid/app/IApplicationThread;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v156

    .line 1423
    .restart local v156       #result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1424
    move-object/from16 v0, p3

    move/from16 v1, v156

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1425
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1430
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v11           #resultTo:Landroid/os/IBinder;
    .end local v95           #b:Landroid/os/IBinder;
    .end local v116           #intents:[Landroid/content/Intent;
    .end local v155           #resolvedTypes:[Ljava/lang/String;
    .end local v156           #result:I
    :pswitch_78
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1431
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getFrontActivityScreenCompatMode()I

    move-result v88

    .line 1432
    .restart local v88       #mode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1433
    move-object/from16 v0, p3

    move/from16 v1, v88

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1434
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1439
    .end local v88           #mode:I
    :pswitch_79
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1440
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v88

    .line 1441
    .restart local v88       #mode:I
    move-object/from16 v0, p0

    move/from16 v1, v88

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setFrontActivityScreenCompatMode(I)V

    .line 1442
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1443
    move-object/from16 v0, p3

    move/from16 v1, v88

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1444
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1449
    .end local v88           #mode:I
    :pswitch_7a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1450
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v143

    .line 1451
    .restart local v143       #pkg:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v143

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v88

    .line 1452
    .restart local v88       #mode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1453
    move-object/from16 v0, p3

    move/from16 v1, v88

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1454
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1459
    .end local v88           #mode:I
    .end local v143           #pkg:Ljava/lang/String;
    :pswitch_7b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1460
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v143

    .line 1461
    .restart local v143       #pkg:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v88

    .line 1462
    .restart local v88       #mode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v143

    move/from16 v2, v88

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    .line 1463
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1464
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1468
    .end local v88           #mode:I
    .end local v143           #pkg:Ljava/lang/String;
    :pswitch_7c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1469
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v168

    .line 1470
    .local v168, userid:I
    move-object/from16 v0, p0

    move/from16 v1, v168

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->switchUser(I)Z

    move-result v156

    .line 1471
    .local v156, result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1472
    if-eqz v156, :cond_4c

    const/4 v5, 0x1

    :goto_44
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1473
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1472
    :cond_4c
    const/4 v5, 0x0

    goto :goto_44

    .line 1478
    .end local v156           #result:Z
    .end local v168           #userid:I
    :pswitch_7d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1479
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v166

    .line 1480
    .local v166, taskId:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v162

    .line 1481
    .local v162, subTaskIndex:I
    move-object/from16 v0, p0

    move/from16 v1, v166

    move/from16 v2, v162

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeSubTask(II)Z

    move-result v156

    .line 1482
    .restart local v156       #result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1483
    if-eqz v156, :cond_4d

    const/4 v5, 0x1

    :goto_45
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1484
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1483
    :cond_4d
    const/4 v5, 0x0

    goto :goto_45

    .line 1489
    .end local v156           #result:Z
    .end local v162           #subTaskIndex:I
    .end local v166           #taskId:I
    :pswitch_7e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1490
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v166

    .line 1491
    .restart local v166       #taskId:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    .line 1492
    .restart local v60       #fl:I
    move-object/from16 v0, p0

    move/from16 v1, v166

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeTask(II)Z

    move-result v156

    .line 1493
    .restart local v156       #result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1494
    if-eqz v156, :cond_4e

    const/4 v5, 0x1

    :goto_46
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1495
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1494
    :cond_4e
    const/4 v5, 0x0

    goto :goto_46

    .line 1499
    .end local v60           #fl:I
    .end local v156           #result:Z
    .end local v166           #taskId:I
    :pswitch_7f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1500
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v136

    .line 1502
    .local v136, observer:Landroid/app/IProcessObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 1503
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1507
    .end local v136           #observer:Landroid/app/IProcessObserver;
    :pswitch_80
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1508
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v136

    .line 1510
    .restart local v136       #observer:Landroid/app/IProcessObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 1511
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1516
    .end local v136           #observer:Landroid/app/IProcessObserver;
    :pswitch_81
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1517
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v143

    .line 1518
    .restart local v143       #pkg:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v143

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageAskScreenCompat(Ljava/lang/String;)Z

    move-result v94

    .line 1519
    .local v94, ask:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1520
    if-eqz v94, :cond_4f

    const/4 v5, 0x1

    :goto_47
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1521
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1520
    :cond_4f
    const/4 v5, 0x0

    goto :goto_47

    .line 1526
    .end local v94           #ask:Z
    .end local v143           #pkg:Ljava/lang/String;
    :pswitch_82
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1527
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v143

    .line 1528
    .restart local v143       #pkg:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_50

    const/16 v94, 0x1

    .line 1529
    .restart local v94       #ask:Z
    :goto_48
    move-object/from16 v0, p0

    move-object/from16 v1, v143

    move/from16 v2, v94

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    .line 1530
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1531
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1528
    .end local v94           #ask:Z
    :cond_50
    const/16 v94, 0x0

    goto :goto_48

    .line 1535
    .end local v143           #pkg:Ljava/lang/String;
    :pswitch_83
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1536
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v148

    .line 1538
    .restart local v148       #r:Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v148

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z

    move-result v154

    .line 1539
    .restart local v154       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1540
    if-eqz v154, :cond_51

    const/4 v5, 0x1

    :goto_49
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1541
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1540
    :cond_51
    const/4 v5, 0x0

    goto :goto_49

    .line 1545
    .end local v148           #r:Landroid/content/IIntentSender;
    .end local v154           #res:Z
    :pswitch_84
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1546
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/content/res/Configuration;

    .line 1547
    .local v30, config:Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    .line 1548
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1549
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1553
    .end local v30           #config:Landroid/content/res/Configuration;
    :pswitch_85
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1554
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v142

    .line 1555
    .restart local v142       #pids:[I
    move-object/from16 v0, p0

    move-object/from16 v1, v142

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessPss([I)[J

    move-result-object v147

    .line 1556
    .local v147, pss:[J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1557
    move-object/from16 v0, p3

    move-object/from16 v1, v147

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 1558
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1562
    .end local v142           #pids:[I
    .end local v147           #pss:[J
    :pswitch_86
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1563
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v133

    check-cast v133, Ljava/lang/CharSequence;

    .line 1564
    .local v133, msg:Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_52

    const/16 v92, 0x1

    .line 1565
    .local v92, always:Z
    :goto_4a
    move-object/from16 v0, p0

    move-object/from16 v1, v133

    move/from16 v2, v92

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->showBootMessage(Ljava/lang/CharSequence;Z)V

    .line 1566
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1567
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1564
    .end local v92           #always:Z
    :cond_52
    const/16 v92, 0x0

    goto :goto_4a

    .line 1571
    .end local v133           #msg:Ljava/lang/CharSequence;
    :pswitch_87
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1572
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->dismissKeyguardOnNextActivity()V

    .line 1573
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1574
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_51
        :pswitch_52
        :pswitch_1
        :pswitch_47
        :pswitch_48
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_1e
        :pswitch_1f
        :pswitch_21
        :pswitch_22
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_0
        :pswitch_7
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_23
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_2b
        :pswitch_38
        :pswitch_39
        :pswitch_3d
        :pswitch_3e
        :pswitch_40
        :pswitch_41
        :pswitch_43
        :pswitch_44
        :pswitch_4d
        :pswitch_45
        :pswitch_55
        :pswitch_17
        :pswitch_31
        :pswitch_13
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_4e
        :pswitch_5
        :pswitch_4f
        :pswitch_27
        :pswitch_36
        :pswitch_37
        :pswitch_30
        :pswitch_3f
        :pswitch_2c
        :pswitch_20
        :pswitch_46
        :pswitch_1b
        :pswitch_42
        :pswitch_58
        :pswitch_50
        :pswitch_1a
        :pswitch_19
        :pswitch_1c
        :pswitch_59
        :pswitch_5e
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_5f
        :pswitch_60
        :pswitch_61
        :pswitch_62
        :pswitch_63
        :pswitch_64
        :pswitch_65
        :pswitch_66
        :pswitch_67
        :pswitch_68
        :pswitch_4
        :pswitch_69
        :pswitch_53
        :pswitch_56
        :pswitch_6a
        :pswitch_2
        :pswitch_8
        :pswitch_3
        :pswitch_1d
        :pswitch_6b
        :pswitch_54
        :pswitch_6c
        :pswitch_6d
        :pswitch_6e
        :pswitch_6f
        :pswitch_70
        :pswitch_71
        :pswitch_72
        :pswitch_73
        :pswitch_74
        :pswitch_75
        :pswitch_77
        :pswitch_76
        :pswitch_12
        :pswitch_78
        :pswitch_79
        :pswitch_7a
        :pswitch_7b
        :pswitch_81
        :pswitch_82
        :pswitch_7c
        :pswitch_7d
        :pswitch_7e
        :pswitch_7f
        :pswitch_80
        :pswitch_83
        :pswitch_84
        :pswitch_85
        :pswitch_86
        :pswitch_87
        :pswitch_57
        :pswitch_18
    .end packed-switch
.end method
