.class Lcom/miui/home/launcher/Background$1;
.super Lcom/miui/home/launcher/common/messages/LoadingFinishMessageHandler;
.source "Background.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Background;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Background;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Background;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/miui/home/launcher/Background$1;->this$0:Lcom/miui/home/launcher/Background;

    invoke-direct {p0}, Lcom/miui/home/launcher/common/messages/LoadingFinishMessageHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected onLoadingFinished()V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/miui/home/launcher/Background$1;->this$0:Lcom/miui/home/launcher/Background;

    invoke-static {v0}, Lcom/miui/home/launcher/Background;->access$000(Lcom/miui/home/launcher/Background;)Lcom/miui/home/launcher/animate/SpreadCircle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 88
    iget-object v0, p0, Lcom/miui/home/launcher/Background$1;->this$0:Lcom/miui/home/launcher/Background;

    invoke-static {v0}, Lcom/miui/home/launcher/Background;->access$000(Lcom/miui/home/launcher/Background;)Lcom/miui/home/launcher/animate/SpreadCircle;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Background$1;->this$0:Lcom/miui/home/launcher/Background;

    .line 89
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0706d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 88
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/animate/SpreadCircle;->setMinRadius(F)V

    .line 90
    iget-object v0, p0, Lcom/miui/home/launcher/Background$1;->this$0:Lcom/miui/home/launcher/Background;

    invoke-static {v0}, Lcom/miui/home/launcher/Background;->access$000(Lcom/miui/home/launcher/Background;)Lcom/miui/home/launcher/animate/SpreadCircle;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Background$1;->this$0:Lcom/miui/home/launcher/Background;

    .line 91
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0706d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 90
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/animate/SpreadCircle;->setMaxRadius(F)V

    .line 92
    iget-object v0, p0, Lcom/miui/home/launcher/Background$1;->this$0:Lcom/miui/home/launcher/Background;

    invoke-static {v0}, Lcom/miui/home/launcher/Background;->access$000(Lcom/miui/home/launcher/Background;)Lcom/miui/home/launcher/animate/SpreadCircle;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/animate/SpreadCircle;->setDuraton(J)V

    .line 93
    iget-object v0, p0, Lcom/miui/home/launcher/Background$1;->this$0:Lcom/miui/home/launcher/Background;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060693

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Background;->access$102(Lcom/miui/home/launcher/Background;I)I

    .line 94
    iget-object v0, p0, Lcom/miui/home/launcher/Background$1;->this$0:Lcom/miui/home/launcher/Background;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060692

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Background;->access$202(Lcom/miui/home/launcher/Background;I)I

    .line 96
    iget-object v0, p0, Lcom/miui/home/launcher/Background$1;->this$0:Lcom/miui/home/launcher/Background;

    invoke-static {v0}, Lcom/miui/home/launcher/Background;->access$300(Lcom/miui/home/launcher/Background;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 97
    iget-object v0, p0, Lcom/miui/home/launcher/Background$1;->this$0:Lcom/miui/home/launcher/Background;

    invoke-static {v0}, Lcom/miui/home/launcher/Background;->access$400(Lcom/miui/home/launcher/Background;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 98
    iget-object v0, p0, Lcom/miui/home/launcher/Background$1;->this$0:Lcom/miui/home/launcher/Background;

    invoke-static {v0}, Lcom/miui/home/launcher/Background;->access$300(Lcom/miui/home/launcher/Background;)Landroid/animation/ValueAnimator;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/common/Ease$Sine;->easeOut:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 99
    iget-object v0, p0, Lcom/miui/home/launcher/Background$1;->this$0:Lcom/miui/home/launcher/Background;

    invoke-static {v0}, Lcom/miui/home/launcher/Background;->access$400(Lcom/miui/home/launcher/Background;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 100
    iget-object v0, p0, Lcom/miui/home/launcher/Background$1;->this$0:Lcom/miui/home/launcher/Background;

    invoke-static {v0}, Lcom/miui/home/launcher/Background;->access$300(Lcom/miui/home/launcher/Background;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 101
    iget-object v0, p0, Lcom/miui/home/launcher/Background$1;->this$0:Lcom/miui/home/launcher/Background;

    invoke-static {v0}, Lcom/miui/home/launcher/Background;->access$400(Lcom/miui/home/launcher/Background;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 103
    iget-object v0, p0, Lcom/miui/home/launcher/Background$1;->this$0:Lcom/miui/home/launcher/Background;

    invoke-static {v0}, Lcom/miui/home/launcher/Background;->access$300(Lcom/miui/home/launcher/Background;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/Background$1$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Background$1$1;-><init>(Lcom/miui/home/launcher/Background$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 110
    iget-object v0, p0, Lcom/miui/home/launcher/Background$1;->this$0:Lcom/miui/home/launcher/Background;

    invoke-static {v0}, Lcom/miui/home/launcher/Background;->access$300(Lcom/miui/home/launcher/Background;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/Background$1$2;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Background$1$2;-><init>(Lcom/miui/home/launcher/Background$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 117
    iget-object v0, p0, Lcom/miui/home/launcher/Background$1;->this$0:Lcom/miui/home/launcher/Background;

    invoke-static {v0}, Lcom/miui/home/launcher/Background;->access$400(Lcom/miui/home/launcher/Background;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/Background$1$3;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Background$1$3;-><init>(Lcom/miui/home/launcher/Background$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 124
    iget-object p0, p0, Lcom/miui/home/launcher/Background$1;->this$0:Lcom/miui/home/launcher/Background;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
