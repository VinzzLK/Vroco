.class Lcom/miui/home/launcher/pageindicators/AllAppsIndicator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AllAppsIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->showAllAppsArrow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator$1;->this$0:Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 127
    iget-object p1, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator$1;->this$0:Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->access$002(Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 128
    iget-object p1, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator$1;->this$0:Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    invoke-static {p1}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->access$100(Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 129
    iget-object p1, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator$1;->this$0:Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    invoke-static {p1}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->access$100(Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getAlpha()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator$1;->this$0:Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    invoke-static {p1}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->access$100(Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 130
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator$1;->this$0:Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    invoke-static {v0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->access$100(Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 131
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator$1;->this$0:Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    invoke-static {v0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->access$100(Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 132
    iget-object p0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator$1;->this$0:Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_1
    return-void
.end method
