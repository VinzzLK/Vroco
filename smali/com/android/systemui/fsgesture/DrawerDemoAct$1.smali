.class Lcom/android/systemui/fsgesture/DrawerDemoAct$1;
.super Ljava/lang/Object;
.source "DrawerDemoAct.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fsgesture/DrawerDemoAct;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;


# direct methods
.method constructor <init>(Lcom/android/systemui/fsgesture/DrawerDemoAct;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 52
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    .line 53
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v0, :cond_2

    if-eq p1, v2, :cond_0

    if-eq p1, v1, :cond_2

    goto/16 :goto_1

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    invoke-static {p1}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->access$200(Lcom/android/systemui/fsgesture/DrawerDemoAct;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    invoke-static {v1}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->access$200(Lcom/android/systemui/fsgesture/DrawerDemoAct;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_1

    .line 64
    iget-object p0, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    invoke-static {p0}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->access$300(Lcom/android/systemui/fsgesture/DrawerDemoAct;)I

    move-result p0

    int-to-float p0, p0

    goto :goto_0

    .line 65
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    invoke-static {p0}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->access$200(Lcom/android/systemui/fsgesture/DrawerDemoAct;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result p0

    int-to-float p0, p0

    sub-float p0, p2, p0

    .line 63
    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setTranslationX(F)V

    goto/16 :goto_1

    .line 69
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    invoke-static {p1}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->access$100(Lcom/android/systemui/fsgesture/DrawerDemoAct;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 70
    iget-object v3, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/miui/home/gesturedemo/R$dimen;->fsgesture_shelter_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 71
    iget-object v3, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    invoke-static {v3}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->access$100(Lcom/android/systemui/fsgesture/DrawerDemoAct;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    iget-object p1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    invoke-static {p1}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->access$200(Lcom/android/systemui/fsgesture/DrawerDemoAct;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result p1

    div-int/2addr p1, v2

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    const-wide/16 v2, 0xc8

    if-ltz p1, :cond_3

    .line 74
    iget-object p1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    invoke-static {p1}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->access$200(Lcom/android/systemui/fsgesture/DrawerDemoAct;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    invoke-static {p2}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->access$300(Lcom/android/systemui/fsgesture/DrawerDemoAct;)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 76
    iget-object p1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    invoke-static {p1}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->access$400(Lcom/android/systemui/fsgesture/DrawerDemoAct;)Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->notifyFinish()V

    .line 77
    iget-object p1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    iget-object p1, p1, Lcom/android/systemui/fsgesture/DrawerDemoAct;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/fsgesture/DrawerDemoAct$1$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/fsgesture/DrawerDemoAct$1$1;-><init>(Lcom/android/systemui/fsgesture/DrawerDemoAct$1;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 84
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    invoke-static {p1, v1}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->access$500(Lcom/android/systemui/fsgesture/DrawerDemoAct;I)V

    .line 85
    iget-object p1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    invoke-static {p1}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->access$200(Lcom/android/systemui/fsgesture/DrawerDemoAct;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    invoke-static {p0}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->access$600(Lcom/android/systemui/fsgesture/DrawerDemoAct;)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 56
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    invoke-static {p1}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->access$000(Lcom/android/systemui/fsgesture/DrawerDemoAct;)Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->cancelAnimation()V

    .line 58
    iget-object p1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    invoke-static {p1}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->access$100(Lcom/android/systemui/fsgesture/DrawerDemoAct;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 p2, -0x1

    .line 59
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 60
    iget-object p0, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    invoke-static {p0}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->access$100(Lcom/android/systemui/fsgesture/DrawerDemoAct;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return v0
.end method
