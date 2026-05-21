.class Lcom/miui/home/launcher/DeviceConfig$6;
.super Ljava/lang/Object;
.source "DeviceConfig.java"

# interfaces
.implements Lmiui/app/MultiWindowCallBackUtils$IsSupportSplitScreenChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/DeviceConfig;->Init(Landroid/content/Context;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/DeviceConfig;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/DeviceConfig;)V
    .locals 0

    .line 482
    iput-object p1, p0, Lcom/miui/home/launcher/DeviceConfig$6;->this$0:Lcom/miui/home/launcher/DeviceConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSupportSplitScreenChanged(Z)V
    .locals 1

    .line 485
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isSupportSplitScreenChanged: isSupport = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Launcher.DeviceConfig"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->access$002(Z)Z

    .line 487
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance p1, Lcom/miui/home/recents/messages/IsSupportMultiWindowChangedEvent;

    invoke-direct {p1}, Lcom/miui/home/recents/messages/IsSupportMultiWindowChangedEvent;-><init>()V

    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
