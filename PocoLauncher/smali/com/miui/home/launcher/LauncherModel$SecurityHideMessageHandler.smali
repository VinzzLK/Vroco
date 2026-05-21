.class Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;
.super Ljava/lang/Object;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecurityHideMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/LauncherModel;


# direct methods
.method public static synthetic $r8$lambda$YcLozIwi8_Ou7zDK7Ltlp3sRvts(Lcom/miui/home/launcher/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;->lambda$updateSecurityHideApps$1(Lcom/miui/home/launcher/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_gfYSeDytTd-wHD50W1YfWICYls(Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;->lambda$onMessageEvent$0(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

.method private constructor <init>(Lcom/miui/home/launcher/LauncherModel;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/LauncherModel$1;)V
    .locals 0

    .line 250
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;-><init>(Lcom/miui/home/launcher/LauncherModel;)V

    return-void
.end method

.method private synthetic lambda$onMessageEvent$0(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 259
    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;->updateSecurityHideApps(Lcom/miui/home/launcher/Launcher;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 263
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateSecurityHideApps err:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher.Model"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static synthetic lambda$updateSecurityHideApps$1(Lcom/miui/home/launcher/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    .line 288
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/launcher/Launcher;->bindAppsChanged(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private updateSecurityHideApps(Lcom/miui/home/launcher/Launcher;)V
    .locals 9

    .line 269
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/AllAppsList;->clearAllExceptData()V

    .line 270
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/miui/launcher/utils/PortableUtils;->launcherApps_getActivityList(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 271
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/launcher/utils/PortableUtils$ComponentAndUser;

    .line 272
    iget-object v2, v1, Lcom/miui/launcher/utils/PortableUtils$ComponentAndUser;->componentName:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    .line 273
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/miui/launcher/utils/PortableUtils$ComponentAndUser;->user:Landroid/os/UserHandle;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;->this$0:Lcom/miui/home/launcher/LauncherModel;

    .line 275
    invoke-static {v2}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/AllAppsList;->getAppFilter()Lcom/miui/home/launcher/AppFilter;

    move-result-object v2

    iget-object v3, v1, Lcom/miui/launcher/utils/PortableUtils$ComponentAndUser;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/AppFilter;->shouldShowApp(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 276
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v2}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object v3

    iget-object v2, v1, Lcom/miui/launcher/utils/PortableUtils$ComponentAndUser;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, v1, Lcom/miui/launcher/utils/PortableUtils$ComponentAndUser;->user:Landroid/os/UserHandle;

    const/4 v8, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/miui/home/launcher/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;ZLandroid/os/UserHandle;Z)V

    goto :goto_0

    .line 279
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 280
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 281
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v2}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object v2

    iget-object v2, v2, Lcom/miui/home/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 282
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v2}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object v2

    iget-object v2, v2, Lcom/miui/home/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 284
    :cond_2
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v2}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object v2

    iget-object v2, v2, Lcom/miui/home/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 285
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v2}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object v2

    iget-object v2, v2, Lcom/miui/home/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 287
    :cond_3
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v2}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/AllAppsList;->clearAllExceptData()V

    .line 288
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p0}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/library/utils/DeferredHandler;

    move-result-object p0

    new-instance v2, Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v0, v1}, Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v2}, Lcom/miui/home/library/utils/DeferredHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/SecurityHideMessage;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 253
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;->this$0:Lcom/miui/home/launcher/LauncherModel;

    new-instance v1, Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherModel;->runOnWorkerThreadAndCheckForReady(Ljava/lang/Runnable;)V

    return-void
.end method
