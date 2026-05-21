.class Lcom/miui/home/launcher/Launcher$5;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


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
.method constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 2448
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$5;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 4

    .line 2459
    invoke-static {}, Lcom/miui/launcher/utils/DisplayManagerGlobalUtils;->getRotation()I

    move-result p1

    .line 2460
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->setRotation(I)V

    .line 2461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDisplayChanged: newRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$5;->this$0:Lcom/miui/home/launcher/Launcher;

    .line 2462
    invoke-static {v1}, Lcom/miui/home/launcher/Launcher;->access$1400(Lcom/miui/home/launcher/Launcher;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher"

    .line 2461
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2463
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$5;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$1400(Lcom/miui/home/launcher/Launcher;)I

    move-result v0

    if-eq v0, p1, :cond_7

    .line 2464
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$5;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/Launcher;->access$1402(Lcom/miui/home/launcher/Launcher;I)I

    .line 2465
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2466
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isUseFixedRotationTransform()Z

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$5;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$1500(Lcom/miui/home/launcher/Launcher;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$5;->this$0:Lcom/miui/home/launcher/Launcher;

    .line 2467
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    cmpg-float p1, p1, v2

    if-gez p1, :cond_2

    .line 2468
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$5;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/Launcher;->access$1502(Lcom/miui/home/launcher/Launcher;Z)Z

    .line 2469
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$5;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$1300(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2470
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$5;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2471
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$5;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$1300(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v2, 0xfa

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    const-string p1, "onDisplayChanged: show views"

    .line 2472
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2475
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$5;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2476
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$5;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$5;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$1400(Lcom/miui/home/launcher/Launcher;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/RecentsContainer;->onDisplayRotationChanged(I)V

    .line 2478
    :cond_3
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$5;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2479
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$5;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$5;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$1400(Lcom/miui/home/launcher/Launcher;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->onDisplayRotationChanged(I)V

    .line 2481
    :cond_4
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$5;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$1600(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/recents/NavStubView;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 2483
    invoke-virtual {p1}, Lcom/miui/home/recents/NavStubView;->onDisplayRotationChanged()V

    .line 2485
    :cond_5
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->getMiuiHomeSettingActivity()Lcom/miui/home/settings/MiuiHomeSettingActivity;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 2487
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->isContainMiuiHomeSettingsActivity()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$5;->this$0:Lcom/miui/home/launcher/Launcher;

    .line 2488
    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$1400(Lcom/miui/home/launcher/Launcher;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$5;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$1400(Lcom/miui/home/launcher/Launcher;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 2489
    :cond_6
    invoke-virtual {p1}, Lcom/miui/home/settings/MiuiHomeSettingActivity;->onOrientationChanged()V

    .line 2494
    :cond_7
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFlip()Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$5;->this$0:Lcom/miui/home/launcher/Launcher;

    iget-object v0, p1, Lcom/miui/home/launcher/BaseActivity;->mGridConfig:Lcom/miui/home/launcher/GridConfig;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->INSTANCE:Lcom/miui/home/launcher/util/MainThreadInitializedObject;

    .line 2495
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/DeviceConfig;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$5;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/DeviceConfig;->checkIfIsOrientationChanged(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 2496
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$5;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/DeviceConfig;

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$5;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/miui/home/launcher/DeviceConfig;->loadScreenSize(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/Object;)Z

    move-result p1

    .line 2497
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenSizeChanged()Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz p1, :cond_8

    .line 2499
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$5;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->forceReload()V

    .line 2500
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$5;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->updateLauncherProvider()V

    return-void

    .line 2503
    :cond_8
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$5;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->onScreenSizeChanged()V

    .line 2507
    :cond_9
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$5;->this$0:Lcom/miui/home/launcher/Launcher;

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mUnlockAnimationStateMachine:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->onDisplayChange()V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
