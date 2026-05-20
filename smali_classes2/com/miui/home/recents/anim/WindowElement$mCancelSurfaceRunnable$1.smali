.class public final Lcom/miui/home/recents/anim/WindowElement$mCancelSurfaceRunnable$1;
.super Ljava/lang/Object;
.source "WindowElement.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/anim/WindowElement;-><init>(Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/anim/WindowElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/recents/anim/WindowElement<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/miui/home/recents/anim/WindowElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/recents/anim/WindowElement<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/home/recents/anim/WindowElement$mCancelSurfaceRunnable$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    .line 973
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "cancelSurfaceAnimOnly"

    const-string v1, "execute finishTransition"

    .line 975
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement$mCancelSurfaceRunnable$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/WindowElement;->setMSurfaceCanceledExecute(Z)V

    .line 977
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement$mCancelSurfaceRunnable$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/WindowElement;->setMCanceled(Z)V

    .line 978
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement$mCancelSurfaceRunnable$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/WindowElement;->getMNativeHyperRemoteTransition()Lcom/miui/home/recents/anim/HyperRemoteTransition;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/HyperRemoteTransition;->setCancel(Z)V

    .line 979
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement$mCancelSurfaceRunnable$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/WindowElement;->getMNativeWindowTransitionCompatListener()Lcom/miui/home/recents/anim/WindowTransitionCompatListener;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/WindowTransitionCompatListener;->setCancel(Z)V

    .line 980
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement$mCancelSurfaceRunnable$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/WindowElement;->getMAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/miui/home/recents/anim/WindowElement;->resetData(Lcom/miui/home/recents/util/RectFSpringAnim;Z)V

    .line 981
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement$mCancelSurfaceRunnable$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/WindowElement;->getMTransformParams()Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setTargetAlpha(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 982
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement$mCancelSurfaceRunnable$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/WindowElement;->getClipAnimationHelper()Lcom/miui/home/recents/util/ClipAnimationHelper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 983
    iget-object v4, p0, Lcom/miui/home/recents/anim/WindowElement$mCancelSurfaceRunnable$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {v4}, Lcom/miui/home/recents/anim/WindowElement;->getRemoteAnimationTargetSet()Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    move-result-object v4

    .line 984
    new-instance v5, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-direct {v5}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;-><init>()V

    invoke-virtual {v5, v2}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setTargetAlpha(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v2

    .line 982
    invoke-virtual {v0, v4, v2}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;)Landroid/graphics/RectF;

    .line 986
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement$mCancelSurfaceRunnable$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    const/4 v2, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v2, v4}, Lcom/miui/home/recents/anim/WindowElement;->finishTransition$default(Lcom/miui/home/recents/anim/WindowElement;ZZILjava/lang/Object;)V

    .line 988
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement$mCancelSurfaceRunnable$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {v0, v3}, Lcom/miui/home/recents/anim/WindowElement;->setMUseShellAnimListener(Z)V

    .line 989
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getENABLE_MUTI_WINDOWELEMENT()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 990
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement$mCancelSurfaceRunnable$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/WindowElement;->setMFinishSurface(Z)V

    .line 992
    :cond_2
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement$mCancelSurfaceRunnable$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {p0, v4}, Lcom/miui/home/recents/anim/WindowElement;->setMCancelSurfaceTask(Ljava/lang/Runnable;)V

    return-void
.end method
