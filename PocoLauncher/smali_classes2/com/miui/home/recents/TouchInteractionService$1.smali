.class Lcom/miui/home/recents/TouchInteractionService$1;
.super Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;
.source "TouchInteractionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/TouchInteractionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static synthetic ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/TouchInteractionService;


# direct methods
.method public static synthetic $r8$lambda$CDB1cmK-3pVeSvseQJti2hfD-2Y(Lcom/miui/home/recents/TouchInteractionService;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/recents/TouchInteractionService$1;->lambda$onSystemUiStateChanged$1(Lcom/miui/home/recents/TouchInteractionService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bd_Z_E951ydQuP_CIW-52E9UweE(Lcom/miui/home/recents/TouchInteractionService$1;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/TouchInteractionService$1;->lambda$onInitialize$0(Landroid/os/Bundle;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/miui/home/recents/TouchInteractionService$1;->ajc$preClinit()V

    return-void
.end method

.method constructor <init>(Lcom/miui/home/recents/TouchInteractionService;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/miui/home/recents/TouchInteractionService$1;->this$0:Lcom/miui/home/recents/TouchInteractionService;

    invoke-direct {p0}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;-><init>()V

    return-void
.end method

.method private static synthetic ajc$preClinit()V
    .locals 9

    .line 1
    new-instance v8, Lorg/aspectj/runtime/reflect/Factory;

    const-class v0, Lcom/miui/home/recents/TouchInteractionService$1;

    const-string v1, "TouchInteractionService.java"

    invoke-direct {v8, v1, v0}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v1, "1"

    const-string v2, "onOverviewToggle"

    const-string v3, "com.miui.home.recents.TouchInteractionService$1"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "void"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v0

    const-string v1, "method-execution"

    const/16 v2, 0xa8

    invoke-virtual {v8, v1, v0, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/miui/home/recents/TouchInteractionService$1;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method private synthetic lambda$onInitialize$0(Landroid/os/Bundle;)V
    .locals 1

    .line 154
    sget-object v0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->INSTANCE:Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->setProxyByBundle(Landroid/os/Bundle;)V

    .line 155
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 156
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/LauncherAppTransitionManager;->registerRemoteTransitions()V

    .line 159
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/TouchInteractionService$1;->this$0:Lcom/miui/home/recents/TouchInteractionService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/recents/TouchInteractionService;->access$400(Lcom/miui/home/recents/TouchInteractionService;Landroid/content/res/Configuration;)V

    .line 160
    iget-object p0, p0, Lcom/miui/home/recents/TouchInteractionService$1;->this$0:Lcom/miui/home/recents/TouchInteractionService;

    invoke-static {p0}, Lcom/miui/home/recents/TouchInteractionService;->access$500(Lcom/miui/home/recents/TouchInteractionService;)V

    return-void
.end method

.method private static synthetic lambda$onSystemUiStateChanged$1(Lcom/miui/home/recents/TouchInteractionService;)V
    .locals 0

    .line 214
    invoke-static {p0}, Lcom/miui/home/recents/TouchInteractionService;->access$300(Lcom/miui/home/recents/TouchInteractionService;)V

    return-void
.end method

.method static final synthetic onOverviewToggle_aroundBody0(Lcom/miui/home/recents/TouchInteractionService$1;Lorg/aspectj/lang/JoinPoint;)V
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/miui/home/recents/TouchInteractionService$1;->this$0:Lcom/miui/home/recents/TouchInteractionService;

    invoke-static {p0}, Lcom/miui/home/recents/TouchInteractionService;->access$000(Lcom/miui/home/recents/TouchInteractionService;)Lcom/miui/home/recents/OverviewCommandHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/OverviewCommandHelper;->onOverviewToggle()V

    return-void
.end method


# virtual methods
.method public onActiveNavBarRegionChanges(Landroid/graphics/Region;)V
    .locals 0

    return-void
.end method

.method public onAssistantAvailable(Z)V
    .locals 1

    .line 191
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAssistantAvailable :"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TouchInteractionService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAssistantAvailable(ZZ)V
    .locals 0

    return-void
.end method

.method public onAssistantOverrideInvoked(I)V
    .locals 2

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAssistantOverrideInvoked called invocationType :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TouchInteractionService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object p0, p0, Lcom/miui/home/recents/TouchInteractionService$1;->this$0:Lcom/miui/home/recents/TouchInteractionService;

    invoke-static {p0}, Lcom/miui/home/recents/TouchInteractionService;->access$200(Lcom/miui/home/recents/TouchInteractionService;)V

    return-void
.end method

.method public onAssistantVisibilityChanged(F)V
    .locals 0

    return-void
.end method

.method public onBackAction(ZIIZZ)V
    .locals 0

    return-void
.end method

.method public onCancelWallpaperScaleAnimationFromHome()V
    .locals 1

    const-string p0, "TouchInteractionService"

    const-string v0, "onCancelWallpaperScaleAnimationFromHome"

    .line 257
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    sget-object p0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p0

    new-instance v0, Lcom/miui/home/recents/event/ScreenOffCancelWallpaperScaleEvent;

    invoke-direct {v0}, Lcom/miui/home/recents/event/ScreenOffCancelWallpaperScaleEvent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    return-void
.end method

.method public onFocusIconClicked(Ljava/lang/String;)V
    .locals 2

    .line 238
    sget-object p0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p0

    new-instance v0, Lcom/miui/home/recents/event/FocusNotifyIconClickEvent;

    new-instance v1, Lcom/miui/home/recents/event/FocusNotifyIconClickEventInfo;

    invoke-direct {v1, p1}, Lcom/miui/home/recents/event/FocusNotifyIconClickEventInfo;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/miui/home/recents/event/FocusNotifyIconClickEvent;-><init>(Lcom/miui/home/recents/event/FocusNotifyIconClickEventInfo;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    return-void
.end method

.method public onFocusNotifClicked()V
    .locals 1

    .line 229
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object p0

    instance-of p0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    if-eqz p0, :cond_0

    .line 231
    invoke-static {}, Lcom/miui/home/recents/AnimatorDurationScaleHelper;->isCloseAnimator()Z

    move-result p0

    if-nez p0, :cond_0

    .line 232
    sget-object p0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p0

    new-instance v0, Lcom/miui/home/recents/event/FocusNotifyEvent;

    invoke-direct {v0}, Lcom/miui/home/recents/event/FocusNotifyEvent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    :cond_0
    return-void
.end method

.method public onFocusNotifyAnimFinish()V
    .locals 0

    .line 219
    sget-object p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->INSTANCE:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;

    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->onFocusNotifyAnimFinish()V

    return-void
.end method

.method public onFocusedNotifUpdate(Ljava/lang/String;Landroid/graphics/drawable/Icon;Landroid/graphics/Rect;)V
    .locals 0

    .line 224
    sget-object p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->INSTANCE:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->onFocusedNotifUpdate(Ljava/lang/String;Landroid/graphics/drawable/Icon;Landroid/graphics/Rect;)V

    return-void
.end method

.method public onInitialize(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "TouchInteractionService"

    const-string v1, "TouchInteractionService::onInitialize"

    .line 152
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/TouchInteractionService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/TouchInteractionService$1$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/recents/TouchInteractionService$1;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onOverviewHidden(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 180
    iget-object p0, p0, Lcom/miui/home/recents/TouchInteractionService$1;->this$0:Lcom/miui/home/recents/TouchInteractionService;

    invoke-static {p0}, Lcom/miui/home/recents/TouchInteractionService;->access$000(Lcom/miui/home/recents/TouchInteractionService;)Lcom/miui/home/recents/OverviewCommandHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/OverviewCommandHelper;->onOverviewHidden()V

    :cond_0
    return-void
.end method

.method public onOverviewShown(Z)V
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/miui/home/recents/TouchInteractionService$1;->this$0:Lcom/miui/home/recents/TouchInteractionService;

    invoke-static {p0}, Lcom/miui/home/recents/TouchInteractionService;->access$000(Lcom/miui/home/recents/TouchInteractionService;)Lcom/miui/home/recents/OverviewCommandHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/OverviewCommandHelper;->onOverviewShown(Z)V

    return-void
.end method

.method public onOverviewToggle()V
    .locals 4

    sget-object v0, Lcom/miui/home/recents/TouchInteractionService$1;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 168
    invoke-static {}, Lcom/miui/home/safemode/SafeModeAspect;->aspectOf()Lcom/miui/home/safemode/SafeModeAspect;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object v0, v2, p0

    new-instance p0, Lcom/miui/home/recents/TouchInteractionService$1$AjcClosure1;

    invoke-direct {p0, v2}, Lcom/miui/home/recents/TouchInteractionService$1$AjcClosure1;-><init>([Ljava/lang/Object;)V

    const v0, 0x11010

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->linkClosureAndJoinPoint(I)Lorg/aspectj/lang/ProceedingJoinPoint;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/miui/home/safemode/SafeModeAspect;->replaceSafeMethod(Lorg/aspectj/lang/ProceedingJoinPoint;)Ljava/lang/Object;

    return-void
.end method

.method public onStatusBarLaunchAnimFinish()V
    .locals 1

    .line 243
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object p0

    check-cast p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->onFocusNotifyStartActivityFinish()V

    :cond_0
    return-void
.end method

.method public onSystemUiStateChanged(I)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/miui/home/recents/TouchInteractionService$1;->this$0:Lcom/miui/home/recents/TouchInteractionService;

    invoke-static {v0, p1}, Lcom/miui/home/recents/TouchInteractionService;->access$102(Lcom/miui/home/recents/TouchInteractionService;I)I

    .line 214
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    iget-object p0, p0, Lcom/miui/home/recents/TouchInteractionService$1;->this$0:Lcom/miui/home/recents/TouchInteractionService;

    new-instance v0, Lcom/miui/home/recents/TouchInteractionService$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/TouchInteractionService$1$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/recents/TouchInteractionService;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTip(II)V
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/miui/home/recents/TouchInteractionService$1;->this$0:Lcom/miui/home/recents/TouchInteractionService;

    invoke-static {p0}, Lcom/miui/home/recents/TouchInteractionService;->access$000(Lcom/miui/home/recents/TouchInteractionService;)Lcom/miui/home/recents/OverviewCommandHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/OverviewCommandHelper;->onTip(II)V

    return-void
.end method
