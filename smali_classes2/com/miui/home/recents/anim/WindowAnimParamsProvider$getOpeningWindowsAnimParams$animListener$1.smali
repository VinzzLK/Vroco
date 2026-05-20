.class public final Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getOpeningWindowsAnimParams$animListener$1;
.super Ljava/lang/Object;
.source "WindowAnimParamsProvider.kt"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getOpeningWindowsAnimParams(Lcom/miui/home/launcher/Launcher;Landroid/view/View;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;ZILandroid/graphics/Rect;)Lcom/miui/home/recents/anim/AllElementParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $isIgnoreIconAnim:Z

.field final synthetic $launchAppAndBackHomeAnimTarget:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $launcher:Lcom/miui/home/launcher/Launcher;


# direct methods
.method constructor <init>(ZLkotlin/jvm/internal/Ref$ObjectRef;Lcom/miui/home/launcher/Launcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;",
            ">;",
            "Lcom/miui/home/launcher/Launcher;",
            ")V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getOpeningWindowsAnimParams$animListener$1;->$isIgnoreIconAnim:Z

    iput-object p2, p0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getOpeningWindowsAnimParams$animListener$1;->$launchAppAndBackHomeAnimTarget:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getOpeningWindowsAnimParams$animListener$1;->$launcher:Lcom/miui/home/launcher/Launcher;

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 4

    .line 454
    sget-object p1, Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;->INSTANCE:Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;

    .line 457
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager;->getNotifyPackage()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x128

    const/4 v3, 0x0

    .line 454
    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;->setScenarioState(JZLjava/lang/String;)V

    .line 459
    iget-boolean p1, p0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getOpeningWindowsAnimParams$animListener$1;->$isIgnoreIconAnim:Z

    if-nez p1, :cond_1

    .line 460
    iget-object p1, p0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getOpeningWindowsAnimParams$animListener$1;->$launchAppAndBackHomeAnimTarget:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->onLaunchAppAnimStart()V

    .line 461
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getOpeningWindowsAnimParams$animListener$1;->$launchAppAndBackHomeAnimTarget:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->endFolmeAnim()V

    :cond_1
    return-void
.end method

.method public onSurfaceEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 0

    .line 466
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getOpeningWindowsAnimParams$animListener$1;->$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onLaunchActivityProcessEnd()V

    return-void
.end method
