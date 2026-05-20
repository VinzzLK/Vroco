.class public Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mirror/synergy/RelayIconHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RelayIcon"
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private description:Ljava/lang/String;

.field private isSupportHandoff:Z

.field private isSupportPin:Z

.field private packageName:Ljava/lang/String;

.field private remoteDeviceId:Ljava/lang/String;

.field private remoteDeviceName:Ljava/lang/String;

.field private remoteDeviceType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->description:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->remoteDeviceName:Ljava/lang/String;

    iput p5, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->remoteDeviceType:I

    iput-object p6, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->remoteDeviceId:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->isSupportHandoff:Z

    iput-boolean p8, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->isSupportPin:Z

    return-void
.end method

.method public static synthetic access$400(Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->remoteDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->isSupportPin:Z

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;

    iget-boolean v2, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->isSupportHandoff:Z

    iget-boolean v3, p1, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->isSupportHandoff:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->remoteDeviceId:Ljava/lang/String;

    iget-object p1, p1, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->remoteDeviceId:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->description:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public getRemoteDeviceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->remoteDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getRemoteDeviceName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->remoteDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method public getRemoteDeviceType()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->remoteDeviceType:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->packageName:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->packageName:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->remoteDeviceId:Ljava/lang/String;

    if-nez v0, :cond_1

    iput-object v1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->remoteDeviceId:Ljava/lang/String;

    :cond_1
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->remoteDeviceId:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean p0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->isSupportHandoff:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isSupportHandoff()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->isSupportHandoff:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RelayIcon{packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", bitmap="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", description=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", remoteDeviceName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->remoteDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", remoteDeviceType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->remoteDeviceType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", remoteDeviceId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->remoteDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", isSupportHandoff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->isSupportHandoff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isSupportPin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->isSupportPin:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
