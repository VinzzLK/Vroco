.class Lcom/android/systemui/fsgesture/NavStubDemoView$1;
.super Ljava/lang/Object;
.source "NavStubDemoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fsgesture/NavStubDemoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;


# direct methods
.method constructor <init>(Lcom/android/systemui/fsgesture/NavStubDemoView;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 201
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->access$100(Lcom/android/systemui/fsgesture/NavStubDemoView;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v2}, Lcom/android/systemui/fsgesture/NavStubDemoView;->access$000(Lcom/android/systemui/fsgesture/NavStubDemoView;)F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/systemui/fsgesture/NavStubDemoView;->access$016(Lcom/android/systemui/fsgesture/NavStubDemoView;F)F

    .line 202
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->access$300(Lcom/android/systemui/fsgesture/NavStubDemoView;)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v3}, Lcom/android/systemui/fsgesture/NavStubDemoView;->access$200(Lcom/android/systemui/fsgesture/NavStubDemoView;)F

    move-result v3

    sub-float/2addr v1, v3

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/systemui/fsgesture/NavStubDemoView;->access$216(Lcom/android/systemui/fsgesture/NavStubDemoView;F)F

    .line 204
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->access$100(Lcom/android/systemui/fsgesture/NavStubDemoView;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v1}, Lcom/android/systemui/fsgesture/NavStubDemoView;->access$000(Lcom/android/systemui/fsgesture/NavStubDemoView;)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 205
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v1}, Lcom/android/systemui/fsgesture/NavStubDemoView;->access$300(Lcom/android/systemui/fsgesture/NavStubDemoView;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v2}, Lcom/android/systemui/fsgesture/NavStubDemoView;->access$200(Lcom/android/systemui/fsgesture/NavStubDemoView;)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 206
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 208
    iget-object v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v2}, Lcom/android/systemui/fsgesture/NavStubDemoView;->access$400(Lcom/android/systemui/fsgesture/NavStubDemoView;)I

    move-result v2

    const v3, 0x10003

    const v4, 0x10002

    if-ne v2, v4, :cond_2

    .line 209
    iget-object v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v2}, Lcom/android/systemui/fsgesture/NavStubDemoView;->access$500(Lcom/android/systemui/fsgesture/NavStubDemoView;)F

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v4}, Lcom/android/systemui/fsgesture/NavStubDemoView;->access$600(Lcom/android/systemui/fsgesture/NavStubDemoView;)I

    move-result v4

    add-int/lit16 v4, v4, -0x140

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_5

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    cmpg-double v0, v0, v4

    if-gez v0, :cond_5

    .line 210
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v0, v3}, Lcom/android/systemui/fsgesture/NavStubDemoView;->access$402(Lcom/android/systemui/fsgesture/NavStubDemoView;I)I

    .line 211
    sget-object v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->TAG:Ljava/lang/String;

    const-string v1, "current state mode: StateMode.STATE_TASK_HOLD"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 216
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->access$700(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->access$800(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->access$800(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->access$800(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->access$800(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 222
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->access$400(Lcom/android/systemui/fsgesture/NavStubDemoView;)I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 223
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->access$500(Lcom/android/systemui/fsgesture/NavStubDemoView;)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v1}, Lcom/android/systemui/fsgesture/NavStubDemoView;->access$600(Lcom/android/systemui/fsgesture/NavStubDemoView;)I

    move-result v1

    add-int/lit16 v1, v1, -0xf0

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 224
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v0, v4}, Lcom/android/systemui/fsgesture/NavStubDemoView;->access$402(Lcom/android/systemui/fsgesture/NavStubDemoView;I)I

    .line 226
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->access$800(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->access$800(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 227
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->access$800(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 229
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->access$800(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    .line 233
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->access$900(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x10

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
