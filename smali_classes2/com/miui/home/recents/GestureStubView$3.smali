.class Lcom/miui/home/recents/GestureStubView$3;
.super Ljava/lang/Object;
.source "GestureStubView.java"

# interfaces
.implements Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/GestureStubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/GestureStubView;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/GestureStubView;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionDownInAnim()V
    .locals 0

    .line 312
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p0}, Lcom/miui/home/recents/GestureStubView;->access$100(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureBackArrowView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/GestureBackArrowView;->cancelFinishAnim()V

    return-void
.end method

.method public onSwipeProcess(ZF)V
    .locals 8

    if-eqz p1, :cond_0

    .line 231
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$200(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureStubView$H;

    move-result-object p1

    const/16 v0, 0x105

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 232
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$200(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureStubView$H;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 234
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$100(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureBackArrowView;

    move-result-object p1

    sget-object v0, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_NONE:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/GestureBackArrowView;->setReadyFinish(Lcom/miui/home/recents/GestureBackArrowView$ReadyState;)V

    .line 236
    :goto_0
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$100(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureBackArrowView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/GestureBackArrowView;->onSwipeProgress(F)V

    .line 237
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v0}, Lcom/miui/home/recents/GestureStubView;->access$800(Lcom/miui/home/recents/GestureStubView;)F

    move-result v1

    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$900(Lcom/miui/home/recents/GestureStubView;)F

    move-result v2

    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    .line 238
    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$800(Lcom/miui/home/recents/GestureStubView;)F

    move-result p1

    iget-object p2, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p2}, Lcom/miui/home/recents/GestureStubView;->access$1100(Lcom/miui/home/recents/GestureStubView;)F

    move-result p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x43340000    # 180.0f

    div-float/2addr p1, p2

    const/4 p2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 240
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p0}, Lcom/miui/home/recents/GestureStubView;->access$1000(Lcom/miui/home/recents/GestureStubView;)I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    const/4 p0, 0x1

    :goto_1
    move v6, p0

    const/4 v7, 0x0

    .line 237
    invoke-virtual/range {v0 .. v7}, Lcom/miui/home/recents/GestureStubView;->onBackProgressed(FFFFFILjava/lang/Object;)V

    return-void
.end method

.method public onSwipeStart(ZF)V
    .locals 12

    .line 206
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/home/recents/GestureStubView;->access$302(Lcom/miui/home/recents/GestureStubView;Z)Z

    .line 207
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v0}, Lcom/miui/home/recents/GestureStubView;->access$100(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureBackArrowView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/GestureBackArrowView;->setArrowFeedBackDone(Z)V

    .line 208
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v0}, Lcom/miui/home/recents/GestureStubView;->access$400(Lcom/miui/home/recents/GestureStubView;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSwipeStart: needAnimation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", offsetY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 213
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$100(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureBackArrowView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 214
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$500(Lcom/miui/home/recents/GestureStubView;)V

    .line 215
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$600(Lcom/miui/home/recents/GestureStubView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 216
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1, p2}, Lcom/miui/home/recents/GestureStubView;->access$700(Lcom/miui/home/recents/GestureStubView;F)[I

    move-result-object p1

    .line 217
    iget-object p2, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p2}, Lcom/miui/home/recents/GestureStubView;->access$100(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureBackArrowView;

    move-result-object p2

    aget v0, p1, v2

    int-to-float v0, v0

    aget v3, p1, v1

    int-to-float v3, v3

    const/4 v4, 0x2

    aget p1, p1, v4

    int-to-float p1, p1

    invoke-virtual {p2, v0, v3, p1}, Lcom/miui/home/recents/GestureBackArrowView;->onSwipeStart(FFF)V

    goto :goto_0

    .line 219
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$100(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureBackArrowView;

    move-result-object p1

    const/4 v0, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {p1, p2, v0, v3}, Lcom/miui/home/recents/GestureBackArrowView;->onSwipeStart(FFF)V

    .line 222
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v4}, Lcom/miui/home/recents/GestureStubView;->access$800(Lcom/miui/home/recents/GestureStubView;)F

    move-result v5

    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$900(Lcom/miui/home/recents/GestureStubView;)F

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 224
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p0}, Lcom/miui/home/recents/GestureStubView;->access$1000(Lcom/miui/home/recents/GestureStubView;)I

    move-result p0

    if-nez p0, :cond_2

    move v10, v2

    goto :goto_1

    :cond_2
    move v10, v1

    :goto_1
    const/4 v11, 0x0

    .line 222
    invoke-virtual/range {v4 .. v11}, Lcom/miui/home/recents/GestureStubView;->onBackStart(FFFFFILjava/lang/Object;)V

    return-void
.end method

.method public onSwipeStop(ZFZ)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_1

    .line 246
    iget-object p3, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p3}, Lcom/miui/home/recents/GestureStubView;->access$100(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureBackArrowView;

    move-result-object p3

    invoke-virtual {p3}, Lcom/miui/home/recents/GestureBackArrowView;->isArrowFeedBackDone()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    move p3, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p3, v1

    .line 247
    :goto_1
    iget-object v2, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v2, v0}, Lcom/miui/home/recents/GestureStubView;->access$302(Lcom/miui/home/recents/GestureStubView;Z)Z

    .line 248
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v0}, Lcom/miui/home/recents/GestureStubView;->access$200(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureStubView$H;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v2}, Lcom/miui/home/recents/GestureStubView;->access$200(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureStubView$H;

    move-result-object v2

    const/16 v3, 0x102

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 250
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    const/16 v2, 0x14

    invoke-static {v0, v2}, Lcom/miui/home/recents/GestureStubView;->access$1200(Lcom/miui/home/recents/GestureStubView;I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 251
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v0}, Lcom/miui/home/recents/GestureStubView;->access$400(Lcom/miui/home/recents/GestureStubView;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSwipeStop, isSwipeRightInDirection="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v3}, Lcom/miui/home/recents/GestureStubView;->access$1300(Lcom/miui/home/recents/GestureStubView;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v0}, Lcom/miui/home/recents/GestureStubView;->access$1300(Lcom/miui/home/recents/GestureStubView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 253
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v0}, Lcom/miui/home/recents/GestureStubView;->access$100(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureBackArrowView;

    move-result-object v0

    sget-object v2, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_BACK:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/GestureBackArrowView;->setReadyFinish(Lcom/miui/home/recents/GestureBackArrowView$ReadyState;)V

    goto :goto_2

    .line 255
    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v0}, Lcom/miui/home/recents/GestureStubView;->access$100(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureBackArrowView;

    move-result-object v0

    sget-object v2, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_NONE:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/GestureBackArrowView;->setReadyFinish(Lcom/miui/home/recents/GestureBackArrowView$ReadyState;)V

    .line 259
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v0}, Lcom/miui/home/recents/GestureStubView;->access$400(Lcom/miui/home/recents/GestureStubView;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSwipeStop, isFinish="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", doFeedBack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", readyState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    .line 261
    invoke-static {v3}, Lcom/miui/home/recents/GestureStubView;->access$100(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureBackArrowView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/GestureBackArrowView;->getCurrentState()Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 259
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_9

    .line 265
    sget-object p1, Lcom/miui/home/recents/GestureStubView$5;->$SwitchMap$com$miui$home$recents$GestureBackArrowView$ReadyState:[I

    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v0}, Lcom/miui/home/recents/GestureStubView;->access$100(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureBackArrowView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureBackArrowView;->getCurrentState()Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    if-eq p1, v1, :cond_6

    const/4 p3, 0x2

    if-eq p1, p3, :cond_4

    .line 293
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/GestureStubView;->onBackCancelled()V

    goto/16 :goto_3

    .line 286
    :cond_4
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$1800(Lcom/miui/home/recents/GestureStubView;)Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->supportNextTask(Landroid/content/ContentResolver;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    .line 287
    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$1900(Lcom/miui/home/recents/GestureStubView;)Landroid/content/Context;

    move-result-object p1

    iget-object p3, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p3}, Lcom/miui/home/recents/GestureStubView;->access$1000(Lcom/miui/home/recents/GestureStubView;)I

    move-result p3

    invoke-static {p1, v1, p3}, Lcom/miui/home/recents/GestureStubView;->getNextTask(Landroid/content/Context;ZI)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    if-nez p1, :cond_a

    .line 288
    :cond_5
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$2000(Lcom/miui/home/recents/GestureStubView;)Landroid/os/Vibrator;

    move-result-object p1

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_3

    .line 267
    :cond_6
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$1400(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/BaseRecentsImpl$IBackStubCallBack;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/home/recents/BaseRecentsImpl$IBackStubCallBack;->canUseBackGesture()Z

    move-result p1

    .line 268
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    .line 269
    invoke-static {v0}, Lcom/miui/home/recents/GestureStubView;->access$1400(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/BaseRecentsImpl$IBackStubCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/home/recents/BaseRecentsImpl$IBackStubCallBack;->isCurrentAnimLessThanTargetRectApparent()Z

    move-result v0

    .line 270
    iget-object v1, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v1}, Lcom/miui/home/recents/GestureStubView;->access$400(Lcom/miui/home/recents/GestureStubView;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSwipeStop, canUseBackGesture="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isAnimLessThanTargetRect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mAppResume="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    .line 272
    invoke-static {v3}, Lcom/miui/home/recents/GestureStubView;->access$1500(Lcom/miui/home/recents/GestureStubView;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 270
    invoke-static {v1, v2}, Lcom/miui/home/recents/util/LogPersistenceHelper;->asyncFileLoggerLevelDebug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_8

    if-nez v0, :cond_7

    .line 274
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    .line 275
    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$1500(Lcom/miui/home/recents/GestureStubView;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 276
    :cond_7
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/GestureStubView;->onBackCancelled()V

    .line 277
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$1400(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/BaseRecentsImpl$IBackStubCallBack;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/home/recents/BaseRecentsImpl$IBackStubCallBack;->callBackGesture()Z

    if-eqz p3, :cond_a

    .line 279
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$1600(Lcom/miui/home/recents/GestureStubView;)V

    goto :goto_3

    .line 282
    :cond_8
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    const/4 v0, 0x4

    invoke-static {p1, v0, p3}, Lcom/miui/home/recents/GestureStubView;->access$1700(Lcom/miui/home/recents/GestureStubView;IZ)V

    goto :goto_3

    .line 296
    :cond_9
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/GestureStubView;->onBackCancelled()V

    .line 298
    :cond_a
    :goto_3
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$200(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureStubView$H;

    move-result-object p1

    const/16 p3, 0x105

    invoke-virtual {p1, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 299
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$100(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureBackArrowView;

    move-result-object p1

    sget-object p3, Lcom/android/systemui/fsgesture/BackGestureUtils;->INSTANCE:Lcom/android/systemui/fsgesture/BackGestureUtils;

    invoke-virtual {p3, p2}, Lcom/android/systemui/fsgesture/BackGestureUtils;->convertOffset(F)F

    move-result p2

    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    .line 300
    invoke-static {p0}, Lcom/miui/home/recents/GestureStubView;->access$2100(Lcom/miui/home/recents/GestureStubView;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p0

    .line 299
    invoke-virtual {p1, p2, p0}, Lcom/miui/home/recents/GestureBackArrowView;->onSwipeStop(FLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public onSwipeStopDirect()V
    .locals 2

    .line 305
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v0}, Lcom/miui/home/recents/GestureStubView;->access$400(Lcom/miui/home/recents/GestureStubView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSwipeStopDirect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/home/recents/GestureStubView;->access$302(Lcom/miui/home/recents/GestureStubView;Z)Z

    .line 307
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/miui/home/recents/GestureStubView;->access$2200(Lcom/miui/home/recents/GestureStubView;I)V

    return-void
.end method

.method public onSwipeTriggerFailed()V
    .locals 0

    .line 317
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/GestureStubView;->onBackCancelled()V

    return-void
.end method
