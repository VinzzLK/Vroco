.class public final Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getQuickOpeningWindowsAnimParams$animListener$1;
.super Ljava/lang/Object;
.source "WindowAnimParamsProvider.kt"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getQuickOpeningWindowsAnimParams(Lcom/miui/home/launcher/Launcher;Landroid/view/View;ZZLandroid/graphics/Rect;Landroid/graphics/Rect;I)Lcom/miui/home/recents/anim/AllElementParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $launchAppAndBackHomeAnimTarget:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getQuickOpeningWindowsAnimParams$animListener$1;->$launchAppAndBackHomeAnimTarget:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 4

    .line 284
    sget-object p1, Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;->INSTANCE:Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;

    .line 287
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager;->getNotifyPackage()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x128

    const/4 v3, 0x0

    .line 284
    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;->setScenarioState(JZLjava/lang/String;)V

    .line 289
    iget-object p1, p0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getQuickOpeningWindowsAnimParams$animListener$1;->$launchAppAndBackHomeAnimTarget:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->onLaunchAppAnimStart()V

    .line 290
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getQuickOpeningWindowsAnimParams$animListener$1;->$launchAppAndBackHomeAnimTarget:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->endFolmeAnim()V

    :cond_1
    return-void
.end method
