.class Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RecommendShortcutsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->hideLoadingViewWithAnim(Lcom/miui/home/launcher/BaseProgressShortcutIcon;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;

.field final synthetic val$baseProgressShortcutIcon:Lcom/miui/home/launcher/BaseProgressShortcutIcon;

.field final synthetic val$loadingView:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;Lcom/miui/home/launcher/BaseProgressShortcutIcon;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter$1;->this$0:Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;

    iput-object p2, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter$1;->val$baseProgressShortcutIcon:Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    iput-object p3, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter$1;->val$loadingView:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 117
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter$1;->val$baseProgressShortcutIcon:Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    invoke-virtual {p1}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->stopLoading()V

    .line 118
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter$1;->val$loadingView:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 119
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter$1;->val$loadingView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
