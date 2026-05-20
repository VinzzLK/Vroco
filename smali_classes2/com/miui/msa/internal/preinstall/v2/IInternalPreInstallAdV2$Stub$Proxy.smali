.class Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2$Stub$Proxy;
.super Ljava/lang/Object;
.source "IInternalPreInstallAdV2.java"

# interfaces
.implements Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getCNColudControl()Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 301
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 302
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.miui.msa.internal.preinstall.v2.IInternalPreInstallAdV2"

    .line 305
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 306
    iget-object p0, p0, Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 307
    invoke-static {}, Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2$Stub;->getDefaultImpl()Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 308
    invoke-static {}, Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2$Stub;->getDefaultImpl()Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2;

    move-result-object p0

    invoke-interface {p0}, Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2;->getCNColudControl()Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 320
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 310
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 311
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_1

    .line 312
    sget-object p0, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 319
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 320
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 319
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 320
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 321
    throw p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 0

    const-string p0, "com.miui.msa.internal.preinstall.v2.IInternalPreInstallAdV2"

    return-object p0
.end method

.method public handleClick(Ljava/util/List;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;",
            ">;IJ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 254
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 255
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.miui.msa.internal.preinstall.v2.IInternalPreInstallAdV2"

    .line 257
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 259
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 261
    iget-object p0, p0, Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 262
    invoke-static {}, Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2$Stub;->getDefaultImpl()Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 263
    invoke-static {}, Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2$Stub;->getDefaultImpl()Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2;->handleClick(Ljava/util/List;IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 270
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 266
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 270
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 269
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 270
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 271
    throw p0
.end method

.method public handleDislike(Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 275
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 276
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.miui.msa.internal.preinstall.v2.IInternalPreInstallAdV2"

    .line 278
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 280
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    invoke-virtual {p1, v0, v2}, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 284
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    iget-object p0, p0, Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 288
    invoke-static {}, Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2$Stub;->getDefaultImpl()Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 289
    invoke-static {}, Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2$Stub;->getDefaultImpl()Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2;->handleDislike(Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 296
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 292
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 295
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 296
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 295
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 296
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 297
    throw p0
.end method

.method public handleView(Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 228
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 229
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.miui.msa.internal.preinstall.v2.IInternalPreInstallAdV2"

    .line 231
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 233
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    invoke-virtual {p1, v0, v2}, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 237
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    iget-object p0, p0, Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 241
    invoke-static {}, Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2$Stub;->getDefaultImpl()Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 242
    invoke-static {}, Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2$Stub;->getDefaultImpl()Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2;->handleView(Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 249
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 245
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 249
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 248
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 249
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 250
    throw p0
.end method

.method public loadDesktopRecommendAdInfo(Lcom/miui/msa/internal/preinstall/v2/FolderInfo;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/msa/internal/preinstall/v2/FolderInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 181
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 182
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.miui.msa.internal.preinstall.v2.IInternalPreInstallAdV2"

    .line 185
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 187
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    invoke-virtual {p1, v0, v3}, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 191
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    :goto_0
    iget-object p0, p0, Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 194
    invoke-static {}, Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2$Stub;->getDefaultImpl()Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 195
    invoke-static {}, Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2$Stub;->getDefaultImpl()Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2;->loadDesktopRecommendAdInfo(Lcom/miui/msa/internal/preinstall/v2/FolderInfo;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 197
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 198
    sget-object p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 201
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 203
    throw p0
.end method

.method public loadImage(Ljava/lang/String;Lcom/miui/msa/internal/preinstall/v2/IImageCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 208
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 209
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.miui.msa.internal.preinstall.v2.IInternalPreInstallAdV2"

    .line 211
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 213
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 214
    iget-object p0, p0, Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 215
    invoke-static {}, Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2$Stub;->getDefaultImpl()Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 216
    invoke-static {}, Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2$Stub;->getDefaultImpl()Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2;->loadImage(Ljava/lang/String;Lcom/miui/msa/internal/preinstall/v2/IImageCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 223
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 219
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 223
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 222
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 223
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 224
    throw p0
.end method
