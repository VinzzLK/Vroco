.class public final Lcom/miui/home/recents/anim/WindowElement$launchSecondSplit$1;
.super Ljava/lang/Object;
.source "WindowElement.kt"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/anim/WindowElement;->launchSecondSplit([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $launcher:Lcom/miui/home/launcher/Launcher;

.field final synthetic $recentsView:Lcom/miui/home/recents/views/RecentsView;

.field final synthetic this$0:Lcom/miui/home/recents/anim/WindowElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/recents/anim/WindowElement<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/miui/home/recents/views/RecentsView;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/recents/anim/WindowElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/recents/views/RecentsView;",
            "Lcom/miui/home/launcher/Launcher;",
            "Lcom/miui/home/recents/anim/WindowElement<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/home/recents/anim/WindowElement$launchSecondSplit$1;->$recentsView:Lcom/miui/home/recents/views/RecentsView;

    iput-object p2, p0, Lcom/miui/home/recents/anim/WindowElement$launchSecondSplit$1;->$launcher:Lcom/miui/home/launcher/Launcher;

    iput-object p3, p0, Lcom/miui/home/recents/anim/WindowElement$launchSecondSplit$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    .line 763
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 2

    .line 770
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement$launchSecondSplit$1;->$launcher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    .line 771
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->onLaunchActivityProcessEnd()V

    .line 773
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement$launchSecondSplit$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->getCancelAnimType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/WindowElement;->setPipAnimationTypeToAlpha(Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V

    .line 774
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement$launchSecondSplit$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-static {v0}, Lcom/miui/home/recents/anim/WindowElement;->access$hideTaskViewByQuickSwitch(Lcom/miui/home/recents/anim/WindowElement;)V

    .line 775
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement$launchSecondSplit$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-static {v0}, Lcom/miui/home/recents/anim/WindowElement;->access$getMOnShellAnimListener$p(Lcom/miui/home/recents/anim/WindowElement;)Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;->onAnimationEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    .line 776
    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement$launchSecondSplit$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/WindowElement;->getMUserAnimListener()Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;->onSurfaceEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    .line 777
    :cond_3
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement$launchSecondSplit$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMUserAnimListener()Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-interface {p0, p1}, Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;->onIconAnimationEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    :cond_4
    return-void
.end method

.method public onAnimationStart(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 1

    .line 765
    iget-object p1, p0, Lcom/miui/home/recents/anim/WindowElement$launchSecondSplit$1;->$recentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/TaskStackView;->setAllThumbnailViewHardware(Z)V

    .line 766
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement$launchSecondSplit$1;->$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRotationHelper()Lcom/miui/home/recents/util/RotationHelper;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/util/RotationHelper;->setCurrentStateRequest(I)V

    return-void
.end method
