.class Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;
.super Ljava/lang/Object;
.source "FsGestureBackDemoActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 64
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    .line 65
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 66
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_8

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_5

    goto/16 :goto_3

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {p1}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->access$000(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)I

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_3

    .line 90
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {p1}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->access$300(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)I

    move-result v4

    if-ne v4, v3, :cond_2

    iget-object v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v4}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->access$100(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)F

    move-result v4

    sub-float/2addr v0, v4

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v4}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->access$100(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)F

    move-result v4

    sub-float v0, v4, v0

    :goto_0
    invoke-static {p1, v0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->access$802(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;F)F

    move-result p1

    .line 91
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->access$200(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)F

    move-result v0

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    const/high16 v0, 0x41a00000    # 20.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_d

    .line 93
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->access$000(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 94
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v0, v2}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->access$002(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;I)I

    .line 96
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->access$600(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Lcom/android/systemui/fsgesture/GestureBackArrowView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->onActionMove(F)V

    .line 97
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    long-to-int p2, v0

    int-to-float p2, p2

    div-float p2, p1, p2

    float-to-int p2, p2

    .line 99
    iget-object p0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {p0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->access$600(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Lcom/android/systemui/fsgesture/GestureBackArrowView;

    move-result-object p0

    invoke-static {p1, p2}, Lcom/android/systemui/fsgesture/GesturesBackController;->isFinished(FI)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 100
    sget-object p1, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_BACK:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_NONE:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    .line 99
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->setReadyFinish(Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;)V

    goto/16 :goto_3

    .line 105
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {p1}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->access$000(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)I

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_3

    .line 108
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {p1}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->access$300(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)I

    move-result p1

    if-ne p1, v3, :cond_7

    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {p1}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->access$100(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)F

    move-result p1

    sub-float/2addr v0, p1

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {p1}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->access$100(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)F

    move-result p1

    sub-float v0, p1, v0

    .line 109
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {p1}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->access$600(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Lcom/android/systemui/fsgesture/GestureBackArrowView;

    move-result-object p1

    sget-object v1, Lcom/android/systemui/fsgesture/BackGestureUtils;->INSTANCE:Lcom/android/systemui/fsgesture/BackGestureUtils;

    invoke-virtual {v1, v0}, Lcom/android/systemui/fsgesture/BackGestureUtils;->convertOffset(F)F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->onActionUp(FLandroid/animation/Animator$AnimatorListener;)V

    .line 110
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide p1

    sub-long/2addr v0, p1

    long-to-int p1, v0

    .line 111
    iget-object p2, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {p2}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->access$800(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)F

    move-result p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    float-to-int p1, p2

    .line 112
    iget-object p0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {p0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->access$800(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)F

    move-result p2

    invoke-static {p2, p1}, Lcom/android/systemui/fsgesture/GesturesBackController;->isFinished(FI)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->access$900(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;Z)V

    goto :goto_3

    .line 69
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {p1}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->access$000(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)I

    move-result p1

    const/4 p2, 0x0

    if-ne p1, v2, :cond_9

    return p2

    .line 72
    :cond_9
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {p1, v0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->access$102(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;F)F

    .line 73
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {p1, v1}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->access$202(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;F)F

    .line 74
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {p1}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->access$300(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)I

    move-result p1

    if-ne p1, v3, :cond_a

    const/high16 p1, 0x428c0000    # 70.0f

    cmpg-float p1, v0, p1

    if-ltz p1, :cond_b

    :cond_a
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    .line 75
    invoke-static {p1}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->access$300(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)I

    move-result p1

    if-ne p1, v2, :cond_c

    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    .line 76
    invoke-static {p1}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->access$400(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)I

    move-result p1

    add-int/lit8 p1, p1, -0x46

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_c

    :cond_b
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    .line 77
    invoke-static {p1}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->access$500(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, v1, p1

    if-lez p1, :cond_c

    .line 78
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {p1, v3}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->access$002(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;I)I

    .line 79
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {p1}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->access$600(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Lcom/android/systemui/fsgesture/GestureBackArrowView;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {p2}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->access$200(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)F

    move-result p2

    const/4 v0, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->onActionDown(FFF)V

    .line 80
    iget-object p0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {p0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->access$700(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->cancelAnimation()V

    goto :goto_3

    .line 82
    :cond_c
    iget-object p0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {p0, p2}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->access$002(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;I)I

    :cond_d
    :goto_3
    return v3
.end method
