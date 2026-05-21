.class public Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LauncherAppsCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/LauncherModel;


# direct methods
.method public static synthetic $r8$lambda$jVW3Y3oFCo2cBAHIc6NZlD0yxiM(Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->lambda$onPackageAdded$0(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/launcher/LauncherModel;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkThemeManagerChange(Ljava/lang/String;)V
    .locals 0

    const-string p0, "com.android.thememanager"

    .line 429
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 432
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 434
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->updateWallpaperEffectVisibility()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onPackageAdded$0(Ljava/lang/String;)V
    .locals 1

    .line 474
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    new-instance v0, Lcom/miui/home/launcher/model/WidgetUpdateTask;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/model/WidgetUpdateTask;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/miui/home/launcher/LauncherModel$ModelUpdateTask;)V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3

    .line 467
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-static {v0, v1, p2, v2}, Lcom/miui/home/launcher/LauncherModel;->access$300(Lcom/miui/home/launcher/LauncherModel;Ljava/util/List;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "onPackageAdded"

    if-eqz v0, :cond_0

    .line 468
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    const/4 v0, 0x1

    invoke-static {p0, v1, p1, p2, v0}, Lcom/miui/home/launcher/LauncherModel;->access$400(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Z)V

    return-void

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, p2, v2}, Lcom/miui/home/launcher/LauncherModel;->access$400(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Z)V

    .line 472
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/LauncherModel;->access$500(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/LauncherModel;->access$700(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    new-instance v1, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/miui/home/launcher/LauncherModel;->access$1900(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/Runnable;)V

    .line 476
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    new-instance v1, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback$3;-><init>(Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherModel;->runOnWorkerThreadAndCheckForReady(Ljava/lang/Runnable;)V

    .line 484
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p2, p1}, Lcom/miui/home/launcher/LauncherModel;->access$1100(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;)V

    .line 485
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p2, p1}, Lcom/miui/home/launcher/LauncherModel;->access$1200(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;)V

    .line 486
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p2, p1}, Lcom/miui/home/launcher/LauncherModel;->access$1300(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;)V

    .line 487
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->access$1800(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;)V

    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 4

    .line 392
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-static {v0, v1, p2, v2}, Lcom/miui/home/launcher/LauncherModel;->access$300(Lcom/miui/home/launcher/LauncherModel;Ljava/util/List;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "onPackageChanged"

    if-eqz v0, :cond_0

    .line 393
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    const/4 v0, 0x1

    invoke-static {p0, v1, p1, p2, v0}, Lcom/miui/home/launcher/LauncherModel;->access$400(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Z)V

    return-void

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, p2, v3}, Lcom/miui/home/launcher/LauncherModel;->access$400(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Z)V

    .line 397
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/LauncherModel;->access$500(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/LauncherModel;->access$600(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/LauncherModel;->access$700(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/LauncherModel;->access$800(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;)V

    .line 401
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isSecurityCenterSupportShareAPK()Z

    move-result v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->setSecurityCenterIsSupportShareAPK(Z)V

    .line 403
    invoke-static {}, Lcom/mi/appfinder/launcher/FinderController;->getInstance()Lcom/mi/appfinder/launcher/FinderController;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Lcom/mi/appfinder/launcher/FinderController;->onPackageChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    new-instance v1, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback$1;-><init>(Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherModel;->runOnWorkerThreadAndCheckForReady(Ljava/lang/Runnable;)V

    .line 413
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/LauncherModel;->scheduleWidgetUpdateTask(Ljava/lang/String;)V

    .line 415
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p2, p1}, Lcom/miui/home/launcher/LauncherModel;->access$1000(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;)V

    .line 416
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p2, p1}, Lcom/miui/home/launcher/LauncherModel;->access$1100(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;)V

    .line 417
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p2, p1}, Lcom/miui/home/launcher/LauncherModel;->access$1200(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;)V

    .line 418
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p2, p1}, Lcom/miui/home/launcher/LauncherModel;->access$1300(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;)V

    .line 419
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p2, p1}, Lcom/miui/home/launcher/LauncherModel;->access$1400(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;)V

    .line 420
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p2, p1}, Lcom/miui/home/launcher/LauncherModel;->access$1500(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;)V

    .line 421
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPackageChanged: packageName = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Launcher.Model"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p2}, Lcom/miui/home/launcher/LauncherModel;->access$1600(Lcom/miui/home/launcher/LauncherModel;)V

    .line 423
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->checkThemeManagerChange(Ljava/lang/String;)V

    .line 424
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p2, p1}, Lcom/miui/home/launcher/LauncherModel;->access$1700(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;)V

    .line 425
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->access$1800(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;)V

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 4

    .line 439
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-static {v0, v1, p2, v2}, Lcom/miui/home/launcher/LauncherModel;->access$300(Lcom/miui/home/launcher/LauncherModel;Ljava/util/List;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "onPackageRemoved"

    if-eqz v0, :cond_0

    .line 440
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    const/4 v0, 0x1

    invoke-static {p0, v1, p1, p2, v0}, Lcom/miui/home/launcher/LauncherModel;->access$400(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Z)V

    return-void

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, p2, v3}, Lcom/miui/home/launcher/LauncherModel;->access$400(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Z)V

    .line 444
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/LauncherModel;->access$500(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/LauncherModel;->access$700(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    new-instance v1, Lcom/miui/home/launcher/model/PackageRemovedTask;

    invoke-direct {v1, p1, p2}, Lcom/miui/home/launcher/model/PackageRemovedTask;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/miui/home/launcher/LauncherModel$ModelUpdateTask;)V

    .line 447
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    new-instance v1, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback$2;-><init>(Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherModel;->runOnWorkerThreadAndCheckForReady(Ljava/lang/Runnable;)V

    .line 455
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p2, p1}, Lcom/miui/home/launcher/LauncherModel;->access$1100(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;)V

    .line 456
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p2, p1}, Lcom/miui/home/launcher/LauncherModel;->access$1200(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;)V

    .line 457
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p2, p1}, Lcom/miui/home/launcher/LauncherModel;->access$1300(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;)V

    .line 459
    invoke-static {}, Lcom/mi/appfinder/launcher/FinderController;->getInstance()Lcom/mi/appfinder/launcher/FinderController;

    move-result-object p2

    invoke-virtual {p2, v2, p1}, Lcom/mi/appfinder/launcher/FinderController;->onPackageChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPackageRemoved: packageName = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Launcher.Model"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p2}, Lcom/miui/home/launcher/LauncherModel;->access$1600(Lcom/miui/home/launcher/LauncherModel;)V

    .line 462
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p2, p1}, Lcom/miui/home/launcher/LauncherModel;->access$1700(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;)V

    .line 463
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->access$1800(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;)V

    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 5

    .line 491
    iget-object p3, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-static {p3, v0, p2, v1}, Lcom/miui/home/launcher/LauncherModel;->access$300(Lcom/miui/home/launcher/LauncherModel;Ljava/util/List;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result p3

    const-string v0, "onPackagesAvailable"

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    .line 492
    array-length p3, p1

    :goto_0
    if-ge v1, p3, :cond_0

    aget-object v2, p1, v1

    .line 493
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    const/4 v4, 0x1

    invoke-static {v3, v0, v2, p2, v4}, Lcom/miui/home/launcher/LauncherModel;->access$400(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 497
    :cond_1
    array-length p3, p1

    move v2, v1

    :goto_1
    if-ge v2, p3, :cond_2

    aget-object v3, p1, v2

    .line 498
    iget-object v4, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v4, v0, v3, p2, v1}, Lcom/miui/home/launcher/LauncherModel;->access$400(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 500
    :cond_2
    iget-object p3, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    new-instance v0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback$4;-><init>(Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;[Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {p3, v0}, Lcom/miui/home/launcher/LauncherModel;->runOnWorkerThreadAndCheckForReady(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPackagesSuspended([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 6

    .line 535
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-static {v0, v1, p2, v2}, Lcom/miui/home/launcher/LauncherModel;->access$300(Lcom/miui/home/launcher/LauncherModel;Ljava/util/List;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "onPackagesSuspended"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 536
    array-length v0, p1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 537
    iget-object v4, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    const/4 v5, 0x1

    invoke-static {v4, v1, v3, p2, v5}, Lcom/miui/home/launcher/LauncherModel;->access$400(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 541
    :cond_1
    array-length v0, p1

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_2

    aget-object v4, p1, v3

    .line 542
    iget-object v5, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v5, v1, v4, p2, v2}, Lcom/miui/home/launcher/LauncherModel;->access$400(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 544
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    new-instance v1, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback$6;-><init>(Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;[Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherModel;->runOnWorkerThreadAndCheckForReady(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 5

    .line 511
    iget-object p3, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-static {p3, v0, p2, v1}, Lcom/miui/home/launcher/LauncherModel;->access$300(Lcom/miui/home/launcher/LauncherModel;Ljava/util/List;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result p3

    const-string v0, "onPackagesUnavailable"

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    .line 512
    array-length p3, p1

    :goto_0
    if-ge v1, p3, :cond_0

    aget-object v2, p1, v1

    .line 513
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    const/4 v4, 0x1

    invoke-static {v3, v0, v2, p2, v4}, Lcom/miui/home/launcher/LauncherModel;->access$400(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 517
    :cond_1
    array-length p3, p1

    move v2, v1

    :goto_1
    if-ge v2, p3, :cond_2

    aget-object v3, p1, v2

    .line 518
    iget-object v4, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v4, v0, v3, p2, v1}, Lcom/miui/home/launcher/LauncherModel;->access$400(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 520
    :cond_2
    iget-object p3, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    new-instance v0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback$5;-><init>(Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;[Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {p3, v0}, Lcom/miui/home/launcher/LauncherModel;->runOnWorkerThreadAndCheckForReady(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPackagesUnsuspended([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 6

    .line 559
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-static {v0, v1, p2, v2}, Lcom/miui/home/launcher/LauncherModel;->access$300(Lcom/miui/home/launcher/LauncherModel;Ljava/util/List;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "onPackagesUnsuspended"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 560
    array-length v0, p1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 561
    iget-object v4, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    const/4 v5, 0x1

    invoke-static {v4, v1, v3, p2, v5}, Lcom/miui/home/launcher/LauncherModel;->access$400(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 565
    :cond_1
    array-length v0, p1

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_2

    aget-object v4, p1, v3

    .line 566
    iget-object v5, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v5, v1, v4, p2, v2}, Lcom/miui/home/launcher/LauncherModel;->access$400(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 568
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    new-instance v1, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback$7;-><init>(Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;[Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherModel;->runOnWorkerThreadAndCheckForReady(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onShortcutsChanged(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/miui/launcher/common/ShortcutInfoCompat;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 580
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p2}, Lcom/miui/home/launcher/LauncherModel;->access$900(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/Application;

    .line 581
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p2}, Lcom/miui/home/launcher/LauncherModel;->access$900(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/Application;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 583
    :cond_0
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p2, v0, p3, v1}, Lcom/miui/home/launcher/LauncherModel;->access$300(Lcom/miui/home/launcher/LauncherModel;Ljava/util/List;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result p2

    const-string v0, "onShortcutsChanged"

    if-eqz p2, :cond_1

    .line 584
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    const/4 p2, 0x1

    invoke-static {p0, v0, p1, p3, p2}, Lcom/miui/home/launcher/LauncherModel;->access$400(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Z)V

    return-void

    .line 587
    :cond_1
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    const/4 v2, 0x0

    invoke-static {p2, v0, p1, p3, v2}, Lcom/miui/home/launcher/LauncherModel;->access$400(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Z)V

    .line 589
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    .line 590
    invoke-static {p2}, Lcom/miui/home/launcher/LauncherModel;->access$900(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/Application;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p2

    invoke-static {p3}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/miui/home/launcher/Launcher;->getLoadedDeepShortcutMap(Ljava/lang/String;I)Ljava/util/HashMap;

    move-result-object p2

    .line 592
    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 594
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$900(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/Application;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    .line 595
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 594
    invoke-static {v0, p1, v2, p3}, Lcom/miui/launcher/common/PinShortcutRequestUtils;->queryForFullDetails(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    .line 596
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/launcher/common/ShortcutInfoCompat;

    .line 597
    invoke-virtual {p3}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 598
    invoke-virtual {p3}, Lcom/miui/launcher/common/ShortcutInfoCompat;->isPinned()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 599
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v2}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/library/utils/DeferredHandler;

    move-result-object v2

    new-instance v3, Lcom/miui/home/launcher/ShortcutChangeTask;

    iget-object v4, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v4}, Lcom/miui/home/launcher/LauncherModel;->access$2000(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/LauncherModel$Callbacks;

    invoke-direct {v3, v0, v1, p3, v4}, Lcom/miui/home/launcher/ShortcutChangeTask;-><init>(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/launcher/common/ShortcutInfoCompat;Lcom/miui/home/launcher/LauncherModel$Callbacks;)V

    invoke-virtual {v2, v3}, Lcom/miui/home/library/utils/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 601
    :cond_2
    iget-object p3, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p3}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/library/utils/DeferredHandler;

    move-result-object p3

    new-instance v2, Lcom/miui/home/launcher/ShortcutChangeTask;

    iget-object v3, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v3}, Lcom/miui/home/launcher/LauncherModel;->access$2000(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/LauncherModel$Callbacks;

    invoke-direct {v2, v1, v0, v1, v3}, Lcom/miui/home/launcher/ShortcutChangeTask;-><init>(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/launcher/common/ShortcutInfoCompat;Lcom/miui/home/launcher/LauncherModel$Callbacks;)V

    invoke-virtual {p3, v2}, Lcom/miui/home/library/utils/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 609
    :cond_3
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/ShortcutInfo;

    .line 610
    iget-object p3, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p3}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/library/utils/DeferredHandler;

    move-result-object p3

    new-instance v0, Lcom/miui/home/launcher/ShortcutChangeTask;

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v2}, Lcom/miui/home/launcher/LauncherModel;->access$2000(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/LauncherModel$Callbacks;

    invoke-direct {v0, v1, p2, v1, v2}, Lcom/miui/home/launcher/ShortcutChangeTask;-><init>(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/launcher/common/ShortcutInfoCompat;Lcom/miui/home/launcher/LauncherModel$Callbacks;)V

    invoke-virtual {p3, v0}, Lcom/miui/home/library/utils/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_4
    return-void
.end method
