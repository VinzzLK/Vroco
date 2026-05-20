.class Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FsGestureDemoSwipeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->createFinalAnimSet(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;I)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    iput p2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;->val$status:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 142
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 144
    iget p1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;->val$status:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 161
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLeft()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    .line 162
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->access$000(Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, p1

    .line 163
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 164
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    invoke-static {p1}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->access$100(Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;)I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    .line 165
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto :goto_0

    .line 156
    :pswitch_1
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    invoke-static {p1}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->access$100(Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;)I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    .line 157
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto :goto_0

    .line 151
    :pswitch_2
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    invoke-static {p1}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->access$000(Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;)I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    .line 152
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_0

    .line 147
    :pswitch_3
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    neg-int p1, p1

    div-int/lit8 p1, p1, 0x2

    .line 148
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 170
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    invoke-static {p1}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->access$200(Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 171
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    iget-object p1, p1, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->finalAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x5dc

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 172
    iget-object p0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    iget-object p0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->finalAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
