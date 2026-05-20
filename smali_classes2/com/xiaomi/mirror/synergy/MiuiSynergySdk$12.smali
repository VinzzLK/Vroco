.class Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$12;
.super Lcom/xiaomi/mirror/IMirrorDeviceStatusCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->setMirrorDeviceStatusCallback(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/mirror/synergy/MirrorDeviceStatusCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

.field public final synthetic val$callback:Lcom/xiaomi/mirror/synergy/MirrorDeviceStatusCallback;


# direct methods
.method public constructor <init>(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;Lcom/xiaomi/mirror/synergy/MirrorDeviceStatusCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$12;->this$0:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    iput-object p2, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$12;->val$callback:Lcom/xiaomi/mirror/synergy/MirrorDeviceStatusCallback;

    invoke-direct {p0}, Lcom/xiaomi/mirror/IMirrorDeviceStatusCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoteDeviceStatus(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$12;->val$callback:Lcom/xiaomi/mirror/synergy/MirrorDeviceStatusCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/xiaomi/mirror/synergy/MirrorDeviceStatusCallback;->onRemoteDeviceStatus(IZ)V

    :cond_0
    return-void
.end method
