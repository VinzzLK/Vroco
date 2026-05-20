.class Lcom/android/wm/shell/splitscreen/ISplitScreenU$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISplitScreenU.java"

# interfaces
.implements Lcom/android/wm/shell/splitscreen/ISplitScreenU;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/splitscreen/ISplitScreenU$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 604
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/ISplitScreenU$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 609
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/ISplitScreenU$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public onGoingToRecentsLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1221
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1222
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.android.wm.shell.splitscreen.ISplitScreen"

    .line 1225
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1226
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1227
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/ISplitScreenU$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xe

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1228
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1229
    sget-object p0, Landroid/view/RemoteAnimationTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/view/RemoteAnimationTarget;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1231
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 1231
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1233
    throw p0
.end method

.method public onStartingSplitLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1244
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1245
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.android.wm.shell.splitscreen.ISplitScreen"

    .line 1248
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1249
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1250
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/ISplitScreenU$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xf

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1251
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1252
    sget-object p0, Landroid/view/RemoteAnimationTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/view/RemoteAnimationTarget;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1254
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1255
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 1254
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1255
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1256
    throw p0
.end method

.method public startIntentAndTask(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/os/Parcelable;Landroid/os/Parcelable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 840
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.wm.shell.splitscreen.ISplitScreen"

    .line 842
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 844
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 845
    invoke-virtual {p1, v0, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 847
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 849
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p3, :cond_1

    .line 851
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 852
    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 854
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 856
    :goto_1
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p5, :cond_2

    .line 858
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 859
    invoke-virtual {p5, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 861
    :cond_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 863
    :goto_2
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 864
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidV()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 865
    invoke-static {p7}, Lcom/android/wm/shell/util/TransitionUtil;->mapSplitRationToSnapPosition(F)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 867
    :cond_3
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeFloat(F)V

    :goto_3
    if-eqz p8, :cond_4

    .line 870
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 871
    invoke-interface {p8, v0, v2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 873
    :cond_4
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    if-eqz p9, :cond_5

    .line 876
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 877
    invoke-interface {p9, v0, v2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    .line 879
    :cond_5
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 881
    :goto_5
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/ISplitScreenU$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x11

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 883
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 884
    throw p0
.end method

.method public startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/os/Parcelable;Landroid/os/Parcelable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 794
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.wm.shell.splitscreen.ISplitScreen"

    .line 796
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 797
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 799
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 800
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 802
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 804
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p4, :cond_1

    .line 806
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 807
    invoke-virtual {p4, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 809
    :cond_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 811
    :goto_1
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 812
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidV()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 813
    invoke-static {p6}, Lcom/android/wm/shell/util/TransitionUtil;->mapSplitRationToSnapPosition(F)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 815
    :cond_2
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeFloat(F)V

    :goto_2
    if-eqz p7, :cond_3

    .line 818
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 819
    invoke-interface {p7, v0, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 821
    :cond_3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    if-eqz p8, :cond_4

    .line 824
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 825
    invoke-interface {p8, v0, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 827
    :cond_4
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 829
    :goto_4
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/ISplitScreenU$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xb

    const/4 p3, 0x0

    invoke-interface {p0, p2, v0, p3, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 831
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 832
    throw p0
.end method
