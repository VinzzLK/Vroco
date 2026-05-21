.class Lcom/miui/home/launcher/Launcher$25;
.super Landroid/database/ContentObserver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public static synthetic $r8$lambda$yWF_TQUdN4dEjsxoIL8Lw3hJQ5E(Lcom/miui/home/launcher/Launcher$25;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher$25;->lambda$onChange$0()V

    return-void
.end method

.method constructor <init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V
    .locals 0

    .line 4690
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$25;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method private synthetic lambda$onChange$0()V
    .locals 5

    .line 4697
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$25;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/util/noword/NoWordSettingHelperKt;->checkNoWordSettings(Landroid/content/Context;)V

    .line 4698
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$25;->this$0:Lcom/miui/home/launcher/Launcher;

    .line 4699
    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->INSTANCE:Lcom/miui/home/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/DeviceConfig;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v1, v0, v2, v4, v3}, Lcom/miui/home/launcher/DeviceConfig;->loadScreenSize(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/Object;)Z

    .line 4700
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/LauncherLoadingState;

    const-string v2, "no_word_changed"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/miui/home/launcher/common/messages/LauncherLoadingState;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 4701
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$25;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$3400(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/DropTargetBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DropTargetBar;->onCancelUninstall(Z)Z

    .line 4702
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$25;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->forceReload()V

    .line 4703
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance v0, Lcom/miui/home/launcher/common/messages/StartSwitchingNoWordModel;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/messages/StartSwitchingNoWordModel;-><init>()V

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 4693
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$25;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 4696
    :cond_0
    new-instance p1, Lcom/miui/home/launcher/Launcher$25$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/Launcher$25$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/Launcher$25;)V

    invoke-static {p1}, Lcom/miui/home/launcher/util/noword/NoWordSettingHelperKt;->switchNoWordSetting(Ljava/lang/Runnable;)V

    return-void
.end method
