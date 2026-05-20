.class public abstract Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2$Stub;
.super Landroid/os/Binder;
.source "IInternalPreInstallAdV2.java"

# interfaces
.implements Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.msa.internal.preinstall.v2.IInternalPreInstallAdV2"

.field static final TRANSACTION_getCNColudControl:I = 0x6

.field static final TRANSACTION_handleClick:I = 0x4

.field static final TRANSACTION_handleDislike:I = 0x5

.field static final TRANSACTION_handleView:I = 0x3

.field static final TRANSACTION_loadDesktopRecommendAdInfo:I = 0x1

.field static final TRANSACTION_loadImage:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.miui.msa.internal.preinstall.v2.IInternalPreInstallAdV2"

    .line 42
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.miui.msa.internal.preinstall.v2.IInternalPreInstallAdV2"

    .line 53
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 54
    instance-of v1, v0, Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2;

    if-eqz v1, :cond_1

    .line 55
    check-cast v0, Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2;

    return-object v0

    .line 57
    :cond_1
    new-instance v0, Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2;
    .locals 1

    .line 346
    sget-object v0, Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2$Stub$Proxy;->sDefaultImpl:Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2;)Z
    .locals 1

    .line 336
    sget-object v0, Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2$Stub$Proxy;->sDefaultImpl:Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 340
    sput-object p0, Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2$Stub$Proxy;->sDefaultImpl:Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 337
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.miui.msa.internal.preinstall.v2.IInternalPreInstallAdV2"

    if-eq p1, v0, :cond_4

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 160
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 146
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-interface {p0}, Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2;->getCNColudControl()Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;

    move-result-object p0

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_0

    .line 150
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    invoke-virtual {p0, p3, v1}, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 154
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    .line 130
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 133
    sget-object p1, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;

    .line 139
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 140
    invoke-interface {p0, v0, p1}, Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2;->handleDislike(Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;I)V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 117
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    sget-object p1, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 124
    invoke-interface {p0, p1, p4, v2, v3}, Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2;->handleClick(Ljava/util/List;IJ)V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 101
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 104
    sget-object p1, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;

    .line 110
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 111
    invoke-interface {p0, v0, p1}, Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2;->handleView(Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;I)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 90
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/msa/internal/preinstall/v2/IImageCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/msa/internal/preinstall/v2/IImageCallback;

    move-result-object p2

    .line 95
    invoke-interface {p0, p1, p2}, Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2;->loadImage(Ljava/lang/String;Lcom/miui/msa/internal/preinstall/v2/IImageCallback;)V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 75
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 78
    sget-object p1, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;

    .line 83
    :cond_3
    invoke-interface {p0, v0}, Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2;->loadDesktopRecommendAdInfo(Lcom/miui/msa/internal/preinstall/v2/FolderInfo;)Ljava/util/List;

    move-result-object p0

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 70
    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
