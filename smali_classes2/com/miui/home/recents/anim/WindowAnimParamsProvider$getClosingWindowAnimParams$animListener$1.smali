.class public final Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getClosingWindowAnimParams$animListener$1;
.super Ljava/lang/Object;
.source "WindowAnimParamsProvider.kt"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getClosingWindowAnimParams(Lcom/miui/home/launcher/Launcher;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/FastLaunchData;Landroid/view/View;)Lcom/miui/home/recents/anim/AllElementParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $isElementParam:Z

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
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getClosingWindowAnimParams$animListener$1;->$launchAppAndBackHomeAnimTarget:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-boolean p2, p0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getClosingWindowAnimParams$animListener$1;->$isElementParam:Z

    .line 1115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 0

    .line 1132
    invoke-interface {p0, p1}, Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;->onSurfaceEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    .line 1133
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getClosingWindowAnimParams$animListener$1;->onIconAnimationEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    return-void
.end method

.method public onAnimationStart(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 1

    .line 1117
    iget-object p1, p0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getClosingWindowAnimParams$animListener$1;->$launchAppAndBackHomeAnimTarget:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->onEnterHomeAnimStart()V

    .line 1118
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getClosingWindowAnimParams$animListener$1;->$launchAppAndBackHomeAnimTarget:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->setAnimTargetVisibility(I)V

    .line 1119
    :goto_0
    iget-boolean p0, p0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getClosingWindowAnimParams$animListener$1;->$isElementParam:Z

    if-eqz p0, :cond_2

    .line 1120
    sget-object p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->INSTANCE:Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;

    invoke-virtual {p0}, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->onAnimBackToStatusBarStart()V

    :cond_2
    return-void
.end method

.method public onIconAnimationEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 0

    .line 1125
    iget-object p1, p0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getClosingWindowAnimParams$animListener$1;->$launchAppAndBackHomeAnimTarget:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->onEnterHomeAnimFinish()V

    .line 1126
    :cond_0
    iget-boolean p0, p0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getClosingWindowAnimParams$animListener$1;->$isElementParam:Z

    if-eqz p0, :cond_1

    .line 1127
    sget-object p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->INSTANCE:Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;

    invoke-virtual {p0}, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->onAnimBackToStatusBarEnd()V

    :cond_1
    return-void
.end method
