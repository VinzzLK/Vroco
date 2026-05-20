.class public final Lcom/miui/home/recents/anim/WindowElement$mRectFSpringAnimListener$1;
.super Ljava/lang/Object;
.source "WindowElement.kt"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;


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

    iput-object p1, p0, Lcom/miui/home/recents/anim/WindowElement$mRectFSpringAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement$mRectFSpringAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->getCancelAnimType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/WindowElement;->setPipAnimationTypeToAlpha(Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V

    .line 247
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement$mRectFSpringAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-static {v0}, Lcom/miui/home/recents/anim/WindowElement;->access$hideTaskViewByQuickSwitch(Lcom/miui/home/recents/anim/WindowElement;)V

    .line 248
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement$mRectFSpringAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/WindowElement;->getMUserAnimListener()Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;->onAnimationCancel(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    .line 249
    :cond_1
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement$mRectFSpringAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getFloatingIcon()Lcom/miui/home/recents/FloatingIconInterface;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/miui/home/recents/FloatingIconInterface;->recycle(Z)V

    :cond_2
    return-void
.end method

.method public onAnimationEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 258
    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->getCancelAnimType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 259
    :goto_0
    iget-object v2, p0, Lcom/miui/home/recents/anim/WindowElement$mRectFSpringAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-static {v2, v1}, Lcom/miui/home/recents/anim/WindowElement;->access$setScenarioState(Lcom/miui/home/recents/anim/WindowElement;Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V

    .line 260
    sget-object v2, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->APP_TO_APP:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_2

    iget-object v2, p0, Lcom/miui/home/recents/anim/WindowElement$mRectFSpringAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/WindowElement;->getCurrentRectFParams()Lcom/miui/home/recents/anim/RectFParams;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/RectFParams;->getNeedFinishOnAnimEnd()Z

    move-result v2

    if-ne v2, v3, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    if-eqz v2, :cond_3

    .line 261
    :cond_2
    iget-object v2, p0, Lcom/miui/home/recents/anim/WindowElement$mRectFSpringAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-static {v2}, Lcom/miui/home/recents/anim/WindowElement;->access$getTAG$p(Lcom/miui/home/recents/anim/WindowElement;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "reset mDisableStateManagerListener false."

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v2, p0, Lcom/miui/home/recents/anim/WindowElement$mRectFSpringAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {v2, v4}, Lcom/miui/home/recents/anim/WindowElement;->setMDisableStateManagerListener(Z)V

    .line 264
    :cond_3
    iget-object v2, p0, Lcom/miui/home/recents/anim/WindowElement$mRectFSpringAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-static {v2}, Lcom/miui/home/recents/anim/WindowElement;->access$getTAG$p(Lcom/miui/home/recents/anim/WindowElement;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/miui/home/recents/anim/WindowElement$mRectFSpringAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " TransitionTest onAnimationEnd AnimType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " allowShellListener = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/miui/home/recents/anim/WindowElement$mRectFSpringAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-static {v6}, Lcom/miui/home/recents/anim/WindowElement;->access$getAllowEndListener$p(Lcom/miui/home/recents/anim/WindowElement;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isDuringMerge="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    iget-object v6, p0, Lcom/miui/home/recents/anim/WindowElement$mRectFSpringAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {v6}, Lcom/miui/home/recents/anim/WindowElement;->getMDuringMerge()Z

    move-result v6

    .line 264
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", mOnShellAnimListener="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    iget-object v6, p0, Lcom/miui/home/recents/anim/WindowElement$mRectFSpringAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-static {v6}, Lcom/miui/home/recents/anim/WindowElement;->access$getMOnShellAnimListener$p(Lcom/miui/home/recents/anim/WindowElement;)Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;

    move-result-object v6

    .line 264
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", mUserAnimListener="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    iget-object v6, p0, Lcom/miui/home/recents/anim/WindowElement$mRectFSpringAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {v6}, Lcom/miui/home/recents/anim/WindowElement;->getMUserAnimListener()Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;

    move-result-object v6

    .line 264
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", mSurfaceCanceledExecute="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    iget-object v6, p0, Lcom/miui/home/recents/anim/WindowElement$mRectFSpringAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {v6}, Lcom/miui/home/recents/anim/WindowElement;->getMSurfaceCanceledExecute()Z

    move-result v6

    .line 264
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v2, p0, Lcom/miui/home/recents/anim/WindowElement$mRectFSpringAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/WindowElement;->getMSurfaceCanceledExecute()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 271
    iget-object v2, p0, Lcom/miui/home/recents/anim/WindowElement$mRectFSpringAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-static {v2}, Lcom/miui/home/recents/anim/WindowElement;->access$getTAG$p(Lcom/miui/home/recents/anim/WindowElement;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "onAnimationEnd: isSurfaceCanceled"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    sget-object v2, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_DRAG:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-eq v1, v2, :cond_9

    .line 273
    iget-object v2, p0, Lcom/miui/home/recents/anim/WindowElement$mRectFSpringAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {v2, v1}, Lcom/miui/home/recents/anim/WindowElement;->setPipAnimationTypeToAlpha(Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V

    .line 274
    iget-object v1, p0, Lcom/miui/home/recents/anim/WindowElement$mRectFSpringAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/WindowElement;->getMDuringMerge()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 275
    iget-object v1, p0, Lcom/miui/home/recents/anim/WindowElement$mRectFSpringAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {v1, v3}, Lcom/miui/home/recents/anim/WindowElement;->setMEndWaitingMerge(Z)V

    .line 277
    :cond_4
    iget-object v1, p0, Lcom/miui/home/recents/anim/WindowElement$mRectFSpringAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-static {v1}, Lcom/miui/home/recents/anim/WindowElement;->access$getAllowEndListener$p(Lcom/miui/home/recents/anim/WindowElement;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/miui/home/recents/anim/WindowElement$mRectFSpringAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/WindowElement;->getMDuringMerge()Z

    move-result v1

    if-nez v1, :cond_9

    .line 278
    iget-object v1, p0, Lcom/miui/home/recents/anim/WindowElement$mRectFSpringAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-static {v1}, Lcom/miui/home/recents/anim/WindowElement;->access$hideTaskViewByQuickSwitch(Lcom/miui/home/recents/anim/WindowElement;)V

    .line 279
    iget-object v1, p0, Lcom/miui/home/recents/anim/WindowElement$mRectFSpringAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/WindowElement;->getMUserAnimListener()Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1, p1}, Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;->onSurfaceEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    .line 280
    :cond_5
    iget-object v1, p0, Lcom/miui/home/recents/anim/WindowElement$mRectFSpringAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/WindowElement;->getMUserAnimListener()Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v1, p1}, Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;->onIconAnimationEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    .line 281
    :cond_6
    iget-object v1, p0, Lcom/miui/home/recents/anim/WindowElement$mRectFSpringAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {v1, v0}, Lcom/miui/home/recents/anim/WindowElement;->setMUserAnimListener(Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;)V

    .line 282
    iget-object v1, p0, Lcom/miui/home/recents/anim/WindowElement$mRectFSpringAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {v1, v0}, Lcom/miui/home/recents/anim/WindowElement;->setMOffsetHelper(Lcom/miui/home/recents/anim/WindowElementOffsetHelper;)V

    .line 283
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement$mRectFSpringAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/WindowElement;->getCurrentRectFParams()Lcom/miui/home/recents/anim/RectFParams;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MHWAnimation# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/anim/WindowElement$mRectFSpringAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/WindowElement;->getCurrentRectFParams()Lcom/miui/home/recents/anim/RectFParams;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/RectFParams;->getAnimType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    goto :goto_2

    :cond_7
    if-eqz p1, :cond_8

    .line 289
    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->clearCurrentRectCalculator()V

    .line 290
    :cond_8
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement$mRectFSpringAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {v0, p1, v3}, Lcom/miui/home/recents/anim/WindowElement;->resetData(Lcom/miui/home/recents/util/RectFSpringAnim;Z)V

    .line 292
    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement$mRectFSpringAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/WindowElement;->getMFinishSurface()Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz p1, :cond_a

    .line 293
    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->clearCurrentRectCalculator()V

    .line 294
    :cond_a
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement$mRectFSpringAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {v0, v4}, Lcom/miui/home/recents/anim/WindowElement;->resetFloatingIcon(Z)V

    .line 295
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement$mRectFSpringAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-static {v0, p1}, Lcom/miui/home/recents/anim/WindowElement;->access$notifyStateManagerEndAndReleaseSelf(Lcom/miui/home/recents/anim/WindowElement;Lcom/miui/home/recents/util/RectFSpringAnim;)V

    .line 296
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement$mRectFSpringAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->clearSurfaceData()V

    :cond_b
    return-void
.end method

.method public onAnimationStart(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement$mRectFSpringAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/WindowElement;->getMUserAnimListener()Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;->onAnimationStart(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    .line 254
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement$mRectFSpringAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getStateManagerListener()Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;->onAnimationStart(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    :cond_1
    return-void
.end method
