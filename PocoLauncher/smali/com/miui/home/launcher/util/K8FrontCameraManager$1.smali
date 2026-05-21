.class Lcom/miui/home/launcher/util/K8FrontCameraManager$1;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "K8FrontCameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/util/K8FrontCameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/util/K8FrontCameraManager;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/util/K8FrontCameraManager;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/miui/home/launcher/util/K8FrontCameraManager$1;->this$0:Lcom/miui/home/launcher/util/K8FrontCameraManager;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraAvailable(Ljava/lang/String;)V
    .locals 3

    .line 87
    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraAvailable(Ljava/lang/String;)V

    .line 88
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraAvailable cameraId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "K8FrontCameraManager"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object p1, p0, Lcom/miui/home/launcher/util/K8FrontCameraManager$1;->this$0:Lcom/miui/home/launcher/util/K8FrontCameraManager;

    invoke-static {p1}, Lcom/miui/home/launcher/util/K8FrontCameraManager;->access$200(Lcom/miui/home/launcher/util/K8FrontCameraManager;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    if-ne v0, p1, :cond_0

    .line 91
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraAvailable CAMERA_FACING_FRONT id"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object p0, p0, Lcom/miui/home/launcher/util/K8FrontCameraManager$1;->this$0:Lcom/miui/home/launcher/util/K8FrontCameraManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/util/K8FrontCameraManager;->access$302(Lcom/miui/home/launcher/util/K8FrontCameraManager;Z)Z

    :cond_0
    return-void
.end method

.method public onCameraUnavailable(Ljava/lang/String;)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/miui/home/launcher/util/K8FrontCameraManager$1;->this$0:Lcom/miui/home/launcher/util/K8FrontCameraManager;

    invoke-static {v0}, Lcom/miui/home/launcher/util/K8FrontCameraManager;->access$200(Lcom/miui/home/launcher/util/K8FrontCameraManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/miui/home/launcher/util/K8FrontCameraManager$1;->this$0:Lcom/miui/home/launcher/util/K8FrontCameraManager;

    invoke-static {v0}, Lcom/miui/home/launcher/util/K8FrontCameraManager;->access$400(Lcom/miui/home/launcher/util/K8FrontCameraManager;)V

    .line 100
    :cond_0
    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraUnavailable(Ljava/lang/String;)V

    .line 101
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCameraUnavailable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "K8FrontCameraManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/miui/home/launcher/util/K8FrontCameraManager$1;->this$0:Lcom/miui/home/launcher/util/K8FrontCameraManager;

    invoke-static {v0}, Lcom/miui/home/launcher/util/K8FrontCameraManager;->access$200(Lcom/miui/home/launcher/util/K8FrontCameraManager;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 104
    iget-object p0, p0, Lcom/miui/home/launcher/util/K8FrontCameraManager$1;->this$0:Lcom/miui/home/launcher/util/K8FrontCameraManager;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/miui/home/launcher/util/K8FrontCameraManager;->access$302(Lcom/miui/home/launcher/util/K8FrontCameraManager;Z)Z

    :cond_1
    return-void
.end method
